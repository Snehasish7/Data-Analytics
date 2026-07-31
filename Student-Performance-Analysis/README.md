# 📊 Student Performance Analysis using R

A beginner-friendly Data Analysis project developed using **R Programming**, **RStudio**, and **Microsoft Excel**. This project demonstrates how to import data from an external Excel file, perform statistical analysis, explore relationships within the data, and visualize insights using various charts.

---

## 📌 Project Objective

The objective of this project is to analyze student performance based on their academic marks, study hours, attendance, and department using R Programming. The project demonstrates the complete beginner-level data analysis workflow from data import to visualization.

---

## 🛠️ Tools & Technologies

- R Programming
- RStudio
- Microsoft Excel
- readxl Package

---

## 📂 Dataset

The dataset contains information for **50 students** with the following attributes:

| Column | Description |
|---------|-------------|
| Name | Student Name |
| Marks | Marks obtained |
| Study_Hours | Daily study hours |
| Attendance | Attendance percentage |
| Department | Student's department |

---

## 📈 Analysis Performed

The following analyses were performed:

- Imported data from an Excel file
- Explored the dataset using `print()`, `str()`, `head()`, and `summary()`
- Calculated:
  - Mean
  - Median
  - Maximum
  - Minimum
  - Standard Deviation
- Performed Correlation Analysis
- Created Frequency Tables
- Filtered records based on marks and study hours
- Sorted the dataset using different criteria
- Calculated total rows and columns

---

## 📊 Data Visualizations

The project includes multiple visualizations to better understand the dataset:

- 📊 Student Marks Bar Chart
- 📈 Study Hours vs Marks Scatter Plot
- 📉 Histogram of Marks
- 🥧 Department-wise Pie Chart
- 📦 Box Plot of Marks
- 📈 Marks Trend Line Graph
- 📊 Attendance Bar Chart
- 📉 Attendance Histogram
- 📊 Department-wise Student Count

---

## 🔍 Key Insights

- Students with higher study hours generally achieved better marks.
- Departments contain varying numbers of students.
- Attendance shows a positive relationship with academic performance.
- Data visualization helps identify trends and outliers more effectively than raw data.

---

## 📁 Project Structure

```
Student-Performance-Analysis/
│
├── student_analysis.R
├── studentDatabase.csv.xlsx
└── README.md
```

---

## ▶️ How to Run

1. Install **R** and **RStudio**.
2. Install the required package:

```r
install.packages("readxl")
```

3. Load the package:

```r
library(readxl)
```

4. Update the Excel file path in the script.

5. Run `student_analysis.R`.

---

## 📚 Skills Demonstrated

- Data Import
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Descriptive Statistics
- Correlation Analysis
- Data Filtering
- Data Sorting
- Data Visualization
- R Programming

---

## 🚀 Future Improvements

- Build interactive dashboards using **Shiny**
- Use **ggplot2** for advanced visualizations
- Apply predictive models for student performance
- Analyze larger real-world educational datasets

---

## 👨‍💻 Author

**Snehasish Nag**

If you found this project useful, feel free to ⭐ the repository!
