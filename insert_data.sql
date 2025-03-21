-- Insert Users
INSERT INTO Users VALUES 
(1, 'Alice', 'alice@example.com', '2023-01-15'),
(2, 'Bob', 'bob@example.com', '2023-03-01'),
(3, 'Charlie', 'charlie@example.com', '2023-02-20'),
(4, 'Diana', 'diana@example.com', '2023-04-10'),
(5, 'Eve', 'eve@example.com', '2023-05-05');

-- Insert Movies
INSERT INTO Movies VALUES 
(1, 'Inception', 'Sci-Fi', 2010),
(2, 'The Matrix', 'Sci-Fi', 1999),
(3, 'Interstellar', 'Sci-Fi', 2014),
(4, 'The Godfather', 'Crime', 1972),
(5, 'Pulp Fiction', 'Crime', 1994),
(6, 'The Dark Knight', 'Action', 2008),
(7, 'Forrest Gump', 'Drama', 1994),
(8, 'Fight Club', 'Drama', 1999),
(9, 'The Social Network', 'Drama', 2010),
(10, 'Whiplash', 'Drama', 2014);

-- Insert Ratings
INSERT INTO Ratings VALUES
(1, 1, 1, 5, 'Mind-blowing movie!'),
(2, 2, 1, 4, 'Great concept.'),
(3, 3, 2, 5, 'A classic.'),
(4, 1, 4, 4, 'Loved the acting.'),
(5, 5, 5, 5, 'Stylish and clever.'),
(6, 4, 6, 5, 'Amazing performance.'),
(7, 2, 3, 5, 'Incredible visuals.'),
(8, 3, 8, 4, 'Dark and interesting.'),
(9, 4, 10, 5, 'Intense and emotional.');

-- Insert Watch History
INSERT INTO WatchHistory VALUES
(1, 1, 1, '2024-01-01'),
(2, 1, 4, '2024-01-03'),
(3, 2, 1, '2024-01-05'),
(4, 2, 3, '2024-01-06'),
(5, 3, 2, '2024-01-02'),
(6, 3, 8, '2024-01-07'),
(7, 4, 6, '2024-01-04'),
(8, 4, 10, '2024-01-08'),
(9, 5, 5, '2024-01-09');
