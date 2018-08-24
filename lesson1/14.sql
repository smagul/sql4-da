### AND and BETWEEN Example

/* ===== 1 ===== */
SELECT *
  FROM orders
 WHERE occurred_at >= '2016-04-01' AND occurred_at <= '2016-10-01'
 ORDER BY occurred_at DESC

/* ===== 2 ===== */
SELECT *
  FROM orders
 WHERE occurred_at BETWEEN '2016-04-01' AND '2016-10-01'
 ORDER BY occurred_at DESC;