SELECT
  `name` 'Artista',
  COUNT(artist_id) 'Quantidade de álbuns'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
GROUP BY `name`
ORDER BY COUNT(artist_id) DESC, `name` ASC;
