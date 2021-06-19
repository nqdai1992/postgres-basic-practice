CREATE TABLE IF NOT EXISTS student (
    id SERIAL,
    name VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE course (
    id SERIAL,
    title VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roster (
    id SERIAL,
    student_id INTEGER REFERENCES student (id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES course (id) ON DELETE CASCADE,
    role INTEGER,
    UNIQUE (student_id, course_id),
    PRIMARY KEY (id)
);