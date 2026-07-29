SELECT movie_id, title, rating
FROM Movies
WHERE genre = 'Drama' AND release_year >= 2020
ORDER BY rating DESC, release_year DESC
LIMIT 3;