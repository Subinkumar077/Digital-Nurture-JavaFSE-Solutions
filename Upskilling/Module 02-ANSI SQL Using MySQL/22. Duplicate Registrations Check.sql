-- Exercise 22: Duplicate Registrations Check

SELECT r.user_id,
       r.event_id,
       COUNT(*) AS registration_count
FROM Registrations r
GROUP BY r.user_id, r.event_id
HAVING COUNT(*) > 1
ORDER BY registration_count DESC, r.user_id, r.event_id;
