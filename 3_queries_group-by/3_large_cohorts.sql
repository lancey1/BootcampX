SELECT cohorts.name, COUNT(students.name) as student_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.name) >=18
ORDER BY student_count;

