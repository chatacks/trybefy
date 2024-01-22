SELECT 
  artists.name 'Artista',
  COUNT(songs.title) 'Quantidade de músicas'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
  INNER JOIN songs
    ON albums.id = songs.album_id
GROUP BY artists.name
ORDER BY COUNT(songs.title) DESC, artists.name
LIMIT 3;