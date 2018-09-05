### GROUP BY Part II Example

/* You can use multiple group and order */
SELECT account_id,
       channel,
       COUNT(id) AS events
  FROM web_events
 GROUP BY account_id, channel
 ORDER BY account_id DESC, channel ASC;