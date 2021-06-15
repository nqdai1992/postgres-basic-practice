SELECT student.name, member.role, course.title
FROM student
JOIN member ON student.id = member.student_id
JOIN course ON course.id = member.course_id
ORDER BY course.title, member.role DESC, student.name; -- can order by muitlple attrs