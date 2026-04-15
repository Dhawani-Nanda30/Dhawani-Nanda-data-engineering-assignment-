-- Funnel
SELECT event_type, COUNT(DISTINCT user_id)
FROM events
GROUP BY event_type;

-- Session
SELECT user_id, COUNT(*), SUM(price)
FROM events
GROUP BY user_id;

-- Top products
SELECT product_id, SUM(price)
FROM events
WHERE event_type='purchase'
GROUP BY product_id
ORDER BY SUM(price) DESC
LIMIT 10;

-- Not returned users
SELECT DISTINCT user_id
FROM events
WHERE event_time LIKE '2019-10%'
AND user_id NOT IN (
    SELECT user_id FROM events WHERE event_time LIKE '2019-11%'
);

-- Hourly
SELECT strftime('%H', event_time), COUNT(*)
FROM events
GROUP BY 1;
