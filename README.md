
# WALMART DATA ANALYSIS

This project presents a complete end-to-end data analysis pipeline focused on uncovering valuable business insights from Walmart's sales data. The workflow combines Python for data handling, SQL for in-depth querying, and structured methodologies to address real-world business challenges. It's an ideal hands-on project for aspiring data analysts aiming to strengthen skills in data transformation, SQL querying, and data pipeline development.

## Project Steps

### 1. Environment Setup
**Tools Used:** Visual Studio Code (VS Code), Python, PostgreSQL  
**Objective:** Organize a clean workspace in VS Code with a structured folder layout to enable efficient data handling and project management.

### 2. Configure Kaggle API
- **API Setup:** Download your Kaggle API key (kaggle.json) from your Kaggle account settings.  
- **Configuration:** Save the key in the `.kaggle` directory in your user folder.  
- **Download Command:**  
  ```bash
  kaggle datasets download -d <dataset-path>
````

Use this command to fetch datasets directly into your project directory.

### 3. Download Walmart Sales Dataset

* **Source:** Access the Walmart sales dataset via the Kaggle API.
* **Dataset Link:** [Walmart Sales Dataset on Kaggle](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)
* **Storage:** Place the dataset inside the `data/` folder for seamless data access and processing.

### 4. Install Required Libraries & Load Data

* **Install Libraries:**

  ```bash
  pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
  ```
* **Load Data:** Use Pandas to import the dataset into a DataFrame for exploration and preprocessing.

### 5. Initial Data Exploration

* **Purpose:** Understand the dataset’s structure, data types, and potential issues.
* **Tools:** Utilize `.info()`, `.describe()`, and `.head()` to quickly assess the dataset and inspect its key characteristics.

### 6. Data Cleaning

* **Remove Duplicates:** Eliminate repeated records that may distort analysis.
* **Handle Missing Values:** Drop or fill in missing data where necessary.
* **Fix Data Types:** Convert columns like dates and numeric fields into appropriate formats.
* **Currency Cleanup:** Use string manipulation techniques to clean currency fields.
* **Validation:** Ensure the final dataset is free from errors and inconsistencies.

### 7. Feature Engineering

* **New Column:** Add a `Total Amount` field by calculating: `unit_price * quantity`.
* **Why:** This new metric will enhance analysis accuracy and simplify aggregation tasks in SQL.

### 8. Load Data into MySQL and PostgreSQL

* **Database Connection:** Use SQLAlchemy to establish connections to both databases.
* **Table Creation & Loading:** Automate table creation and data import using Python scripts.
* **Verify:** Run sample queries to confirm data was correctly inserted.

### 9. SQL Analysis: Solving Business Questions

* **Objective:** Execute advanced SQL queries to solve key business problems:

  * Track revenue patterns by branch and category.
  * Determine top-selling product categories.
  * Evaluate sales trends by city, time, and payment method.
  * Identify peak sales periods and customer shopping behavior.
  * Analyze profit margins by branch and category.
* **Documentation:** Annotate each query with its purpose, logic, and interpretation.

### 10. Project Documentation and Deployment

* **Create Documentation:** Use Markdown or Jupyter Notebooks to document your analysis process.
* **Publish Project:** Share your project on GitHub, including:

  * This `README.md` file.
  * Python scripts and notebooks.
  * SQL queries.
  * Data access instructions or actual files if permitted.

## Requirements

* **Python Version:** 3.8 or higher
* **Databases:** MySQL and PostgreSQL
* **Python Libraries:**

  * pandas
  * numpy
  * sqlalchemy
  * mysql-connector-python
  * psycopg2
* **Kaggle API Token** (for dataset download)

## Getting Started

To set up the project on your local machine:

* Clone the repository:

  ```bash
  git clone <repo-url>
  ```

* Install required libraries:

  ```bash
  pip install -r requirements.txt
  ```

* Configure your Kaggle API, download the data, and follow the outlined steps to process and analyze it.

## Project Structure


|-- data/                     # Raw and processed datasets
|-- sql_queries/              # SQL scripts for business analysis
|-- notebooks/                # Python notebooks for exploration
|-- README.md                 # Project documentation
|-- requirements.txt          # Python dependencies
|-- main.py                   # Main execution script for data processing


## Results and Insights

Key takeaways from this project:

* **Sales Performance:** Top-performing categories and branches; most used payment types.
* **Profit Analysis:** High-margin product lines and city-wise profitability.
* **Customer Insights:** Behavior trends based on ratings, purchase times, and methods.

## Future Enhancements

Potential improvements and next steps:

* Add interactive dashboards using Power BI or Tableau.
* Integrate more datasets for broader insight.
* Automate the pipeline for continuous data processing and real-time analysis.


## Acknowledgments

* **Dataset Source:** [Kaggle – Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)

