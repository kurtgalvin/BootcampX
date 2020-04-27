SELECT SUM(sub.duration) AS total_duration
FROM assignment_submissions AS sub
JOIN students AS st
    ON sub.student_id = st.id
JOIN cohorts AS co
    ON st.cohort_id = co.id
WHERE co.name = 'FEB12'