# Web Dashboard for Wage Analysis using Shiny and R  

### Hi there 👋, I'm **Sanuz Thapa**  
### 🎓 Behavioral Economics Student at UFC, Besançon  

---

## 🔍 Project Overview  

This project focuses on analyzing wages in various categories through a **web-based dashboard** built with **Shiny** and **R**. The application provides an interactive interface for data analysis, eliminating the need for programming expertise to perform complex statistical tasks.

---

## 🚀 Features  

- **Upload Section**: Allows users to upload `.csv` files for analysis.  
- **Data Filtering**: Dynamically filter wages using sliders.  
- **Dynamic Variable Selection**: Include or exclude variables from models by ticking checkboxes, with results updating in real-time.  
- **Regression Analysis**: Build and compare multiple regression models directly on the web.  
- **Residuals Histogram**: Visualize model residuals for diagnostic checks.  
- **Correlation Plot**: Interactive visualization of variable correlations.  
- **Download Processed Data**: Export cleaned and processed data as a `.csv` file.

---

## 📂 Table of Contents  

1. [Dashboard Overview](#dashboard-overview)  
2. [Upload Section](#upload-section)  
3. [Data Summary](#data-summary)  
4. [Dynamic Boxplot](#dynamic-boxplot)  
5. [Dynamic Regression Model](#dynamic-regression-model)  
6. [Model Comparison](#model-comparison)  
7. [Residuals Histogram](#residuals-histogram)  
8. [Correlation Plot](#correlation-plot)  
9. [Conclusion](#conclusion)  

---

## Dashboard Overview  

![Dashboard Overview](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/Dashboard.png)

---

## Upload Section  

Upload `.csv` files from external storage for analysis.  

![Upload Section](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/upload.png)

---

## Data Summary  

Displays key statistics such as quartiles, median, mean, and more in a visually appealing format.  

![Data Summary](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/img3.png)

---

## Dynamic Boxplot  

Boxplots are dynamically updated when the wage filter slider is adjusted, offering instant insights into data distributions.  

<div style="display: flex; justify-content: center; gap: 10px;">

<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i3boxplot.png" alt="Dynamic Boxplot 1" width="45%">
<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i4boxplot.png" alt="Dynamic Boxplot 2" width="45%">

</div>

---

## Dynamic Regression Model  

Add or remove variables for regression analysis dynamically. The results update in real-time, making it easier to experiment with different models.  

<div style="display: flex; justify-content: center; gap: 10px;">

<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i5regressionallcheck.png" alt="Regression Model with All Variables" width="45%">
<img src="https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i5regressionHalfcheck.png" alt="Regression Model with Partial Variables" width="45%">

</div>

---

## Model Comparison  

Two models are built and compared dynamically:  

1. **Model 1**: `lm(Wage ~ Female + Age, data = eec)`  
2. **Model 2**: `lm(Wage ~ Female + Age + Study_nodiploma + Study_brevet + Study_capbep + Study_bac + Study_superieur, data = eec)`  

![Model Comparison](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i6modelComparison.png)

---

## Residuals Histogram  

Histogram of residuals helps identify whether they follow a normal distribution.  

![Residuals Histogram](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i6residual.png)

---

## Correlation Plot  

Visualize the correlation between various variables dynamically.  

![Correlation Plot](https://github.com/sanuzthapa/Web-Dashboard-using-Shiny-in-R/blob/main/images/i7Correlation.png)

---

## Conclusion  

This project demonstrates how to create an interactive, user-friendly web application for data analysis using R and Shiny. It simplifies the process of performing statistical tasks, making it accessible to a broader audience.  

---

## 🔧 Tools and Technologies  

- **Languages**: R  
- **Libraries**: Shiny, Tidyverse, DT, Corrplot  
- **Visualization**: ggplot2  

---

## 💬 Connect with Me  

- 📧 Email: [sanuzh.thapa@gmail.com](mailto:sanuzh.thapa@gmail.com)  
- 🌐 LinkedIn: [Sanuz Thapa](https://linkedin.com/in/sanuz-thapa)  

---  
