-- Exercise 11: Daily New User Count

SELECT u.registration_date,
       COUNT(*) AS new_users
FROM Users u
WHERE u.registration_date >= CURDATE() - INTERVAL 7 DAY
GROUP BY u.registration_date
ORDER BY u.registration_date;
