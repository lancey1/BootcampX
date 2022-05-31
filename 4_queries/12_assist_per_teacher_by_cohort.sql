SELECT teachers.name as teacher, cohorts.name, COUNT(assistance_requests.teacher_id) as total_assistances
FROM teachers
JOIN assistance_requests on assistance_requests.teacher_id = teachers.id
JOIN students on students.id = assistance_requests.student_id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;