SELECT 
  artists.name 'Artista',
  albums.title 'Álbum',
  songs.title 'Música'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
  INNER JOIN songs
    ON albums.id = songs.album_id
WHERE artists.name NOT LIKE '%The Beatles%'
ORDER BY artists.name, albums.title, songs.title;