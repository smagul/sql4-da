### COUNT & NULLs

/* ===== 1 ===== */
/* COUNT the Number of Rows in a Table */
SELECT COUNT(*) AS account_count
  FROM accounts;

/* ===== 2 ===== */
SELECT COUNT(id) AS account_id_count
  FROM accounts;

/* ===== 3 ===== */
/* COUNT the Number of Rows in a Table */
SELECT COUNT(primary_poc) AS account_primary_poc_count
  FROM accounts;

/* ===== 4 ===== */
/* COUNT the Number of Rows in a Table */
SELECT *
  FROM accounts
 WHERE primary_poc IS NULL;