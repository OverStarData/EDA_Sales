# 🧠 Data Analytics Project: Sales & Customer Insights using SQL Server

## 📊 Project Overview

This project focuses on **data exploration and analysis** using Microsoft **SQL Server**. The dataset simulates a **retail business** scenario, including **sales transactions, customer demographics, and product details**. The goal is to extract **key business metrics**, discover **customer behavior patterns**, and provide **insights for decision-making**.

---

## 🗃️ Data Sources

The project utilizes three main tables stored in a **data warehouse schema** named `gold`:

- `gold.dim_customers` – Customer information (e.g., name, birthdate, country, gender)
- `gold.dim_products` – Product details (e.g., category, subcategory, product ID)
- `gold.fact_sales` – Sales transactions (e.g., quantity, sales amount, date, order info)

---

## 🔧 Tools & Technologies

- **SQL Server** – Data storage and querying
- **T-SQL** – Query language for analytics
- **INFORMATION_SCHEMA** – Metadata exploration
- **Window Functions (ROW_NUMBER)** – Ranking analysis

---

## 🔍 Key Analysis Performed

### 🧱 Schema Exploration

- List of all tables and columns
- Metadata inspection for specific tables

### 🌍 Dimension Exploration

- Unique countries, product categories, and subcategories
- Date range of orders
- Age of customers (youngest and oldest)

### 📈 Key Business Metrics

- Total sales, total quantity sold
- Average selling price
- Number of orders, products, and customers
- Total number of customers who placed orders

### 📊 Aggregated KPIs Report

Generated a unified table combining:

- Total Sales  
- Total Quantity  
- Average Sales  
- Total Orders  
- Total Products  
- Total Customers  

### 🌐 Customer & Product Demographics

- Customers grouped by **country** and **gender**
- Products grouped by **category**
- Total revenue and average cost per **category**

### 💰 Revenue Distribution

- Revenue by **customer**
- Revenue by **product** and **subcategory**
- Top-performing and worst-performing products/subcategories

### 🥇 Ranking Analysis

- **Top 5** highest-revenue products
- **Bottom 5** lowest-revenue products
- **Top 10** customers by revenue
- **Bottom 3** customers with the fewest orders

---

## 📌 Notable SQL Concepts Used

- `INFORMATION_SCHEMA` queries for schema exploration  
- `GROUP BY`, `ORDER BY`, and `DISTINCT` for aggregations  
- `DATEDIFF`, `MIN`, `MAX` for date analysis  
- `JOIN` operations for combining dimension and fact tables  
- `ROW_NUMBER()` for ranking worst-performing subcategories

---

