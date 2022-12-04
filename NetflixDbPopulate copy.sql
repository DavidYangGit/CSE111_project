-- SQLite

--Drop Table erases content from tables.
DROP TABLE User;
DROP TABLE Subscription;
DROP TABLE movies;
DROP TABLE shows;
DROP TABLE viewHistory;
DROP TABLE Watchlist;
DROP TABLE Directors;
DROP TABLE Actors;
DROP TABLE MovieActors;
DROP TABLE ShowActors;
DROP TABLE Studios;
DROP TABLE Genre;
DROP TABLE MovieGenres;
DROP TABLE ShowGenres;

--Following Creates Tables
CREATE TABLE User (
    id INTEGER,
    email VARCHAR NOT NULL,
    u_username VARCHAR PRIMARY KEY,
    u_age INTEGER,
    u_plan VARCHAR NOT NULL
);

-- CREATE TABLE Subscription (
--     sub_plan VARCHAR NOT NULL,
--     sub_price FLOAT,
--     sub_maxviewers INTEGER,
--     sub_resolution VARCHAR NOT NULL,
--     sub_username VARCHAR PRIMARY KEY
-- );

-- Don't think we need username for subscrption
CREATE TABLE Subscription (
    sub_plan VARCHAR NOT NULL,
    sub_price FLOAT,
    sub_maxviewers INTEGER,
    sub_resolution VARCHAR NOT NULL
);

CREATE TABLE viewHistory (
    vh_username VARCHAR PRIMARY KEY
    vh_movieid INTEGER,
    vh_showid INTEGER
);

-- CREATE TABLE Watchlist (
--     id INTEGER PRIMARY KEY,
--     w_email VARCHAR,
--     w_movieid INTEGER,
--     w_showid INTEGER
-- );

CREATE TABLE movies (
    m_title VARCHAR NOT NULL,
    --m_genre VARCHAR NOT NULL,
    m_releaseDate DATE,
    m_studio VARCHAR NOT NULL,
    --m_actor VARCHAR NOT NULL, more than one actor will be needed
    m_director VARCHAR NOT NULL,
    m_movieid INTEGER
);

CREATE TABLE MovieActors (
    ma_movieid INTEGER,
    ma_actorid INTEGER
);

CREATE TABLE ShowActors (
    sa_showid INTEGER,
    sa_actorid INTEGER
);

CREATE TABLE shows (
    s_title VARCHAR NOT NULL,
    --s_genre VARCHAR NOT NULL,
    s_releaseDate DATE,
    s_studio VARCHAR NOT NULL,
    s_director VARCHAR NOT NULL,
    s_showid INTEGER
);


-- CREATE TABLE Directors (
--     d_directorname VARCHAR NOT NULL,
--     d_directorid INTEGER
-- );

CREATE TABLE Actors (
    a_actorname VARCHAR NOT NULL,
    a_actorid INTEGER
);

-- CREATE TABLE Studios (
--     s_studio VARCHAR NOT NULL,
--     s_address VARCHAR NOT NULL
-- );

Create Table Watchlist (
    w_username VARCHAR NOT NULL,
    w_movieid INTEGER,
    w_showid INTEGER
);

Create Table Genre (
    g_genreid INTEGER,
    g_name VARCHAR NOT NULL
);

Create Table MovieGenres (
    mg_genreid INTEGER,
    mg_movieid INTEGER
);

Create Table ShowGenres (
    sg_genreid INTEGER,
    sg_showid INTEGER
);

--Following Will Populate Tables

--INSERT INTO Genres VALUES(genre id, 'genre name');
INSERT INTO Genre VALUES(1,'Action');
INSERT INTO Genre VALUES(2,'Adventure');
INSERT INTO Genre VALUES(3,'Comedy');
INSERT INTO Genre VALUES(4,'Crime');
INSERT INTO Genre VALUES(5,'Drama');
INSERT INTO Genre VALUES(6,'Family');
INSERT INTO Genre VALUES(7,'Fantasy');
INSERT INTO Genre VALUES(8,'Historical');
INSERT INTO Genre VALUES(9,'Horror');
INSERT INTO Genre VALUES(10,'Romance');
INSERT INTO Genre VALUES(11,'Sci-Fi');
INSERT INTO Genre VALUES(12,'Thriller');


--Insert Into MovieGenres VALUES(genre id, movie id);
INSERT INTO MovieGenres VALUES(5, 1);--Forrest Gump
INSERT INTO MovieGenres VALUES(10, 1);
INSERT INTO MovieGenres VALUES(3, 2);--Shrek 2
INSERT INTO MovieGenres VALUES(7, 2);
INSERT INTO MovieGenres VALUES(3, 3);--Toy Story
INSERT INTO MovieGenres VALUES(6, 3);
INSERT INTO MovieGenres VALUES(1, 4);--Star Wars Episode 3
INSERT INTO MovieGenres VALUES(2, 4);
INSERT INTO MovieGenres VALUES(7, 4);
INSERT INTO MovieGenres VALUES(11, 4);
INSERT INTO MovieGenres VALUES(3, 5);--Toy Story 2
INSERT INTO MovieGenres VALUES(6, 5);

--Insert Into ShowGenres VALUES(genre id, movie id);
INSERT INTO ShowGenres VALUES(11,1);--Stranger Things
INSERT INTO ShowGenres VALUES(12,1);
INSERT INTO ShowGenres VALUES(11,2);--The Mandalorian
INSERT INTO ShowGenres VALUES(1,2);
INSERT INTO ShowGenres VALUES(2,2);
INSERT INTO ShowGenres VALUES(11,3);--The Book of Boba Fett
INSERT INTO ShowGenres VALUES(1,3);
INSERT INTO ShowGenres VALUES(2,3);
INSERT INTO ShowGenres VALUES(4,4);--Narcos: Mexico
INSERT INTO ShowGenres VALUES(5,4);
INSERT INTO ShowGenres VALUES(4,5);--Narcos
INSERT INTO ShowGenres VALUES(5,5);





--INSERT INTO User VALUES('Name', 'Username', Age, 'Plan');
INSERT INTO User VALUES('Omar', 'Kidy101', 24, 'Premium');
INSERT INTO User VALUES('David', 'DYang', 24, 'Premium');
INSERT INTO User VALUES('Jose', 'pumagod', 23, 'Standard');
INSERT INTO User VALUES('Taylor', 'Hetrotan', 23, 'Standard');
INSERT INTO User VALUES('Omar', 'ohhmar', 23, 'Premium');
INSERT INTO User VALUES('Erick', 'Rocketbummy', 22, 'Premium');
INSERT INTO User VALUES('Damian', 'savagecat', 23, 'Basic');
INSERT INTO User VALUES('Margret', 'marg711', 66, 'Basic');
INSERT INTO User VALUES('Samantha', 'Sammy7', 33, 'Premium');
INSERT INTO User VALUES('Esmerelda', 'Esme101', 24, 'Premium');

INSERT INTO Subscription VALUES('Basic With Ads', 6.99, 1, 'HD');
INSERT INTO Subscription VALUES('Basic', 9.99, 1, 'HD');
INSERT INTO Subscription VALUES('Standard', 15.49, 2, 'Full HD');
INSERT INTO Subscription VALUES('Premium', 19.99, 4, 'Ultra HD');

--INSERT INTO movies VALUES(primary key, 'Title', ReleaseDate, Studio, director, movieid)
INSERT INTO movies VALUES(1,'Forrest Gump', '1996-07-06', 'Paramount', 'Robert Zemeckis', 1);
INSERT INTO movies VALUES(2,'Shrek 2', '2004-05-19', 'Dreamworks', 'Andrew Adamson', 2);
INSERT INTO movies VALUES(3,'Toy Story', '1995-11-19', 'Pixar', 'John Lasseter', 3);
INSERT INTO movies VALUES(4,'Star Wars: Episode III - Revenge of the Sith', '2005-05-19', 'Lucasfilm', 'George Lucas', 4);
INSERT INTO movies VALUES(5,'Toy Story 2', '1999-11-24', 'Pixar', 'John Lasseter', 5);

--INSERT INTO shows VALUES(primary key, 'Title', 'ReleaseDate', 'Studio', 'Director', showid);
INSERT INTO shows VALUES(1, 'Stranger Things', '2016-07-15', 'Netflix', 'Shawn Levy', 1);
INSERT INTO shows VALUES(2, 'The Mandalorian', '2019-11-12', 'Lucasfilm', 'Dave Filoni', 2);
INSERT INTO shows VALUES(3, 'The Book of Boba Fett', '2021-12-29', 'Lucasfilm', 'Jon Favreau', 3);
INSERT INTO shows VALUES(4, 'Narcos: Mexico','2018-11-16', 'Netflix', 'Andi Baiz', 4);
INSERT INTO shows VALUES(5, 'Narcos', '2015-08-28', 'Netflix', 'José Padilha', 5);





--INSERT INTO Actors VALUES(ActorName, Actorid)
INSERT INTO Actors VALUES(1, 'Tom Hanks', 1);--Forrest Gump
INSERT INTO Actors VALUES(2, 'Robert Wright', 2);
INSERT INTO Actors VALUES(3, 'Gary Sinise', 3);
INSERT INTO Actors VALUES(4, 'Mykelti Williamson', 4);
INSERT INTO Actors VALUES(5, 'Sally Field', 5);
INSERT INTO Actors VALUES(6, 'Mike Myers', 6);--Shrek 2
INSERT INTO Actors VALUES(7, 'Eddie Murphy', 7);
INSERT INTO Actors VALUES(8, 'Cameron Diaz', 8);
INSERT INTO Actors VALUES(9, 'Julie Andrews', 9);
INSERT INTO Actors VALUES(10, 'Antonio Banderas', 10);
INSERT INTO Actors VALUES(11, 'John Cleese', 11);
INSERT INTO Actors VALUES(12, 'Rupert Everett', 12);
INSERT INTO Actors VALUES(13, 'Jennifer Saunders', 13);
--INSERT INTO Actors VALUES('Tom Hanks', 1);--Toy Story
INSERT INTO Actors VALUES(14, 'Tim Allen', 14);
INSERT INTO Actors VALUES(15, 'Don Rickles', 15);
INSERT INTO Actors VALUES(16, 'Jim Varney', 16);
INSERT INTO Actors VALUES(17, 'Wallace Shawn', 17);
INSERT INTO Actors VALUES(18, 'John Ratzenberger', 18);
INSERT INTO Actors VALUES(19, 'Annie Potts', 19);
INSERT INTO Actors VALUES(20, 'John Morris', 20);
INSERT INTO Actors VALUES(21, 'Erik von Detten', 21);
INSERT INTO Actors VALUES(22, 'Ewan McGregor', 22);--Star Wars Episode 3
INSERT INTO Actors VALUES(23, 'Natalie Portman', 23);
INSERT INTO Actors VALUES(24, 'Hayden Christensen', 24);
INSERT INTO Actors VALUES(25, 'Ian McDiarmid', 25);
INSERT INTO Actors VALUES(26, 'Samuel L. Jackson', 26);
INSERT INTO Actors VALUES(27, 'Christopher Lee', 27);
INSERT INTO Actors VALUES(28, 'Anthony Daniels', 28);
INSERT INTO Actors VALUES(29, 'Kenny Baker', 29);
INSERT INTO Actors VALUES(30, 'Frank Oz', 30);
--INSERT INTO Actors VALUES('Tom Hanks', 1);--Toy Story 2
--INSERT INTO Actors VALUES('Tim Allen', 14);
INSERT INTO Actors VALUES(31, 'Winona Ryder', 31);--Stranger Things
INSERT INTO Actors VALUES(32, 'David Harbour', 32);
INSERT INTO Actors VALUES(33, 'Finn Wolfhard', 33);
INSERT INTO Actors VALUES(34, 'Millie Bobby Brown', 34);
INSERT INTO Actors VALUES(35, 'Gaten Matarazzo', 35);
INSERT INTO Actors VALUES(36, 'Caleb McLaughlin', 36);
INSERT INTO Actors VALUES(37, 'Natalia Dyer', 37);
INSERT INTO Actors VALUES(38, 'Charlie Heaton', 38);
INSERT INTO Actors VALUES(39, 'Cara Buono', 39);
INSERT INTO Actors VALUES(40, 'Matthew Modine', 40);
INSERT INTO Actors VALUES(41, 'Noah Schnapp', 41);
INSERT INTO Actors VALUES(42, 'Sadie Sink', 42);
INSERT INTO Actors VALUES(43, 'Joe Keery', 43);
INSERT INTO Actors VALUES(44, 'Dacre Montgomery', 44);
INSERT INTO Actors VALUES(45, 'Sean Astin', 45);
INSERT INTO Actors VALUES(46, 'Paul Reiser', 46);
INSERT INTO Actors VALUES(47, 'Maya Hawke', 47);
INSERT INTO Actors VALUES(48, 'Priah Ferguson', 48);
INSERT INTO Actors VALUES(49, 'Brett Gellam', 49);
INSERT INTO Actors VALUES(50, 'Pedro Pascal', 50);--The Mandalorian
INSERT INTO Actors VALUES(51, 'Carl Weathers', 51);
INSERT INTO Actors VALUES(52, 'Giancarlo Esposito', 52);
INSERT INTO Actors VALUES(53, 'Gina Carano', 53);
INSERT INTO Actors VALUES(54, 'Temuera Morrison', 54);
INSERT INTO Actors VALUES(55, 'Ming-Na Wen', 55);
INSERT INTO Actors VALUES(56, 'Emily Swallow', 56);
INSERT INTO Actors VALUES(57, 'Rosario Dawson', 57);
INSERT INTO Actors VALUES(58, 'Diego Luna', 58);--Narcos:Mexico
INSERT INTO Actors VALUES(59, 'Micheal Pena', 59);
INSERT INTO Actors VALUES(60, 'Teresa Ruiz', 60);
INSERT INTO Actors VALUES(61, 'Tencho Huerta', 61);
INSERT INTO Actors VALUES(62, 'Alejandro Eda', 62);
--INSERT INTO Actors VALUES('Pedro Pascal', 50);--Narcos
INSERT INTO Actors VALUES(63, 'Wagner Mora', 63);
INSERT INTO Actors VALUES(64, 'Boyd Holbrook', 64);
INSERT INTO Actors VALUES(65, 'Alberto Ammann', 65);
INSERT INTO Actors VALUES(66, 'Paulina Gaitán', 66);
INSERT INTO Actors VALUES(67, 'Damián Alcázar', 67);
INSERT INTO Actors VALUES(68, 'Francisco Denis', 68);









--INSERT INTO MovieActors VALUES(movieid, actorid)
INSERT INTO MovieActors VALUES(1, 1);--Forrest Gump
INSERT INTO MovieActors VALUES(1, 2);
INSERT INTO MovieActors VALUES(1, 3);
INSERT INTO MovieActors VALUES(1, 4);
INSERT INTO MovieActors VALUES(1, 5);
INSERT INTO MovieActors VALUES(2, 6);--Shrek 2
INSERT INTO MovieActors VALUES(2, 7);
INSERT INTO MovieActors VALUES(2, 8);
INSERT INTO MovieActors VALUES(2, 9);
INSERT INTO MovieActors VALUES(2, 10);
INSERT INTO MovieActors VALUES(2, 11);
INSERT INTO MovieActors VALUES(2, 12);
INSERT INTO MovieActors VALUES(2, 13);
INSERT INTO MovieActors VALUES(3, 1);--Toy Story
INSERT INTO MovieActors VALUES(3, 14);
INSERT INTO MovieActors VALUES(3, 15);
INSERT INTO MovieActors VALUES(3, 16);
INSERT INTO MovieActors VALUES(3, 17);
INSERT INTO MovieActors VALUES(3, 18);
INSERT INTO MovieActors VALUES(3, 19);
INSERT INTO MovieActors VALUES(3, 20);
INSERT INTO MovieActors VALUES(3, 21);
INSERT INTO MovieActors VALUES(4, 22);--Star Wars Episode 3
INSERT INTO MovieActors VALUES(4, 23);
INSERT INTO MovieActors VALUES(4, 24);
INSERT INTO MovieActors VALUES(4, 25);
INSERT INTO MovieActors VALUES(4, 26);
INSERT INTO MovieActors VALUES(4, 27);
INSERT INTO MovieActors VALUES(4, 28);
INSERT INTO MovieActors VALUES(4, 29);
INSERT INTO MovieActors VALUES(4, 30);
INSERT INTO MovieActors VALUES(5, 1);--Toy Story 2
INSERT INTO MovieActors VALUES(5, 14);

--INSERT INTO MovieActors VALUES(showid, actorid)
INSERT INTO ShowActors VALUES(1, 31);--Stranger Things
INSERT INTO ShowActors VALUES(1, 32);
INSERT INTO ShowActors VALUES(1, 33);
INSERT INTO ShowActors VALUES(1, 34);
INSERT INTO ShowActors VALUES(1, 35);
INSERT INTO ShowActors VALUES(1, 36);
INSERT INTO ShowActors VALUES(1, 37);
INSERT INTO ShowActors VALUES(1, 38);
INSERT INTO ShowActors VALUES(1, 39);
INSERT INTO ShowActors VALUES(1, 40);
INSERT INTO ShowActors VALUES(1, 41);
INSERT INTO ShowActors VALUES(1, 42);
INSERT INTO ShowActors VALUES(1, 43);
INSERT INTO ShowActors VALUES(1, 44);
INSERT INTO ShowActors VALUES(1, 45);
INSERT INTO ShowActors VALUES(1, 46);
INSERT INTO ShowActors VALUES(1, 47);
INSERT INTO ShowActors VALUES(1, 48);
INSERT INTO ShowActors VALUES(1, 49);
INSERT INTO ShowActors VALUES(2, 50);--The Mandalorian
INSERT INTO ShowActors VALUES(2, 51);
INSERT INTO ShowActors VALUES(2, 52);
INSERT INTO ShowActors VALUES(2, 53);
INSERT INTO ShowActors VALUES(2, 54);
INSERT INTO ShowActors VALUES(2, 55);
INSERT INTO ShowActors VALUES(2, 56);
INSERT INTO ShowActors VALUES(2, 57);
INSERT INTO ShowActors VALUES(3, 50);--The Book of Boba Fett
INSERT INTO ShowActors VALUES(3, 54);
INSERT INTO ShowActors VALUES(3, 55);
INSERT INTO ShowActors VALUES(4, 58);--Narcos:Mexico
INSERT INTO ShowActors VALUES(4, 59);
INSERT INTO ShowActors VALUES(4, 60);
INSERT INTO ShowActors VALUES(4, 61);
INSERT INTO ShowActors VALUES(4, 62);
INSERT INTO ShowActors VALUES(5, 50);--Narcos
INSERT INTO ShowActors VALUES(5, 63);
INSERT INTO ShowActors VALUES(5, 64);
INSERT INTO ShowActors VALUES(5, 65);
INSERT INTO ShowActors VALUES(5, 66);
INSERT INTO ShowActors VALUES(5, 67);
INSERT INTO ShowActors VALUES(5, 68);

--INSERT INTO Watchlist VALUES('username', movieid, showid);
--INSERT INTO Watchlist VALUES('email', movieid, showid);

INSERT INTO Watchlist VALUES('Kidy101', 2, NULL);
INSERT INTO Watchlist VALUES('Kidy101', NULL, 2);
INSERT INTO Watchlist VALUES('Kidy101', NULL, 3);
INSERT INTO Watchlist VALUES('Kidy101', 4, NULL);
INSERT INTO Watchlist VALUES('pumagod', 1, NULL);
INSERT INTO Watchlist VALUES('pumagod', 2, NULL);
INSERT INTO Watchlist VALUES('pumagod', 4, NULL);
INSERT INTO Watchlist VALUES('pumagod', NULL, 1);