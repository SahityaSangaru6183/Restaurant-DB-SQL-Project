# 🍽️ Restaurant Data Exploration and Customer Behavior Analysis Using SQL

An end-to-end SQL project that analyzes restaurant menu data, order records, and customer behavior to uncover valuable insights—helping guide business decisions such as menu optimization and pricing strategies.

---

## 🔍 Short Description / Purpose

This project explores a restaurant's dataset using SQL to analyze menu pricing, item popularity, and customer purchasing behavior. It delivers actionable insights on category performance, high-value orders, and customer preferences to support strategic improvements.

---

## 💻 Tech Stack

The project was developed using the following tools and technologies:

- 🛢️ **MySQL** – For querying and analyzing structured relational data  
- 💻 **SQL Scripts** – Used to write optimized queries, aggregations, and joins  
- 📁 **.sql file** – All objectives and queries are contained in a single SQL script file

---

## 🗃️ Data Source

- Simulated restaurant dataset consisting of two tables:
  - `menu_items` – Contains dish names, categories, and prices  
  - `order_details` – Contains order IDs, dates, and ordered item IDs

---

## 🎯 Features / Highlights

### • Business Problem

The restaurant wants to understand:
- Which items are most and least popular?
- How does pricing vary across categories?
- Which orders contribute the most to total revenue?
- What customer behavior patterns emerge from order data?

### • Goal of the Project

To analyze restaurant operations through data, enabling better menu planning, pricing strategies, and targeted promotions.

---

### • Walkthrough of Key Analyses

- 🧾 **Menu Analysis**  
  - Total number of dishes  
  - Average price per category  
  - Most and least expensive items overall and by category  
  - Category-wise dish counts

- 🧾 **Order Trends**  
  - Total number of orders and date range  
  - Largest orders by item count  
  - Number of high-volume orders (e.g., >12 items)  

- 🔗 **Joined Analysis (Menu + Orders)**  
  - Most and least ordered items  
  - Popularity by category  
  - Top 5 highest spend orders and their breakdown  
  - Insights into preferred categories for big-spending customers

---

### • Business Impact & Insights

- 📊 **Menu Optimization**: Identify top-performing and low-performing dishes to adjust offerings  
- 💸 **Revenue Focus**: Prioritize popular high-priced items to boost average order value  
- 🍝 **Category Strategy**: Italian dishes showed strong performance among top spenders—consider maintaining or expanding this category  
- 👥 **Customer Patterns**: Recognize high-volume orders and frequent item combinations to inform combo deals or loyalty rewards

---

## 🖼️ Query Snapshot Examples

> Add screenshots of your SQL output (e.g., from MySQL Workbench, pgAdmin, or VS Code). Upload them to your GitHub repo and embed them like this:

```markdown
![Top Orders by Spend](https://github.com/yourusername/restaurant-sql-analysis/assets/top-orders.png)
![Items per Category](https://github.com/yourusername/restaurant-sql-analysis/assets/items-category.png)
