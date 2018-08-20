# SQL for Data Analysis

<!-- TOC -->

- [SQL for Data Analysis](#sql-for-data-analysis)
    - [Lesson 1: Basic SQL](#lesson-1-basic-sql)
        - [Entity Relationship Diagrams](#entity-relationship-diagrams)
        - [What to Notice](#what-to-notice)
        - [Quiz: ERD Fundamentals](#quiz-erd-fundamentals)
        - [Why Do Data Analysts Use SQL](#why-do-data-analysts-use-sql)
        - [Why Businesses Like Databases](#why-businesses-like-databases)
        - [How Databases Store Data](#how-databases-store-data)
        - [Types of Statements](#types-of-statements)
        - [Quiz: Statements](#quiz-statements)
        - [SELECT & FROM](#select--from)
        - [Formatting Best Practices](#formatting-best-practices)

<!-- /TOC -->

## Lesson 1: Basic SQL

### Entity Relationship Diagrams

An **entity relationship diagram (ERD)** is a common way to view data in a database. Below is the ERD for the database we will use from Parch & Posey. These diagrams help you visualize the data you are analyzing including:

1. The names of the tables.
2. The columns in each table.
3. The way the tables work together.

**You can think of each of the boxes below as a spreadsheet.**  

![Entity Relationship Diagrams](images/3-Entity-Relationship-Diagrams.mp4_20180820_171047.592.jpg)  

### What to Notice

In the Parch & Posey database there are five tables (essentially 5 spreadsheets):

1. **web_events**
2. **accounts**
3. **orders**
4. **sales_reps**
5. **region**

You can think of each of these tables as an individual spreadsheet. Then the columns in each spreadsheet are listed below the table name. For example, the **region** table has two columns: `id` and `name`. Alternatively the **web_events** table has four columns.  

![Region Table](images/screen-shot-2017-08-04-at-6.41.07-pm.png)  

The `"crow's foot"` that connects the tables together shows us how the columns in one table relate to the columns in another table.

### Quiz: ERD Fundamentals

![Quiz: ERD Fundamentals](images/Quiz-ERD-Fundamentals.png)  

### Why Do Data Analysts Use SQL

There are some major advantages to using traditional relational databases, which we interact with using SQL. The five most apparent are:

- SQL is easy to understand.
- Traditional databases allow us to access data directly.
- Traditional databases allow us to audit and replicate our data.
- SQL is a great tool for analyzing multiple tables at once.
- SQL allows you to analyze more complex questions than dashboard tools like Google Analytics.

### Why Businesses Like Databases

1. **Data integrity is ensured** - only the data you want entered is entered, and only certain users are able to enter data into the database.
2. **Data can be accessed quickly** - SQL allows you to obtain results very quickly from the data stored in a database. Code can be optimized to quickly pull results.
3. **Data is easily shared** - multiple individuals can access data stored in a database, and the data is the same for all users allowing for consistent results for anyone with access to your database.

### How Databases Store Data

1. **Data in databases is stored in tables that can be thought of just like Excel spreadsheets.** For the most part, you can think of a database as a bunch of Excel spreadsheets. Each spreadsheet has rows and columns. Where each row holds data on a transaction, a person, a company, etc., while each column holds data pertaining to a particular aspect of one of the rows you care about like a name, location, a unique id, etc.
2. **All the data in the same column must match in terms of data type.** An entire column is considered quantitative, discrete, or as some sort of string. This means if you have one row with a string in a particular column, the entire column might change to a text data type. **This can be very bad if you want to do math with this column!**
3. **Consistent column types are one of the main reasons working with databases is fast.** Often databases hold **a LOT** of data. So, knowing that the columns are all of the same type of data means that obtaining data from a database can still be fast.  

### Types of Statements

The key to SQL is understanding **statements.** A few statements include:

1. **CREATE TABLE** is a statement that creates a new table in a database.
2. **DROP TABLE** is a statement that removes a table in a database.
3. **SELECT** allows you to read data and display it. This is called a **query.**

### Quiz: Statements

![Quiz: Statements](images/Quiz-Statements.png)  

### SELECT & FROM

1. **SELECT** is where you tell the query what columns you want back.
2. **FROM** is where you tell the query what table you are querying from. Notice the columns need to exist in this table.

### Formatting Best Practices

- **Capitalization.** You may have noticed that we have been capitalizing SELECT and FROM, while we leave table and column names lowercase. This is a common formatting convention. It is common practice to capitalize commands (SELECT, FROM), and keep everything else in your query lowercase. This makes queries easier to read, which will matter more as you write more complex queries. For now, it is just a good habit to start getting into.
- **Avoid Spaces in Table and Variable Names.** It is common to use underscores and avoid spaces in column names. It is a bit annoying to work with spaces in SQL. In Postgres if you have spaces in column or table names, you need to refer to these columns/tables with double quotes around them (Ex: FROM "Table Name" as opposed to FROM table_name). In other environments, you might see this as square brackets instead (Ex: FROM [Table Name]).
- **Use White Space in Queries.** SQL queries ignore spaces, so you can add as many spaces and blank lines between code as you want, and the queries are the same. This query 

```sql
SELECT account_id FROM orders
```

is equivalent to this query:

```sql
SELECT account_id
FROM orders
```

- **SQL isn't Case Sensitive.** The following query:

```sql
SELECT account_id
FROM orders
```

is the same as:

```sql
select account_id
from orders
```

However, I would again urge you to follow the conventions outlined earlier in terms of fully capitalizing the commands, while leaving other pieces of your code in lowercase.

- **Semicolons.** Depending on your SQL environment, your query may need a semicolon at the end to execute. Other environments are more flexible in terms of this being a "requirement." It is considered best practices to put a semicolon at the end of each statement, which also allows you to run multiple commands at once if your environment is able to show multiple results at once. Best practice:

```sql
SELECT account_id
FROM orders;
```