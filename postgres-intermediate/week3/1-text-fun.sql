CREATE TABLE textfun (
    content TEXT
);

CREATE INDEX textfun_b ON textfun (content);

SELECT pg_relation_size('textfun'), pg_indexes_size('textfun');