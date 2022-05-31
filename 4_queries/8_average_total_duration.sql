SELECT AVG(total_duration) as  average_total_duration  FROM (SELECT SUM(completed_at - started_at) as total_duration
       FROM assistance_requests 
       JOIN students on students.id = assistance_requests.student_id
       JOIN cohorts on cohorts.id = students.cohort_id
       GROUP BY cohorts.name)  as t



