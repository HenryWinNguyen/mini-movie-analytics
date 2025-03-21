-- 1. Top 3 highest-rated movies (with at least 2 reviews)
SELECT m.title, ROUND(AVG(r.rating), 2) AS avg_rating, COUNT(*) AS review_count
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.title
HAVING COUNT(*) >= 2
ORDER BY avg_rating DESC
LIMIT 3;

-- 2. Most watched movies
SELECT m.title, COUNT(*) AS total_views
FROM Movies m
JOIN WatchHistory w ON m.movie_id = w.movie_id
GROUP BY m.title
ORDER BY total_views DESC;

-- 3. Users who watched more than 1 movie
SELECT u.name, COUNT(*) AS movies_watched
FROM Users u
JOIN WatchHistory w ON u.user_id = w.user_id
GROUP BY u.name
HAVING COUNT(*) > 1;

-- 4. Average rating per genre
SELECT m.genre, ROUND(AVG(r.rating), 2) AS avg_rating
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.genre;

-- 5. Watch history for a specific user (example: Alice)
SELECT u.name, m.title, w.watch_date
FROM WatchHistory w
JOIN Users u ON w.user_id = u.user_id
JOIN Movies m ON w.movie_id = m.movie_id
WHERE u.name = 'Alice'
ORDER BY w.watch_date;
