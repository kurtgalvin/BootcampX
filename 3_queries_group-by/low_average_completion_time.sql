SELECT st.name AS student, AVG(sub.duration) AS average_assignment_duration, AVG(assign.duration) AS average_estimated_duration
FROM assignment_submissions AS sub
JOIN students AS st
    ON sub.student_id = st.id
JOIN assignments AS assign
    ON sub.assignment_id = assign.id
WHERE st.end_date IS NULL
GROUP BY st.id
HAVING AVG(sub.duration) < AVG(assign.duration)
ORDER BY average_assignment_duration