### JOIN Example

/* ===== 1 ===== */
/* If we want to pull only the account name and the dates in which that account placed an order, 
but none of the other columns, we can do this with the following query:*/

SELECT account.name, orders.occurred_at
  FROM orders
  JOIN accounts
    ON orders.account_id = account.id;

/* ===== 2 ===== */
/* Alternatively, the below query pulls all the columns from _ both_ the accounts and orders table. */
SELECT *
  FROM orders
  JOIN accounts
    ON orders.account_id = accounts.id;

/* ===== 3 ===== */
/* And the first query you ran pull all the information from only the orders table: */
SELECT orders.*
  FROM orders
  JOIN accounts
    ON orders.account_id = accounts.id;