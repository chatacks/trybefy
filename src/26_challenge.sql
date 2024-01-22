SELECT
  artists.name 'Artista',
  COUNT(chatack.song_id) 'Quantidade de músicas reproduzidas'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
  INNER JOIN songs
    ON albums.id = songs.album_id
  INNER JOIN history_play_songs as chatack
    ON songs.id = chatack.song_id
GROUP BY artists.name
HAVING COUNT(chatack.song_id) > 10;