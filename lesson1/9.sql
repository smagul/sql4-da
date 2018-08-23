### LIKE

SELECT *
  FROM web_events_full
 WHERE referrer_url = 'http://www.google.com';


SELECT *
  FROM web_events_full
 WHERE referrer_url LIKE '%google%';