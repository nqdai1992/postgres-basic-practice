CREATE TABLE pg4e_result (
    id SERIAL,
    link_id INTEGER UNIQUE,
    score FLOAT,
    title VARCHAR(4096),
    note VARCHAR(4096),
    debug_log VARCHAR(8192),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);