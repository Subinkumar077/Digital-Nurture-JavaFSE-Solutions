-- Exercise 9: Organizer Event Summary

SELECT u.user_id,
       u.full_name,
       e.status,
       COUNT(*) AS event_count
FROM Events e
JOIN Users u ON e.organizer_id = u.user_id
GROUP BY u.user_id, u.full_name, e.status
ORDER BY u.full_name, e.status;
