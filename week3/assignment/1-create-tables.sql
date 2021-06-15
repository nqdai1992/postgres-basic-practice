CREATE TABLE make (
    id SERIAL,
    name VARCHAR(128) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE model (
    id SERIAL,
    name VARCHAR(128) UNIQUE,
    make_id INTEGER REFERENCES make (id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);