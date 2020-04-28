SELECT co.name AS cohort, COUNT(sub.id) AS total_submissions
FROM assignment_submissions AS sub
JOIN students AS st
    ON sub.student_id = st.id
JOIN cohorts AS co
    ON st.cohort_id = co.id
GROUP BY co.id
ORDER BY total_submissions DESC;