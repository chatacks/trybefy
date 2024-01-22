SELECT
  artists.name 'Artista',
  COUNT(history_play_songs.song_id) 'Quantidade de músicas reproduzidas'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
  INNER JOIN songs
    ON albums.id = songs.album_id
  INNER JOIN history_play_songs
    ON songs.id = history_play_songs.song_id
GROUP BY artists.name
HAVING COUNT(history_play_songs.song_id) > 10;