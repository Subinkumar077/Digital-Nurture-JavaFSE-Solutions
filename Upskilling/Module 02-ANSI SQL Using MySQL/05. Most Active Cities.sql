-- Exercise 5: Most Active Cities

SELECT u.city,
       COUNT(DISTINCT r.user_id) AS registered_users
FROM Registrations r
JOIN Users u ON r.user_id = u.user_id
GROUP BY u.city
ORDER BY registered_users DESC
LIMIT 5;
