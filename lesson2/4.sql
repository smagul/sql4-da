### JOINs and Filtering Example

/* ===== 1 ===== */
SELECT orders.*, accounts.*
  FROM orders
  LEFT JOIN accounts
    ON orders.account_id = accounts.id 
 WHERE accounts.sales_rep_id = 321500;

/* ===== 2 ===== */
SELECT orders.*, accounts.*
  FROM orders
  LEFT JOIN accounts
    ON orders.account_id = accounts.id
   AND accoutns.sales_rep_id = 321500;