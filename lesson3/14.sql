### DISTINCT Example

SELECT account_id,
       channel,
       COUNT(id) AS events
  FROM web_events
 GROUP BY account_id, channel
 ORDER BY account_id, events DESC

/* We take the same result */
 SELECT DISTINCT account_id, channel
   FROM web_events
  ORDER BY account_id

