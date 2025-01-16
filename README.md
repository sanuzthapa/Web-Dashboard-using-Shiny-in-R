```markdown
<h1 align="center">Hi 👋, I'm THAPA Sanuz</h1>
<h3 align="center">Student of Behavioral Economics at UFC, Besançon</h3>

---

### 🔭 About the Project

Data analysis of Wage in different categories with a Dashboard using Shiny and R.

---

#### Methodology used in this project:
- Upload Section for Data (not all datasets may be compatible as it focuses on wage analysis).
- All manipulation and analysis can be done in a web browser instead of RStudio or VSCode.
- Dynamically filter wages with a slider.
- Select/remove variables by ticking checkboxes (results update dynamically).
- Compare between models directly on the web app.
- Residual Histogram.
- Correlation plot displayed dynamically.
- Download the processed data in CSV format.

---

### Easy Navigation:

# Data Analysis in R with Shiny (Web Application)

## Table of Contents
- [Dashboard Overview](#Dashboard-Overview)
- [Upload Section](#Upload-Section)
- [Data Summary](#Data-Summary)
- [Dynamic Boxplot](#Dynamic-Boxplot)
- [Dynamic Regression Model](#Dynamic-Regression-Model)
- [Model Comparison](#Model-Comparison)
- [Residuals Histogram](#Residuals-Histogram)
- [Correlation Plot](#Correlation-Plot)

---

## Dashboard Overview
![Dashboard Overview](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/Dashboard.png)

---

## Upload Section
CSV files can be uploaded from external storage.

![Upload Section](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/upload.png)

---

## Data Summary
Details like Quartiles, Median, Mean, Active Count, and 3rd Quartile are displayed dynamically on the dashboard.

![Data Summary](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/img3.png)

---

## Dynamic Boxplot

Boxplots are dynamically generated when the slider filter is used, making the application interactive and user-friendly.

<div style="display: flex; justify-content: center; gap: 10px;">

<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i3boxplot.png" alt="Dynamic Boxplot 1" width="45%">
<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i4boxplot.png" alt="Dynamic Boxplot 2" width="45%">

</div>

---

## Dynamic Regression Model

All variables are selectable and unselectable. Based on the selected variables, the model and data change dynamically.

<div style="display: flex; justify-content: center; gap: 10px;">

<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i5regressionallcheck.png" alt="Regression Model with All Variables" width="45%">
<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i5regressionHalfcheck.png" alt="Regression Model with Partial Variables" width="45%">

</div>

---

## Model Comparison

Two models are considered for comparison:

```r
model <- lm(Wage ~ Female + Age, data = eec)
model2 <- lm(Wage ~ Female + Age + Study_nodiploma + Study_brevet + Study_capbep + Study_bac + Study_superieur, data = eec)
```

![Model Comparison](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i6modelComparison.png)

---

## Residuals Histogram

Histogram displaying the residuals from the regression models.

![Residuals Histogram](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i6residual.png)

---

## Correlation Plot

Visualize the correlation between variables dynamically.

![Correlation Plot](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/img/i7Correlation.png)

---

## Conclusion

Summary of findings and insights from the analysis.

---

### 💬 Connect with Me:
- 📫 **Email**: [sanuzh.thapa@gmail.com](mailto:sanuzh.thapa@gmail.com)  
- 🌐 **LinkedIn**: [www.linkedin.com/in/sanuz-thapa](https://linkedin.com/in/sanuz-thapa)  

---

### 🛠️ Languages and Tools:
- **Shiny**
- **Tidyverse**
- **DT**
- **Corrplot**
``` 
