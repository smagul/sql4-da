### CASE Statements Examples

SELECT id,
       account_id,
       occurred_at,
       channel,
       CASE WHEN channel = 'facebook' THEN 'yes' END AS is_facebook
  FROM web_events
 ORDER BY occurred_at;

SELECT id,
       account_id,
       occurred_at,
       channel,
       CASE WHEN channel = 'facebook' THEN 'yes' ELSE 'no' END AS is_facebook
  FROM web_events
 ORDER BY occurred_at;

SELECT id,
       account_id,
       occurred_at,
       channel,
       CASE WHEN channel = 'facebook' OR channel = 'direct' 
            THEN 'yes' 
            ELSE 'no' 
        END AS is_facebook_or_direct
  FROM web_events
 ORDER BY occurred_at;

SELECT account_id,
       occurred_at,
       total,
       CASE WHEN total > 500 THEN 'Over 500'
            WHEN total > 300 THEN '301-500'
            WHEN total > 100 THEN '101-300'
            ELSE '100 or under' 
        END AS total_group
  FROM orders;

SELECT account_id,
       occurred_at,
       total,
       CASE WHEN total > 500 THEN 'Over 500'
            WHEN total > 300 AND total <= 500 THEN '301-500'
            WHEN total > 100 AND total <= 300 THEN '101-300'
            ELSE '100 or under'
        END AS total_group
  FROM orders;

/* CASE & Aggregations */

/* One or more conditions at a time */
SELECT CASE WHEN total > 500 THEN 'Over 500'
            ELSE '500 or under' 
        END AS total_group,
       COUNT(*) AS order_count
  FROM orders
 GROUP BY 1 

/* Just one condition at a time */
SELECT COUNT(1) AS orders_over_500_units
  FROM orders
 WHERE total > 500;