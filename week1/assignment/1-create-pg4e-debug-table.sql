-- What is auto grader?
CREATE TABLE pg4e_debug (
    id SERIAL,
    query VARCHAR(4096),
    result VARCHAR(4096),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);