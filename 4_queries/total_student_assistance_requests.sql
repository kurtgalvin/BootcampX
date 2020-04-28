SELECT COUNT(*) AS total_assistances, s.name
FROM assistance_requests AS ar
JOIN students AS s
    ON ar.student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name