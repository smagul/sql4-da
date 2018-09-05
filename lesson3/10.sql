### GROUP BY Example

/* You take an error */
SELECT account_id,
       SUM(standard_qty) AS standard_sum,
       SUM(gloss_qty) AS gloss_sum,
       SUM(poster_qty) AS poster_sum
  FROM orders;

/* Solution: use GROUP BY */
SELECT account_id,
       SUM(standard_qty) AS standard_sum,
       SUM(gloss_qty) AS gloss_sum,
       SUM(poster_qty) AS poster_sum
  FROM orders
 GROUP BY account_id
 ORDER BY account_id;