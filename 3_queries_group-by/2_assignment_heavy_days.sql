SELECT day, COUNT(name) as assignments_per_day
FROM assignments
GROUP BY day
HAVING COUNT(name) >=10
ORDER BY day ASC;

