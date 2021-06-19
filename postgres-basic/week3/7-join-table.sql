SELECT album.title, artist.name 
FROM album JOIN artist
ON album.artist_id = artist.id;


SELECT album.title, artist.name 
FROM album INNER JOIN artist
ON album.artist_id = artist.id;