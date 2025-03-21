# 🏡 PropertyPortal: Real Estate Data Management System

## 📌 Motivation
This project was developed as part of a university **Data Modeling and Analytics** course. It aims to design a comprehensive real estate database system that integrates both **relational (Oracle SQL)** and **non-relational (MongoDB)** models.

The goal was to simulate a real-world property management system that could handle information on properties, customers, staff, viewings, and contracts. Emphasis was placed on:
- **Designing a normalized schema** to 3rd Normal Form (3NF)
- **Building and populating relational tables** with realistic data
- **Creating analytical queries** to extract business insights
- **Modeling NoSQL documents** for flexible data retrieval

This system supports a hybrid data environment and demonstrates the strengths of structured and semi-structured database design for real estate operations.

## ⚙️ Project Workflow
1. Requirements gathering and data analysis
2. Logical schema design using normalization (to 3NF)
3. Schema implementation using Oracle SQL
4. Data population with realistic sample values
5. Querying the system using SQL and PL/SQL
6. Translating the schema to MongoDB collections
7. Evaluating query outputs and validating system integrity.

![Project Workflow](images/workflow_diagram.png)

## 📊 Exploratory Data Overview
This project extracts meaningful insights from a relational database through structured queries, including:
- Distribution of property types across locations.
- Customer viewing behavior and contract trends.
- Branch-wise staff allocation and performance.

Example SQL query to analyze property pricing trends:
```sql
SELECT PLOCATION, AVG(PASKING_PRICE) AS AVG_PRICE
FROM PROPERTY
GROUP BY PLOCATION
ORDER BY AVG_PRICE DESC;

## 🔧 Data Processing
1. Normalization to 3rd Normal Form (3NF) to remove redundancy.
2. Primary and Foreign Key Constraints to ensure relational integrity.
3. Data Cleaning & Validation through SQL constraints (CHECK, UNIQUE).

**Entity-Relationship Diagram (ERD):**
![Entity-Relationship Diagram](images/ER_Diagram.png)

## 🛠️ Model Implementation

### ✅ Relational Database (SQL - Oracle 11g)
- Tables & Relationships defined via CREATE TABLE statements.
- Data Insertion through INSERT INTO commands.
- Complex Queries leveraging JOIN, GROUP BY, and AGGREGATE FUNCTIONS.

Example SQL query:
```sql
SELECT S.SNAME, COUNT(V.VID) AS TOTAL_VIEWINGS
FROM STAFF S
JOIN EMPLOYMENT E ON S.SID = E.STAFF
JOIN BRANCH B ON E.BRANCH = B.BCODE
JOIN MANAGED_P MP ON B.BCODE = MP.BRANCH
JOIN PROPERTY P ON MP.PROPERTY = P.PID
JOIN VIEWING V ON P.PID = V.PROPERTY
GROUP BY S.SNAME;

### 🛠️ NoSQL Implementation (MongoDB)
- Flexible Document-Based Storage for property listings.
- Aggregation Pipelines for analysis.
- Example Query: Find all available properties under $500,000
```js
db.properties.find({
  asking_price: { $lt: 500000 },
  availability: { $gte: new Date() }
});
