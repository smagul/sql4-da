### DATE Functions Example

SELECT occurred_at,
       SUM(standard_qty) AS standard_qty_sum
  FROM orders
 GROUP BY occurred_at
 ORDER BY occurred_at;

SELECT DATE_TRUNC('day', occurred_at) AS day,
       SUM(standard_qty) AS standard_qty_sum
  FROM orders
 GROUP BY DATE_TRUNC('day', occurred_at)
 ORDER BY DATE_TRUNC('day', occurred_at);

SELECT DATE_PART('dow', occurred_at) AS day_of_week,
       account_id,
       occurred_at,
       total
  FROM orders;

/* The 1 and 2 here identify these 
columns in the SELECT statement */
SELECT DATE_PART('dow', occurred_at) AS day_of_week,
       SUM(total) AS total_qty
  FROM orders
 GROUP BY 1
 ORDER BY 2 DESC;