# Walmart Data Analysis: End-to-End SQL + Python + AI Project

## Project Overview
This project is an end-to-end data analysis solution designed to extract 
critical business insights from Walmart sales data. We utilize Python for 
data processing, SQL for advanced querying, and AI/ML techniques for 
forecasting and intelligent data analysis. The project is ideal for data 
analysts looking to develop skills in data manipulation, SQL querying, 
machine learning, and data pipeline creation.

---

## Project Steps

### 1. Set Up the Environment
- **Tools Used**: Jupyter Notebook, Python, SQL (PostgreSQL)
- **Goal**: Create a structured workspace and organize project folders.

### 2. Download Walmart Sales Data
- **Data Source**: Kaggle Walmart Sales Dataset
- **Dataset Link**: [Walmart Sales Dataset](https://www.kaggle.com/najir0123/walmart-10k-sales-datasets)
- **Storage**: Save the data in the project folder for easy access.

### 3. Install Required Libraries
```python
pip install pandas numpy sqlalchemy psycopg2 scikit-learn matplotlib
```

### 4. Explore the Data
- Use `.info()`, `.describe()`, and `.head()` to understand data structure.
- Columns: invoice_id, branch, city, category, unit_price, quantity, 
  date, time, payment_method, rating, profit_margin

### 5. Data Cleaning
- Remove duplicate entries
- Handle missing values
- Fix data types
- Remove currency symbols from unit_price
- Validate cleaned data

### 6. Feature Engineering
- Calculate total sales: `total = unit_price × quantity`
- Extract hour from time column for peak hour analysis

### 7. Load Data into PostgreSQL
- Connect using SQLAlchemy
- Load cleaned data into PostgreSQL database
- Verify data with SQL queries

### 8. SQL Analysis
- Revenue trends across branches and categories
- Best-selling product categories
- Sales performance by time, city, and payment method
- Peak sales periods and customer buying patterns
- Profit margin analysis by branch and category

### 9. AI Feature 1 — Text Analysis & Data Insights ⭐ NEW
Built an intelligent text-based analysis system using Pandas and NumPy 
to automatically extract meaningful insights from 10,000+ Walmart sales 
records. The system analyzes:
- Sales breakdown by branch and category
- Most popular payment methods
- Peak shopping hours
- Average customer ratings by category

### 10. AI Feature 2 — Sales Forecasting using Machine Learning ⭐ NEW
Built a machine learning forecasting model using Scikit-learn's Linear 
Regression to predict future sales trends. The model:
- Analyzes historical sales data by branch
- Predicts sales for the next 3-5 days
- Visualizes actual vs forecasted sales using Matplotlib
- Helps in data-driven decision making for inventory planning

---

## Requirements
- Python 3.8+
- PostgreSQL
- Python Libraries:
  - `pandas`, `numpy`, `sqlalchemy`, `psycopg2`
  - `scikit-learn`, `matplotlib`

---

## Getting Started
1. Clone the repository:
```bash
git clone <repo-url>
```
2. Install Python libraries:
```bash
pip install -r requirements.txt
```
3. Open `project.ipynb` in Jupyter Notebook and run all cells.

---

## Project Structure

|-- project.ipynb          # Main notebook: analysis + AI features
|-- Walmart.csv            # Raw data
|-- walmart_clean_data.csv # Cleaned data
|-- PSQL Queries.sql       # SQL scripts
|-- README.md              # Project documentation
|-- requirements.txt       # Required Python libraries


---

## Results and Insights
- **Sales Insights**: Health & Beauty and Electronic Accessories are 
  top-selling categories.
- **Profitability**: Branches with highest profit margins identified.
- **Customer Behavior**: Peak shopping hours, preferred payment methods, 
  and rating trends analyzed.
- **Forecasting**: ML model predicts future sales trends with Linear 
  Regression.

---

## Future Enhancements
- Add NLP chatbot to query data in plain English
- Integration with Power BI dashboard
- Real-time data pipeline automation
- Deep learning forecasting using LSTM

---

## Technologies Used
![Python](https://img.shields.io/badge/Python-3.8+-blue)
![Pandas](https://img.shields.io/badge/Pandas-2.0-green)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-latest-blue)
![Scikit-learn](https://img.shields.io/badge/ScikitLearn-ML-orange)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-red)

---

## License
This project is licensed under the MIT License.

---

## Acknowledgments
- **Data Source**: Kaggle's Walmart Sales Dataset
- **Inspiration**: Walmart's business case studies on sales optimization
