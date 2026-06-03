-- Exercise 2: Top Rated Events

SELECT e.event_id,
       e.title,
       AVG(f.rating) AS avg_rating,
       COUNT(*) AS feedback_count
FROM Events e
JOIN Feedback f ON e.event_id = f.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(*) >= 10
   AND AVG(f.rating) = (
       SELECT MAX(avg_rating)
       FROM (
           SELECT AVG(f2.rating) AS avg_rating
           FROM Feedback f2
           GROUP BY f2.event_id
           HAVING COUNT(*) >= 10
       ) AS rated
   );
