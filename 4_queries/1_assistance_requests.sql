SELECT COUNT(teacher_id) as total_assistances,name
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
WHERE teachers.name ='Waylon Boehm'
GROUP BY name;