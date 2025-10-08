--SELECT
SELECT * FROM basics_sql_project.students;
SELECT * FROM basics_sql_project.tutors;
SELECT * FROM basics_sql_project.lessons;

----(WHERE+ORDER BY)
SELECT student_id, name, email
FROM basics_sql_project.students
WHERE email LIKE '%@email.ru'
ORDER BY name ASC;

SELECT lesson_id, name, category
FROM basics_sql_project.lessons
WHERE category = 'Java Core'
ORDER BY name DESC;

----GROUP BY
SELECT
    tutor_id,
    COUNT(student_id) AS student_count
FROM basics_sql_project.students
GROUP BY tutor_id;

SELECT
    lesson_id,
    COUNT(student_id) AS total_students
FROM basics_sql_project.lessons_list
GROUP BY lesson_id;

----JOIN
SELECT
    s.name AS student_name,
    t.name AS tutor_name,
    t.email AS tutor_email
FROM basics_sql_project.students s
JOIN basics_sql_project.tutors t ON s.tutor_id = t.tutor_id;

SELECT
    s.name AS student_name,
    l.name AS lesson_name,
    l.category
FROM basics_sql_project.lessons_list ll
JOIN basics_sql_project.students s ON ll.student_id = s.student_id
JOIN basics_sql_project.lessons l ON ll.lesson_id = l.lesson_id
ORDER BY s.name, l.name;

SELECT
    t.name AS tutor_name,
    COUNT(s.student_id) AS student_count
FROM basics_sql_project.students s
JOIN basics_sql_project.tutors t ON s.tutor_id = t.tutor_id
GROUP BY t.name
ORDER BY student_count DESC;

SELECT
    l.name AS lesson_name,
    COUNT(ll.student_id) AS total_students
FROM basics_sql_project.lessons_list ll
JOIN basics_sql_project.lessons l ON ll.lesson_id = l.lesson_id
GROUP BY l.name
ORDER BY total_students DESC;

--UPDATE
UPDATE basics_sql_project.tutors
SET name = 'Обновленный Куратор1'
WHERE tutor_id = 1;

UPDATE basics_sql_project.lessons
SET category = 'Больше нет Онбординг'
WHERE name = 'Введение';

--DELETE
DELETE FROM basics_sql_project.students
WHERE student_id = 1;

DELETE FROM basics_sql_project.tutors
WHERE tutor_id = 2;