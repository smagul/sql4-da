### COUNT

/* ===== 1 ===== */
SELECT *
  FROM orders
 WHERE occurred_at >= '2016-12-01'
   AND occurred_at < '2017-01-01';

/* ===== 2 ===== */
/* COUNT the Number of Rows in a Table */
SELECT COUNT(*) AS order_count
  FROM orders
 WHERE occurred_at >= '2016-12-01'
   AND occurred_at < '2017-01-01';