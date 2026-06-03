-- Exercise 15: Event Session Time Conflict

SELECT s1.event_id,
       e.title AS event_title,
       s1.session_id AS session_id_1,
       s1.title AS session_title_1,
       s1.start_time AS session_start_1,
       s1.end_time AS session_end_1,
       s2.session_id AS session_id_2,
       s2.title AS session_title_2,
       s2.start_time AS session_start_2,
       s2.end_time AS session_end_2
FROM Sessions s1
JOIN Sessions s2
  ON s1.event_id = s2.event_id
 AND s1.session_id < s2.session_id
 AND s1.start_time < s2.end_time
 AND s2.start_time < s1.end_time
JOIN Events e ON s1.event_id = e.event_id
ORDER BY s1.event_id, s1.session_id, s2.session_id;
