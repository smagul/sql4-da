### Subquery II Example

SELECT MIN(occurred_at) AS MIN
  FROM orders;

SELECT DATE_TRUNC('month', MIN(occurred_at)) AS min_month
  FROM orders;

SELECT *
  FROM orders
 WHERE DATE_TRUNC('month', occurred_at) = 
       (SELECT DATE_TRUNC('month', MIN(occurred_at)) AS min_month
          FROM orders)
  ORDER BY occurred_at;