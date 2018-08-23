### NOT quiz
/*
1. Use the accounts table to find the account name, primary poc, and sales rep id for 
all stores except Walmart, Target, and Nordstrom.

2. Use the web_events table to find all information regarding individuals who were contacted 
via any method except using organic or adwords methods.

3. All the companies whose names do not start with 'C'.
4. All companies whose names do not contain the string 'one' somewhere in the name.
5. All companies whose names do not end with 's'.
*/

/* ===== 1 ===== */
SELECT account_name, primary_poc, sales_rep_id
  FROM accounts
 WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

/* ===== 2 ===== */
SELECT *
  FROM web_events
 WHERE channel NOT IN ('organic', 'adwords');

/* ===== 3 ===== */
SELECT name
  FROM accounts
 WHERE name NOT LIKE 'C%';

/* ===== 4 ===== */
SELECT name
  FROM accounts
 WHERE name NOT LIKE '%one%';

/* ===== 5 ===== */
SELECT name
  FROM accounts
 WHERE name NOT LIKE '%s';