🧠 CS50 SQL – Harvard Database Course Projects

This repository contains my solutions to CS50’s Introduction to Databases with SQL (Harvard University) assignments.
The course focuses on database design, SQL querying, normalization, indexing, and real-world data modeling.

📌 About the Course

CS50 SQL is a hands-on introduction to relational databases.
Throughout the course, I worked on designing schemas, writing complex SQL queries, optimizing performance with indexes, and interacting with databases using Python and Java.

Key topics include:

Relational database design
Normalization (1NF, 2NF, 3NF)
SQL queries (SELECT, JOIN, GROUP BY, HAVING)
Indexing and query optimization
Views and data abstraction
Database-driven application logic
📁 Repository Structure
cs50-sql-harvard/
│
├── atl/                  # Airport database design (Hartsfield-Jackson ATL)
├── connect/             # LinkedIn-like social network schema
├── donuts/              # E-commerce bakery database design
├── meteorites/          # Data cleaning & import from CSV
├── census/              # SQL views & aggregation queries
├── snap/                # Performance-aware SQL queries (indexes)
├── harvard/             # Index optimization for MyHarvard database
├── private/             # Book cipher SQL decoding
├── bnb/                 # Airbnb-style analytics views
├── dont-panic/         # SQL injection-style hacking exercises (SQL/Python/Java)
└── deep/               # Distributed database partitioning analysis (answers.md)
🧪 Skills Practiced
🗄️ SQL & Database Design
Schema design from real-world requirements
Normalization & relationship modeling (1–M, M–M)
Creating views for analytics
⚡ Performance Optimization
Index design and analysis using EXPLAIN QUERY PLAN
Query optimization strategies
🧹 Data Engineering
Cleaning raw CSV data before ingestion
Handling NULLs, rounding, and filtering datasets
🧠 Systems Thinking
Trade-offs in distributed systems (partitioning strategies)
Data sharding and consistency vs performance
🐍 Backend Integration
Executing SQL from Python (CS50 library)
Executing SQL from Java (JDBC + Prepared Statements)
🔥 Example Projects
🛫 ATL Airport Database

Designed a full relational schema for:

Passengers
Flights
Airlines
Check-ins
💼 LinkedIn Clone (Connect)

Modeled:

Users
Schools
Companies
Connections (many-to-many relationships)
🍩 Donuts Shop System

Handled:

Ingredients inventory
Menu items
Orders
Customers
🛰️ Meteorite Data Pipeline
Imported CSV into SQLite
Cleaned missing values
Rounded numeric fields
Filtered invalid records
📊 Census Analytics

Created SQL views for:

Rural vs urban filtering
Aggregated national statistics
District-level population ranking
⚡ Snap Performance Queries
Used indexes for fast querying
Optimized message lookup
Analyzed query execution plans
🔐 Don’t Panic (Python & Java)
Connected applications to SQLite
Executed SQL via code
Performed secure updates with prepared statements
🚀 What I Learned

This course helped me deeply understand:

How real-world databases are structured
Why schema design matters more than queries
How indexing can drastically improve performance
How backend applications interact with databases
Trade-offs in distributed systems design
🧾 Notes

All projects are implemented using:

SQLite (primary DB engine)
MySQL (for one advanced schema task)
Python (CS50 SQL library)
Java (JDBC)
📌 Author

Fatemeh Khalvandi
Master’s student in Computer Engineering
Focus: NLP, LLMs, RAG systems, and data-driven systems

⭐ Status

✔ Completed CS50 SQL (Harvard)
✔ All problem sets implemented
✔ Ready for portfolio / GitHub showcase
