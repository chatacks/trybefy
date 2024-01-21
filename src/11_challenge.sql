SELECT 
  title 'Album',
  release_year 'Ano de lançamento',
  `name` 'Artista'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
WHERE title LIKE '%you%'
ORDER BY release_year;