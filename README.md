# 📚 Library Management System - PostgreSQL Practice

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![NeonDB](https://img.shields.io/badge/NeonDB-00E699?style=for-the-badge&logo=neon&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)

A hands-on PostgreSQL project built to practice fundamental SQL concepts through a library management system. This project covers everything from schema design to complex nested queries, all executed through VS Code.

## 🎯 What's This About?

Ever wanted to get better at SQL? This project is basically my playground for practicing PostgreSQL queries. I built a simple library database on NeonDB and wrote tons of queries to practice different SQL concepts - from basic SELECTs to complex JOINs and subqueries.

## 🗂️ Project Structure

```
LIBRARY_POSTGRES_PROJECT/
│
├── schema.sql                          # Database schema & table
├── insert_data.sql                     # Sample data for testing
├── basic_select_queries.sql            # Simple SELECT statements
├── where_queries.sql                   # Filtering with WHERE clause
├── join_queries.sql                    # JOIN operations
├── aggregate_queries.sql               # COUNT, SUM, AVG, etc.
├── sorting_filtering_queries.sql       # ORDER BY, LIMIT, DISTINCT
├── groupby_queries.sql                 # GROUP BY & HAVING
└── complex_nested_queries.sql          # Subqueries & advanced stuff
```

## 📊 Database Schema

The database has three main tables with proper relationships:

- **users** → stores library members
- **books** → stores book information
- **borrowed_books** → tracks borrowing history (links users & books)

Relationships are enforced with foreign keys and `ON DELETE CASCADE` for automatic cleanup.

## 🚀 Getting Started

### Prerequisites

- Visual Studio Code
- **PostgreSQL Client for Visual Studio Code** extension
- A NeonDB account (free tier works fine)

### Setup Steps

1. **Install VS Code Extension**
   - Open VS Code
   - Go to Extensions (Ctrl+Shift+X)
   - Search for "PostgreSQL Client for Visual Studio Code"
   - Install it

2. **Get Your NeonDB Connection String**
   - Sign up at [NeonDB](https://neon.tech)
   - Create a new project
   - Copy the connection string (looks like: `postgresql://username:password@host/database`)

3. **Connect to Database in VS Code**
   - Open the PostgreSQL extension
   - Add new connection
   - Paste your NeonDB connection string

4. **Run the Files in Order**
   - First run `schema.sql` to create tables
   - Then run `insert_data.sql` to populate data
   - After that, practice with the other query files

5. **Execute Queries**
   - Open any `.sql` file
   - Select the query you want to run
   - Right-click → "Run Selected Query" or use the extension's run button

## 📝 What I Practiced

- **Basic Queries** - SELECT, filtering, sorting
- **WHERE Clauses** - Conditional filtering with AND/OR
- **JOIN Operations** - INNER, LEFT, RIGHT joins
- **Aggregate Functions** - COUNT, SUM, AVG, MIN, MAX
- **Grouping** - GROUP BY with HAVING clause
- **Sorting & Filtering** - ORDER BY, LIMIT, DISTINCT
- **Subqueries** - Nested queries and correlated subqueries
- **Data Integrity** - Primary keys, foreign keys, cascading deletes

## 💡 Key Concepts

| Concept | What I Learned |
|---------|----------------|
| **JOINs** | How to combine data from multiple tables using relationships |
| **GROUP BY** | Grouping rows together and applying aggregate functions |
| **HAVING** | Filtering grouped results (use after GROUP BY) |
| **Subqueries** | Writing queries inside queries for complex filtering |
| **CASCADE** | Auto-deleting related records when parent is deleted |

## 🎓 Query Files Breakdown

| File | What's Inside |
|------|---------------|
| `schema.sql` | Table definitions with relationships |
| `insert_data.sql` | Sample users, books, and borrowing records |
| `basic_select_queries.sql` | Simple SELECT statements to get started |
| `where_queries.sql` | Filtering data with conditions |
| `join_queries.sql` | Combining data from multiple tables |
| `aggregate_queries.sql` | Counting, summing, and averaging data |
| `sorting_filtering_queries.sql` | Ordering and limiting results |
| `groupby_queries.sql` | Grouping data and using HAVING |
| `complex_nested_queries.sql` | Advanced queries with subqueries |

## 🛠️ Tech Stack

- **Database:** PostgreSQL (via NeonDB)
- **IDE:** Visual Studio Code
- **Extension:** PostgreSQL Client for VS Code
- **Cloud Provider:** NeonDB

## 📌 Tips

- Run queries one at a time to see results clearly
- Each file builds on concepts from previous ones
- NeonDB's free tier is perfect for practice projects
- Use the extension's autocomplete - it's really helpful
- Check the PostgreSQL extension's output panel for errors

## 👤 Author

**Kaushik Das**

---

*Built this to sharpen my SQL skills using modern cloud tools. Feel free to fork and practice!*
