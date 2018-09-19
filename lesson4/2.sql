### Write Your First Subquery Quiz

SELECT DATE_TRUNC('day', occurred_at) AS day,
       channel,
       COUNT(*) AS event_count
  FROM web_events
 GROUP BY 1, 2
 ORDER BY 3 DESC;

SELECT *
  FROM (SELECT DATE_TRUNC('day', occurred_at) AS day,
               channel,
               COUNT(*) AS events
          FROM web_events
         GROUP BY 1, 2
         ORDER BY 3 DESC) sub;

SELECT channel, AVG(events) AS average_events
  FROM (SELECT DATE_TRUNC('day', occurred_at) AS day,
               channel, COUNT(*) AS events
          FROM web_events
         GROUP BY 1, 2) sub
 GROUP BY channel
 ORDER BY 2 DESC;