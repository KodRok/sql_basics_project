CREATE TABLE basics_sql_project.tutors (
    tutor_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(255)
);
CREATE TABLE basics_sql_project.students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(255),
    tutor_id INT REFERENCES basics_sql_project.tutors(tutor_id) ON DELETE SET NULL
);
CREATE TABLE basics_sql_project.lessons (
    lesson_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL
);
CREATE TABLE basics_sql_project.lessons_list (
    student_id INT REFERENCES basics_sql_project.students(student_id) ON DELETE CASCADE,
    lesson_id INT REFERENCES basics_sql_project.lessons(lesson_id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, lesson_id)
);