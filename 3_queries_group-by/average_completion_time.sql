SELECT st.name AS student, AVG(sub.duration) AS average_assignment_duration
FROM assignment_submissions AS sub
JOIN students AS st
    ON sub.student_id = st.id
WHERE st.end_date IS NULL
GROUP BY st.id
ORDER BY average_assignment_duration DESC;