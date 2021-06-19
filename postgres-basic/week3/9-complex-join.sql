SELECT track.title, artist.name, album.title, genre.name
FROM track
    JOIN genre ON track.genre_id = genre.id
    JOIN album ON track.album_id = album.id
    JOIN artist ON album.artist_id = artist.id;