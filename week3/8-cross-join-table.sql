SELECT track.title, track.genre_id, genre.id, genre.name, track
FROM track CROSS JOIN genre;