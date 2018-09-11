### HAVING Example

SELECT account_id,
       SUM(total_amt_usd) AS sum_total_amt_usd
  FROM orders
 GROUP BY 1
 ORDER BY 2 DESC;

/* We get the error: aggregate functions are not allowed in WHERE */
SELECT account_id,
       SUM(total_amt_usd) AS sum_total_amt_usd
  FROM orders
 WHERE SUM(total_amt_usd) >= 250000
 GROUP BY 1 
 ORDER BY 2 DESC

/* Correct! */
SELECT account_id,
       SUM(total_amt_usd) AS sum_total_amt_usd
  FROM orders
 GROUP BY 1
HAVING SUM(total_amt_usd) >= 250000
 ORDER BY 2 DESC;