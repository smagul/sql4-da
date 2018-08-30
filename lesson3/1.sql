### Data Types and NULLs Example

/* ===== 1 ===== */
/* This query can return rows with NULL columns. */
SELECT *
  FROM accounts
 WHERE id > 1500 AND id < 1600;

/* ===== 2 ===== */
SELECT *
  FROM accounts
 WHERE primary_poc IS NULL;

/* ===== 3 ===== */
/* Notice that NULLs are different than a zero - they are cells where data does not exist.
We don't use =, because NULL isn't considered a value in SQL. Rather, it is a property of the data. */
SELECT *
  FROM accounts
 WHERE primary_poc = NULL;

/* ===== 4 ===== */
SELECT *
  FROM accounts
 WHERE primary_poc IS NOT NULL;