SELECT co.name, COUNT(st.id) AS student_count
FROM cohorts AS co
JOIN students AS st
    ON co.id = st.cohort_id
GROUP BY co.id
HAVING COUNT(st.id) >= 18
ORDER BY student_count;