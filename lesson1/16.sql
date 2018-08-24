### OR Operator Example

/* ===== 1 ===== */
SELECT account_id,
       occurred_at,
       standard_qty,
       gloss_qty,
       poster_qty
  FROM orders
 WHERE standard_qty = 0 OR gloss_qty = 0 OR poster_qty = 0;

 /* ===== 2 ===== */
SELECT account_id,
       occurred_at,
       standard_qty,
       gloss_qty,
       poster_qty
  FROM orders
 WHERE (standard_qty = 0 OR gloss_qty = 0 OR poster_qty = 0)
   AND occurred_at >='2016-10-01';