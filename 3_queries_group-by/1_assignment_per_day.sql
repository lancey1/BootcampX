SELECT day, COUNT(name) as assignments_per_day
FROM assignments
GROUP BY day
ORDER BY day ASC;

