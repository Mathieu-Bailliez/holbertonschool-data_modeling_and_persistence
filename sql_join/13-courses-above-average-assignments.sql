SELECT courses.title
FROM courses
JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(assignments.id) > (SELECT COUNT(*) * 1.0 FROM assignments) / (SELECT COUNT(*) FROM courses)
ORDER BY courses.title;
