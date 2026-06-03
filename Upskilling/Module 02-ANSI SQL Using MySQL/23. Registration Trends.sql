-- Exercise 23: Registration Trends

SELECT DATE_FORMAT(r.registration_date, '%Y-%m') AS registration_month,
       COUNT(*) AS registration_count
FROM Registrations r
WHERE r.registration_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY DATE_FORMAT(r.registration_date, '%Y-%m')
ORDER BY registration_month;
