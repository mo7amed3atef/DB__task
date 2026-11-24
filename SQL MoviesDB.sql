
-- Create Database
CREATE DATABASE MoviesDB;

USE MoviesDB


-- Create Schema
GO
CREATE SCHEMA MovieSchema;
GO

-- 1. Actor Table
CREATE TABLE MovieSchema.actor (
    act_id INT IDENTITY PRIMARY KEY,
    act_fname CHAR(20),
    act_lname CHAR(20),
    act_gender CHAR(1)
);

-- 2. Director Table
CREATE TABLE MovieSchema.director (
    dir_id INT IDENTITY PRIMARY KEY,
    dir_fname CHAR(20),
    dir_lname CHAR(20)
);

-- 3. Reviewer Table
CREATE TABLE MovieSchema.reviewer (
    rev_id INT IDENTITY PRIMARY KEY,
    rev_name CHAR(30)
);

-- 4. Genres Table
CREATE TABLE MovieSchema.genres (
    gen_id INT IDENTITY PRIMARY KEY,
    gen_title CHAR(20)
);

-- 5. Movie Table
CREATE TABLE MovieSchema.movie (
    mov_id INT IDENTITY PRIMARY KEY,
    mov_title CHAR(50),
    mov_year INT,
    mov_time INT,
    mov_lang CHAR(50),
    mov_dt_rel DATE,
    mov_rel_country CHAR(5)
);

-- 6. Movie Cast Table
CREATE TABLE MovieSchema.movie_cast (
    act_id INT,
    mov_id INT,
    role CHAR(30),

    PRIMARY KEY (act_id, mov_id),
    FOREIGN KEY (act_id) REFERENCES MovieSchema.actor(act_id),
    FOREIGN KEY (mov_id) REFERENCES MovieSchema.movie(mov_id)
);

-- 7. Movie Direction Table
CREATE TABLE MovieSchema.movie_direction (
    dir_id INT,
    mov_id INT,

    PRIMARY KEY (dir_id, mov_id),
    FOREIGN KEY (dir_id) REFERENCES MovieSchema.director(dir_id),
    FOREIGN KEY (mov_id) REFERENCES MovieSchema.movie(mov_id)
);

-- 8. Movie Genres Table
CREATE TABLE MovieSchema.movie_genres (
    mov_id INT,
    gen_id INT,

    PRIMARY KEY (mov_id, gen_id),
    FOREIGN KEY (mov_id) REFERENCES MovieSchema.movie(mov_id),
    FOREIGN KEY (gen_id) REFERENCES MovieSchema.genres(gen_id)
);

-- 9. Rating Table
CREATE TABLE MovieSchema.rating (
    mov_id INT,
    rev_id INT,
    rev_stars INT,
    num_o_ratings INT,

    PRIMARY KEY (mov_id, rev_id),
    FOREIGN KEY (mov_id) REFERENCES MovieSchema.movie(mov_id),
    FOREIGN KEY (rev_id) REFERENCES MovieSchema.reviewer(rev_id)
);
