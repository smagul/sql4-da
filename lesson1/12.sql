### NOT example

/* ===== 1 ===== */
SELECT sales_rep_id, name
  FROM accounts
 WHERE sales_rep_id NOT IN (321500, 321570)
 ORDER BY sales_rep_id;

/* ===== 2 ===== */
SELECT *
  FROM web_events
 WHERE referrer_url NOT LIKE '%google%'; 
