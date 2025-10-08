INSERT INTO basics_sql_project.tutors (name, email, phone) VALUES
('Куратор 1', 'tutor1@email.ru', '+1'),
('Куратор 2', 'tutor2@email.ru', '+2'),
('Куратор 3', 'tutor3@email.ru', '+3'),
('Куратор 4', 'tutor4@email.ru', '+4'),
('Куратор 5', 'tutor5@email.ru', '+5');

INSERT INTO basics_sql_project.students (name, email, phone, tutor_id) VALUES
('Первый Ученик', 'first.student@email.ru', '+1111111111', 1),
('Второй Ученик', 'second.student@email.ru', '+2222222222', 1),
('Третий Ученик', 'third.student@email.ru', '+3333333333', 2),
('Четвертый Ученик', 'fourth.student@email.ru', '+4444444444', 3),
('Пятый Ученик', 'fifth.student@email.ru', '+5555555555', 4),
('Шестой Ученик', 'sixth.student@email.ru', '+6666666666', 4);

INSERT INTO basics_sql_project.lessons (name, category) VALUES
('Введение', 'Онбординг'),
('Основы Java', 'Basics'),
('Многопотное программирование', 'Java Core'),
('Основы SQL', 'Базы данных'),
('Spring', 'Основной курс');

INSERT INTO basics_sql_project.lessons_list (student_id, lesson_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1);