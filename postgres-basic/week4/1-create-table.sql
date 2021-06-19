CREATE TABLE student (
    id SERIAL,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE course (
    id SERIAL,
    title VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE member (
    student_id INTEGER REFERENCES student(id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES course(id) ON DELETE CASCADE,
    role INTEGER,
    PRIMARY KEY (student_id, course_id)
);