-- Exercise 7: Low Feedback Alerts

SELECT u.user_id,
       u.full_name,
       e.title AS event_title,
       f.rating,
       f.comments
FROM Feedback f
JOIN Users u ON f.user_id = u.user_id
JOIN Events e ON f.event_id = e.event_id
WHERE f.rating < 3
ORDER BY f.rating ASC, f.feedback_date DESC;
