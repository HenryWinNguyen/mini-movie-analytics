-- Drop existing tables for clean re-creation
DROP TABLE IF EXISTS WatchHistory;
DROP TABLE IF EXISTS Ratings;
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Users;

-- Users table
CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    signup_date DATE NOT NULL
);

-- Movies table
CREATE TABLE Movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    release_year INTEGER CHECK (release_year >= 1900 AND release_year <= 2025)
);

-- Ratings table
CREATE TABLE Ratings (
    rating_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    movie_id INTEGER,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    review_text TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

-- Watch History table
CREATE TABLE WatchHistory (
    watch_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    movie_id INTEGER,
    watch_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
