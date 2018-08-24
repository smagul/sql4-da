### JOIN Example

/* ===== 1 ===== */
SELECT orders.*,
       accounts.*
  FROM orders
  JOIN accounts
    ON orders.account_id = accounts.id