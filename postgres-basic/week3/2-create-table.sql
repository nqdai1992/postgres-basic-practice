CREATE TABLE artist (
    id SERIAL,
    name VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE album (
    id SERIAL,
    title VARCHAR(128) UNIQUE NOT NULL,
    artist_id INTEGER REFERENCES artist(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE genre (
    id SERIAL,
    name VARCHAR(128) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE track (
    id SERIAL,
    title VARCHAR(128) NOT NULL,
    len INTEGER,
    rating INTEGER,
    count INTEGER,
    album_id INTEGER REFERENCES album(id) ON DELETE CASCADE, -- some options for ON DELETE are SET NULL or nothing
    genre_id INTEGER REFERENCES genre(id) ON DELETE CASCADE, -- some options for ON DELETE are SET NULL or nothing
    UNIQUE(title, album_id),
    PRIMARY KEY (id)
);