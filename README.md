
# WALMART DATA ANALYSIS

This end-to-end data analysis project is focused on deriving actionable insights from Walmart sales data. It incorporates Python for data wrangling and transformation, SQL for advanced analytical queries, and methodical problem-solving to address key business challenges. This project serves as a practical guide for data analysts seeking to enhance their expertise in data manipulation, SQL querying, and building data pipelines.

## Project Steps

### 1. Environment Setup
**Tools Utilized:** Visual Studio Code (VS Code), Python, PostgreSQL  
**Objective:** Establish a well-organized development environment with a clean project structure to ensure smooth data processing and code maintenance.

### 2. Kaggle API Configuration
- **API Access:** Download your Kaggle API token (`kaggle.json`) from your Kaggle account settings.  
- **Configuration:** Move the token into your local `.kaggle` directory to enable access.  
- **Dataset Download:**  
  ```bash
  kaggle datasets download -d <dataset-path>
````

This command will allow you to pull datasets directly into your local project directory.

### 3. Acquire Walmart Sales Dataset

* **Source:** Retrieve the dataset using the Kaggle API.
* **Direct Link:** [Walmart Sales Dataset on Kaggle](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)
* **Storage Location:** Place the dataset in the `data/` folder for easy data access and handling.

### 4. Library Installation and Data Loading

* **Dependencies:** Install required Python libraries with:

  ```bash
  pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
  ```
* **Load Dataset:** Use Pandas to import the data into a DataFrame for initial exploration and cleaning.

### 5. Exploratory Data Analysis

* **Purpose:** Familiarize yourself with the dataset’s structure, data types, and value distributions.
* **Techniques:** Apply `.info()`, `.describe()`, and `.head()` to gain a basic understanding of the dataset.

### 6. Data Cleaning Process

* **Duplicate Removal:** Identify and eliminate duplicate entries to maintain accuracy.
* **Handling Missing Data:** Drop or impute missing values as necessary.
* **Type Corrections:** Convert column types such as dates and prices to their appropriate formats.
* **Currency Formatting:** Clean any currency-formatted fields using string operations.
* **Final Check:** Validate the data to ensure it’s clean and ready for analysis.

### 7. Feature Engineering

* **Derived Columns:** Create a `Total Amount` column by multiplying `unit_price` with `quantity`.
* **Purpose:** This new feature simplifies aggregate computations and enhances SQL analysis.

### 8. Load Data into MySQL and PostgreSQL

* **Database Integration:** Establish connections to both MySQL and PostgreSQL via SQLAlchemy.
* **Data Ingestion:** Use Python scripts to automate table creation and data insertion.
* **Validation:** Execute basic SQL queries to confirm accurate data load.

### 9. SQL Analysis and Business Questions

* **Key Queries:** Develop and run SQL queries to address business challenges such as:

  * Tracking revenue across branches and product categories.
  * Identifying top-selling categories.
  * Analyzing sales performance across time, locations, and payment types.
  * Discovering peak shopping times and customer behavior patterns.
  * Assessing profit margins by category and branch.
* **Note-Taking:** Document each query’s intent, logic, and output clearly.

### 10. Documentation and Project Sharing

* **Process Tracking:** Document your steps and logic using Markdown or Jupyter Notebooks.
* **Publishing:** Upload your completed project to GitHub, including:

  * This `README.md` file.
  * SQL scripts and queries.
  * Python notebooks (if any).
  * Dataset access instructions or sample data files.

## Requirements

* **Python Version:** 3.8 or higher
* **Databases Supported:** MySQL and PostgreSQL
* **Essential Python Libraries:**

  * pandas
  * numpy
  * sqlalchemy
  * mysql-connector-python
  * psycopg2
* **Kaggle API Token** for accessing the dataset

## Getting Started

To run this project locally:

* Clone the repository:

  ```bash
  git clone <repo-url>
  ```

* Install the dependencies:

  ```bash
  pip install -r requirements.txt
  ```

* Set up your Kaggle API, download the dataset, and follow the outlined workflow to begin analysis.

## Project Directory Structure

```
|-- data/                     # Raw and processed dataset files
|-- sql_queries/              # SQL scripts for insights and reporting
|-- notebooks/                # Jupyter notebooks for data analysis
|-- README.md                 # Project documentation file
|-- requirements.txt          # Dependency list for Python packages
|-- main.py                   # Main script for processing and analysis
```

## Results and Insights

Insights discovered through the analysis include:

* **Sales Performance:** Identification of high-performing branches and categories, along with customer payment preferences.
* **Profitability Metrics:** Most profitable product types and locations.
* **Customer Trends:** Buying habits based on ratings, time of day, and transaction types.

## Future Enhancements

Ideas for project expansion:

* Add dynamic dashboards via Power BI or Tableau.
* Bring in more datasets (e.g., inventory or marketing) for enriched insights.
* Automate the pipeline for real-time processing and dashboard refreshes.

---

## Acknowledgments

* **Data Provided By:** [Kaggle – Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)

```

