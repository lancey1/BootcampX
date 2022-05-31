SELECT assignments.id, name, day,chapter, COUNT(assistance_requests.assignment_id) as total_request
FROM assignments
JOIN assistance_requests on assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_request DESC;
