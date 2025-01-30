```r
library(shiny)
library(tidyverse)
library(DT)
library(corrplot)

# Define UI for the application
ui <- fluidPage(
  titlePanel("Wage Analysis with Shiny © Sanuz THAPA"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Choose CSV File", accept = ".csv"),
      sliderInput("wage_limit", "Wage Filter (up to €6000):", min = 0, max = 6000, value = 6000),
      actionButton("load_data", "Load and Process Data"),
      selectInput("edu_filter", "Filter by Education Level:", 
                  choices = c("All", "No Diploma", "Brevet", "CAP/BEP", "Baccalauréat", "Higher Education"),
                  selected = "All"),
      checkboxGroupInput("regression_vars", "Select Variables for Regression Model:", 
                         choices = c("Female" = "Female", "Age" = "Age", 
                                     "Study_nodiploma" = "Study_nodiploma", 
                                     "Study_brevet" = "Study_brevet", 
                                     "Study_capbep" = "Study_capbep", 
                                     "Study_bac" = "Study_bac", 
                                     "Study_superieur" = "Study_superieur"),
                         selected = c("Female", "Age")),
      downloadButton("download_data", "Download Processed Data")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Data Summary", tableOutput("data_summary")),
        tabPanel("Boxplot", plotOutput("boxplot")),
        tabPanel("Regression Results", verbatimTextOutput("regression_summary")),
        tabPanel("Model Comparison", plotOutput("model_comparison")),
        tabPanel("Residuals Histogram", plotOutput("residual_histogram")),
        tabPanel("Correlation Plot", plotOutput("correlation_plot"))
      )
    )
  )
)

# Define server logic for the application
server <- function(input, output, session) {
  processed_data <- reactive({
    req(input$file1)
    eec <- read.csv2(input$file1$datapath, header = TRUE, sep = ";") %>%
      rename(Active = ACTEU, Age = AGE, Diploma = DDIPL, Wage = SALMEE, Gender = SEXE, Worktime = TPP) %>%
      filter(Active == 1, Wage > 300, Wage < 15000, Worktime != 3) %>%
      select(-NOI, -IDENT) %>%
      na.omit() %>%
      mutate(Female = as.numeric(Gender == 2), 
             Study_nodiploma = as.numeric(Diploma == 7), 
             Study_brevet = as.numeric(Diploma == 6),
             Study_capbep = as.numeric(Diploma == 5), 
             Study_bac = as.numeric(Diploma == 4),
             Study_superieur = as.numeric(Diploma < 4))
    return(eec)
  })

  output$data_summary <- renderTable({ summary(processed_data()) })
  
  output$boxplot <- renderPlot({
    eec_filtered <- processed_data() %>% filter(Wage <= input$wage_limit)
    ggplot(eec_filtered, aes(x = factor(Female), y = Wage, fill = factor(Female))) +
      geom_boxplot() +
      scale_x_discrete(labels = c("Men", "Women")) +
      labs(title = paste("Distribution of Monthly Wages Below €", input$wage_limit, " by Gender"),
           x = "Gender", y = "Monthly Wage (€)") +
      theme_minimal() +
      scale_fill_manual(values = c("lightblue", "pink"))
  })

  output$regression_summary <- renderPrint({
    formula <- as.formula(paste("Wage ~", paste(input$regression_vars, collapse = " + ")))
    summary(lm(formula, data = processed_data()))
  })

  output$model_comparison <- renderPlot({
    eec <- processed_data()
    model1 <- lm(Wage ~ Female + Age, data = eec)
    model2 <- lm(Wage ~ Female + Age + Study_nodiploma + Study_brevet + Study_capbep + Study_bac + Study_superieur, data = eec)
    eec$pred_model1 <- predict(model1, newdata = eec)
    eec$pred_model2 <- predict(model2, newdata = eec)
    ggplot(eec) +
      geom_point(aes(x = Age, y = Wage, color = "Actual Wage"), alpha = 0.5) +
      geom_line(aes(x = Age, y = pred_model1, color = "Model 1"), size = 1) +
      geom_line(aes(x = Age, y = pred_model2, color = "Model 2"), size = 1) +
      labs(title = "Comparison of Actual and Predicted Wages", x = "Age", y = "Monthly Wage (€)", color = "Legend") +
      scale_color_manual(values = c("blue", "red", "green")) +
      theme_minimal()
  })

  output$residual_histogram <- renderPlot({
    model2 <- lm(Wage ~ Female + Age + Study_nodiploma + Study_brevet + Study_capbep + Study_bac + Study_superieur, data = processed_data())
    residuals <- residuals(model2)
    ggplot(data.frame(residuals), aes(x = residuals)) +
      geom_histogram(bins = 30, fill = "lightblue", color = "black", alpha = 0.7) +
      labs(title = "Histogram of Residuals", x = "Residuals", y = "Frequency") +
      theme_minimal()
  })

  output$correlation_plot <- renderPlot({
    numeric_data <- processed_data() %>% select(Wage, Age, Female, Study_nodiploma, Study_brevet, Study_capbep, Study_bac, Study_superieur)
    corrplot(cor(numeric_data), method = "circle", type = "upper", tl.cex = 0.8)
  })

  output$download_data <- downloadHandler(
    filename = "processed_data.csv",
    content = function(file) { write.csv(processed_data(), file, row.names = FALSE) }
  )
}

shinyApp(ui = ui, server = server)
```
