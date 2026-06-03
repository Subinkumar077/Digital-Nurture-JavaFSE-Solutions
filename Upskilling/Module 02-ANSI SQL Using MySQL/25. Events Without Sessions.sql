-- Exercise 25: Events Without Sessions

SELECT e.event_id,
       e.title,
       e.status
FROM Events e
LEFT JOIN Sessions s ON e.event_id = s.event_id
WHERE s.session_id IS NULL
ORDER BY e.event_id;
