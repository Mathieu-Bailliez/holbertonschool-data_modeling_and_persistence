SELECT courses.title, COUNT(registrations.student_id) AS registration_count
FROM courses
LEFT JOIN registrations ON registrations.course_id = courses.id
GROUP BY courses.id
ORDER BY registration_count DESC, courses.title;
