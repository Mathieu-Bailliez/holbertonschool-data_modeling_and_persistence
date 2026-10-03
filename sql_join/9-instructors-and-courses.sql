SELECT instructors.name, courses.title
FROM instructors
LEFT JOIN courses ON courses.instructor_id = instructors.id
ORDER BY instructors.name, courses.title;
