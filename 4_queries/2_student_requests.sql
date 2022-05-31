SELECT COUNT(student_id) as total_assistances,name
FROM assistance_requests
JOIN students on students.id = student_id
WHERE students.name ='Elliot Dickinson'
GROUP BY name;