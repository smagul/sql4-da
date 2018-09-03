### SUM Example

/* ===== 1 ===== */
SELECT SUM(standard_qty) AS standard,
       SUM(gloss_qty) AS gloss,
       SUM(poster_qty) AS poster
  FROM orders

/* ===== 2 ===== */
