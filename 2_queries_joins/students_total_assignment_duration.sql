SELECT SUM(sub.duration) AS total_duration
FROM assignment_submissions AS sub
JOIN students AS st
    ON sub.student_id = st.id
WHERE st.name = 'Ibrahim Schimmel'