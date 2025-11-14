
-- Total sessions per country
SELECT country, COUNT(*) AS sessions
FROM sessions
GROUP BY country;

-- Average session length per device
SELECT device, AVG(session_length) AS avg_session
FROM sessions
GROUP BY device;

-- Daily Active Users (DAU)
SELECT session_date, COUNT(DISTINCT user_id) AS dau
FROM sessions
GROUP BY session_date
ORDER BY session_date;
