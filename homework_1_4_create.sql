CREATE TABLE IF NOT EXISTS collection (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    album_id INTEGER REFERENCES album(id),
    duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_track (
    id SERIAL PRIMARY KEY,
    collection_id INTEGER NOT NULL REFERENCES collection(id),
    track_id INTEGER NOT NULL REFERENCES track(id)
);


CREATE TABLE IF NOT EXISTS singer (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_album (
    id SERIAL PRIMARY KEY,
    singer_id INTEGER NOT NULL REFERENCES singer(id),
    album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_singer (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER NOT NULL REFERENCES genre(id),
    singer_id INTEGER NOT NULL REFERENCES singer(id)
);
