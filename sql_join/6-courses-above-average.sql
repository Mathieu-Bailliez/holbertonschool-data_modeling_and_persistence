SELECT courses.title AS course_title
FROM courses
JOIN enrollments ON enrollments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(enrollments.student_id) > (
    SELECT COUNT(*) * 1.0 / COUNT(DISTINCT course_id)
    FROM enrollments
)
ORDER BY course_title;
