<h1 align="center">Hi 👋, I'm THAPA Sanuz</h1>
<h3 align="center">Student of Behavioral Economics at UFC, Besançon</h3>

---

### 🔭 About the Project

This project is designed for the analysis of **Costumer and Review** using ** Tidyvese in R [Experiemntal Project].

#### Methodology used in this project:
- Filtering and validating data  
- Cleaning data  
- Combining and creating relationships between two different datasets  
- Data visualization and manipulation  
- Interactive dashboard design  
- Data maipulation

---
### Easy Navigation :

# Analysis of Age Groups and Review Scores

## Table of Contents
- [Introduction](#introduction)
- [Data Preparation](#data-preparation)
- [Grouping by Age](#grouping-by-age)
- [Calculating Average Review Scores](#calculating-average-review-scores)
- [Visualization](#visualization)
- [Conclusion](#conclusion)

## Introduction
This exercise focuses on analyzing customer reviews using graphical representations to extract meaningful insights. Two datasets are provided on Moodle for this purpose:

#### 1. **`customers.csv`** (Customer Information):
- Contains details about all potential reviewers of the app.
- Variables:
  - **`CustomerID`**: Unique identifier for customers across datasets.
  - **`Gender`**: Declared gender of customers ("male", "female", or "other").
  - **`Age`**: Age of customers in years.
  - **`ResCountry`**: Country of residence of customers.

#### 2. **`reviews.csv`** (Review Information):
- Contains all app reviews posted between **January 1st, 2023, and June 30th, 2023**.
- Key Points:
  - Customers can only post **one review**.
  - Not all customers have posted reviews.
- Variables:
  - **`CustomerID`**: Unique identifier for matching with `customers.csv`.
  - **`Reviewdate`**: Date when the review was posted.
  - **`Review`**: Score (0-100) indicating how much the user recommends the app.
  - **`Favorite`**: Customer's favorite feature of the app (from preselected options).
  - **`Comment`**: General comments left by the customer.

---

## Data Preparation
![Dashboard Overview](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/1intro.png)

## Count vs Country

ggplot(data = country_counts, aes(x = ResCountry, y = count)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "Country", y = "Count", title = "Number of Reviews by Country") +
  theme_minimal()
  
![Count Vs Country](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/bycountry.png)

## Using a histogram, display the distribution of the review score among all respondents

plot = ggplot(data = data, aes(x = Review))

plot + geom_histogram(fill="#C0C0C0", color="black")
![histogram](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/img3.png)

##  Scanning users who wrote the word “interface” in their comment.

filteringInterface = data %>%
  filter(str_detect(Comment,"interface"))

print(filteringInterface)
![Costumer vs Word Count "interface"](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/img4.png)

## Distribitutuion of reviews

data %>%
  filter(str_detect(Comment, "interface")) %>%
  ggplot(aes(x = Review)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Distribution of Reviews",
       x = "Review Score",
       y = "Frequency") +
  theme_minimal()
  ![Frequency of keyword vs Score](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/img5.png)
  
## Relationshiup Between Age and Reviews

ggplot(data = data, aes(x = Age, y = Review)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(x = "Age", y = "Review Score", title = "Relationship between Age and Review Score") +
  theme_minimal()
  ![Age Group vs Score ](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/img6.png)

## Mean review vs Age Group

# Group by age group and calculate the mean review score
data %>%
  mutate(AgeGroup = case_when(
    Age >= 18 & Age <= 24 ~ "18-24",
    Age >= 25 & Age <= 34 ~ "25-34",
    Age >= 35 & Age <= 44 ~ "35-44",
    Age >= 45 & Age <= 54 ~ "45-54",
    Age >= 55 & Age <= 64 ~ "55-64",
    Age >= 65 ~ "65+"
  )) %>%
  group_by(AgeGroup) %>%
  summarise(mean_review = mean(Review)) %>%
  ggplot(aes(x = AgeGroup, y = mean_review)) +
  geom_point(color = "blue") +
  geom_line(group = 1, color = "red") +  # Optional: add a line connecting the points
  labs(title = "Mean Review Score by Age Group",
       x = "Age Group",
       y = "Mean Review Score") +
  theme_minimal()
  
  ![Age Group vs Mean Review](https://github.com/sanuzthapa/PowerBi-Dahsboard/blob/main/img/img7.png)

## Conclusion
Summary of findings and insights from the analysis.


### 💬 Connect with Me:
- 📫 **Email**: [sanuzh.thapa@gmail.com](mailto:sanus.thapa@gmail.com)  
- 🌐 **LinkedIn**: [www.linkedin.com/in/sanuz-thapa](https://linkedin.com/in/sanuz-thapa)  

---

### 🛠️ Languages and Tools:

---
