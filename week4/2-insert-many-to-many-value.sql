INSERT INTO student (name, email) 
VALUES 
    ('Jane', 'jane@example.com'),
    ('Ed', 'ed@example.com'),
    ('Sue', 'sue@example.com');

INSERT INTO course (title)
VALUES 
    ('Python'),
    ('PHP'),
    ('SQL');

INSERT INTO member (student_id, course_id, role)
VALUES 
    (1, 1, 1),
    (2, 1, 0),
    (3, 1, 0),
    (1, 2, 0),
    (2, 2, 1),
    (2, 3, 1),
    (3, 3, 0);
