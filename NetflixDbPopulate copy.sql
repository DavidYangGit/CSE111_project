-- SQLite

--Drop Table erases content from tables.
DROP TABLE User;
DROP TABLE Subscription;
DROP TABLE movies;
DROP TABLE shows;
DROP TABLE viewHistory;
DROP TABLE Watchlist;
DROP TABLE Directors;
DROP TABLE actors;
DROP TABLE movieactors;
DROP TABLE showactors;
DROP TABLE Studios;
DROP TABLE genre;
DROP TABLE moviegenres;
DROP TABLE showgenres;

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

CREATE TABLE movieactors (
    ma_movieid INTEGER,
    ma_actorid INTEGER
);

CREATE TABLE showactors (
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

CREATE TABLE actors (
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

Create Table genre (
    g_genreid INTEGER,
    g_name VARCHAR NOT NULL
);

Create Table moviegenres (
    mg_genreid INTEGER,
    mg_movieid INTEGER
);

Create Table showgenres (
    sg_genreid INTEGER,
    sg_showid INTEGER
);

--Following Will Populate Tables

--INSERT INTO genres VALUES(genre id, 'genre name');
INSERT INTO genre VALUES(1, 1,'Action');
INSERT INTO genre VALUES(2, 2,'Adventure');
INSERT INTO genre VALUES(3, 3,'Comedy');
INSERT INTO genre VALUES(4, 4,'Crime');
INSERT INTO genre VALUES(5, 5,'Drama');
INSERT INTO genre VALUES(6, 6,'Family');
INSERT INTO genre VALUES(7, 7,'Fantasy');
INSERT INTO genre VALUES(8, 8,'Historical');
INSERT INTO genre VALUES(9, 9,'Horror');
INSERT INTO genre VALUES(10, 10,'Romance');
INSERT INTO genre VALUES(11, 11,'Sci-Fi');
INSERT INTO genre VALUES(12, 12,'Thriller');


--Insert Into moviegenres VALUES(genre id, movie id);
INSERT INTO moviegenres VALUES(1, 5, 1);--Forrest Gump
INSERT INTO moviegenres VALUES(2, 10, 1);
INSERT INTO moviegenres VALUES(3, 3, 2);--Shrek 2
INSERT INTO moviegenres VALUES(4, 7, 2);
INSERT INTO moviegenres VALUES(5, 3, 3);--Toy Story
INSERT INTO moviegenres VALUES(6, 6, 3);
INSERT INTO moviegenres VALUES(7, 1, 4);--Star Wars Episode 3
INSERT INTO moviegenres VALUES(8, 2, 4);
INSERT INTO moviegenres VALUES(9, 7, 4);
INSERT INTO moviegenres VALUES(10, 11, 4);
INSERT INTO moviegenres VALUES(11, 3, 5);--Toy Story 2
INSERT INTO moviegenres VALUES(12, 6, 5);

--Insert Into showgenres VALUES(genre id, movie id);
INSERT INTO showgenres VALUES(1, 11, 1);--Stranger Things
INSERT INTO showgenres VALUES(2, 12, 1);
INSERT INTO showgenres VALUES(3, 11, 2);--The Mandalorian
INSERT INTO showgenres VALUES(4, 1, 2);
INSERT INTO showgenres VALUES(5, 2, 2);
INSERT INTO showgenres VALUES(6, 11, 3);--The Book of Boba Fett
INSERT INTO showgenres VALUES(7, 1, 3);
INSERT INTO showgenres VALUES(8, 2, 3);
INSERT INTO showgenres VALUES(9, 4, 4);--Narcos: Mexico
INSERT INTO showgenres VALUES(10, 5, 4);
INSERT INTO showgenres VALUES(11, 4, 5);--Narcos
INSERT INTO showgenres VALUES(12, 5, 5);





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





--INSERT INTO actors VALUES(ActorName, Actorid)
INSERT INTO actors VALUES(1, 'Tom Hanks', 1);--Forrest Gump
INSERT INTO actors VALUES(2, 'Robert Wright', 2);
INSERT INTO actors VALUES(3, 'Gary Sinise', 3);
INSERT INTO actors VALUES(4, 'Mykelti Williamson', 4);
INSERT INTO actors VALUES(5, 'Sally Field', 5);
INSERT INTO actors VALUES(6, 'Mike Myers', 6);--Shrek 2
INSERT INTO actors VALUES(7, 'Eddie Murphy', 7);
INSERT INTO actors VALUES(8, 'Cameron Diaz', 8);
INSERT INTO actors VALUES(9, 'Julie Andrews', 9);
INSERT INTO actors VALUES(10, 'Antonio Banderas', 10);
INSERT INTO actors VALUES(11, 'John Cleese', 11);
INSERT INTO actors VALUES(12, 'Rupert Everett', 12);
INSERT INTO actors VALUES(13, 'Jennifer Saunders', 13);
--INSERT INTO actors VALUES('Tom Hanks', 1);--Toy Story
INSERT INTO actors VALUES(14, 'Tim Allen', 14);
INSERT INTO actors VALUES(15, 'Don Rickles', 15);
INSERT INTO actors VALUES(16, 'Jim Varney', 16);
INSERT INTO actors VALUES(17, 'Wallace Shawn', 17);
INSERT INTO actors VALUES(18, 'John Ratzenberger', 18);
INSERT INTO actors VALUES(19, 'Annie Potts', 19);
INSERT INTO actors VALUES(20, 'John Morris', 20);
INSERT INTO actors VALUES(21, 'Erik von Detten', 21);
INSERT INTO actors VALUES(22, 'Ewan McGregor', 22);--Star Wars Episode 3
INSERT INTO actors VALUES(23, 'Natalie Portman', 23);
INSERT INTO actors VALUES(24, 'Hayden Christensen', 24);
INSERT INTO actors VALUES(25, 'Ian McDiarmid', 25);
INSERT INTO actors VALUES(26, 'Samuel L. Jackson', 26);
INSERT INTO actors VALUES(27, 'Christopher Lee', 27);
INSERT INTO actors VALUES(28, 'Anthony Daniels', 28);
INSERT INTO actors VALUES(29, 'Kenny Baker', 29);
INSERT INTO actors VALUES(30, 'Frank Oz', 30);
--INSERT INTO actors VALUES('Tom Hanks', 1);--Toy Story 2
--INSERT INTO actors VALUES('Tim Allen', 14);
INSERT INTO actors VALUES(31, 'Winona Ryder', 31);--Stranger Things
INSERT INTO actors VALUES(32, 'David Harbour', 32);
INSERT INTO actors VALUES(33, 'Finn Wolfhard', 33);
INSERT INTO actors VALUES(34, 'Millie Bobby Brown', 34);
INSERT INTO actors VALUES(35, 'Gaten Matarazzo', 35);
INSERT INTO actors VALUES(36, 'Caleb McLaughlin', 36);
INSERT INTO actors VALUES(37, 'Natalia Dyer', 37);
INSERT INTO actors VALUES(38, 'Charlie Heaton', 38);
INSERT INTO actors VALUES(39, 'Cara Buono', 39);
INSERT INTO actors VALUES(40, 'Matthew Modine', 40);
INSERT INTO actors VALUES(41, 'Noah Schnapp', 41);
INSERT INTO actors VALUES(42, 'Sadie Sink', 42);
INSERT INTO actors VALUES(43, 'Joe Keery', 43);
INSERT INTO actors VALUES(44, 'Dacre Montgomery', 44);
INSERT INTO actors VALUES(45, 'Sean Astin', 45);
INSERT INTO actors VALUES(46, 'Paul Reiser', 46);
INSERT INTO actors VALUES(47, 'Maya Hawke', 47);
INSERT INTO actors VALUES(48, 'Priah Ferguson', 48);
INSERT INTO actors VALUES(49, 'Brett Gellam', 49);
INSERT INTO actors VALUES(50, 'Pedro Pascal', 50);--The Mandalorian
INSERT INTO actors VALUES(51, 'Carl Weathers', 51);
INSERT INTO actors VALUES(52, 'Giancarlo Esposito', 52);
INSERT INTO actors VALUES(53, 'Gina Carano', 53);
INSERT INTO actors VALUES(54, 'Temuera Morrison', 54);
INSERT INTO actors VALUES(55, 'Ming-Na Wen', 55);
INSERT INTO actors VALUES(56, 'Emily Swallow', 56);
INSERT INTO actors VALUES(57, 'Rosario Dawson', 57);
INSERT INTO actors VALUES(58, 'Diego Luna', 58);--Narcos:Mexico
INSERT INTO actors VALUES(59, 'Micheal Pena', 59);
INSERT INTO actors VALUES(60, 'Teresa Ruiz', 60);
INSERT INTO actors VALUES(61, 'Tencho Huerta', 61);
INSERT INTO actors VALUES(62, 'Alejandro Eda', 62);
--INSERT INTO actors VALUES('Pedro Pascal', 50);--Narcos
INSERT INTO actors VALUES(63, 'Wagner Mora', 63);
INSERT INTO actors VALUES(64, 'Boyd Holbrook', 64);
INSERT INTO actors VALUES(65, 'Alberto Ammann', 65);
INSERT INTO actors VALUES(66, 'Paulina Gaitán', 66);
INSERT INTO actors VALUES(67, 'Damián Alcázar', 67);
INSERT INTO actors VALUES(68, 'Francisco Denis', 68);









--INSERT INTO movieactors VALUES(movieid, actorid)
INSERT INTO movieactors VALUES(1, 1, 1);--Forrest Gump
INSERT INTO movieactors VALUES(2, 1, 2);
INSERT INTO movieactors VALUES(3, 1, 3);
INSERT INTO movieactors VALUES(4, 1, 4);
INSERT INTO movieactors VALUES(5, 1, 5);
INSERT INTO movieactors VALUES(6, 2, 6);--Shrek 2
INSERT INTO movieactors VALUES(7, 2, 7);
INSERT INTO movieactors VALUES(8, 2, 8);
INSERT INTO movieactors VALUES(9, 2, 9);
INSERT INTO movieactors VALUES(10, 2, 10);
INSERT INTO movieactors VALUES(11, 2, 11);
INSERT INTO movieactors VALUES(12, 2, 12);
INSERT INTO movieactors VALUES(13, 2, 13);
INSERT INTO movieactors VALUES(14, 3, 1);--Toy Story
INSERT INTO movieactors VALUES(15, 3, 14);
INSERT INTO movieactors VALUES(16, 3, 15);
INSERT INTO movieactors VALUES(17, 3, 16);
INSERT INTO movieactors VALUES(18, 3, 17);
INSERT INTO movieactors VALUES(19, 3, 18);
INSERT INTO movieactors VALUES(20, 3, 19);
INSERT INTO movieactors VALUES(21, 3, 20);
INSERT INTO movieactors VALUES(22, 3, 21);
INSERT INTO movieactors VALUES(23, 4, 22);--Star Wars Episode 3
INSERT INTO movieactors VALUES(24, 4, 23);
INSERT INTO movieactors VALUES(25, 4, 24);
INSERT INTO movieactors VALUES(26, 4, 25);
INSERT INTO movieactors VALUES(27, 4, 26);
INSERT INTO movieactors VALUES(28, 4, 27);
INSERT INTO movieactors VALUES(29, 4, 28);
INSERT INTO movieactors VALUES(30, 4, 29);
INSERT INTO movieactors VALUES(31, 4, 30);
INSERT INTO movieactors VALUES(32, 5, 1);--Toy Story 2
INSERT INTO movieactors VALUES(33, 5, 14);

--INSERT INTO movieactors VALUES(showid, actorid)
INSERT INTO showactors VALUES(1, 1, 31);--Stranger Things
INSERT INTO showactors VALUES(2 1, 32);
INSERT INTO showactors VALUES(3, 1, 33);
INSERT INTO showactors VALUES(4, 1, 34);
INSERT INTO showactors VALUES(5, 1, 35);
INSERT INTO showactors VALUES(6, 1, 36);
INSERT INTO showactors VALUES(7, 1, 37);
INSERT INTO showactors VALUES(8, 1, 38);
INSERT INTO showactors VALUES(9, 1, 39);
INSERT INTO showactors VALUES(10, 1, 40);
INSERT INTO showactors VALUES(11, 1, 41);
INSERT INTO showactors VALUES(12, 1, 42);
INSERT INTO showactors VALUES(13, 1, 43);
INSERT INTO showactors VALUES(14, 1, 44);
INSERT INTO showactors VALUES(15, 1, 45);
INSERT INTO showactors VALUES(16, 1, 46);
INSERT INTO showactors VALUES(17, 1, 47);
INSERT INTO showactors VALUES(18, 1, 48);
INSERT INTO showactors VALUES(19, 1, 49);
INSERT INTO showactors VALUES(20, 2, 50);--The Mandalorian
INSERT INTO showactors VALUES(21, 2, 51);
INSERT INTO showactors VALUES(22, 2, 52);
INSERT INTO showactors VALUES(23, 2, 53);
INSERT INTO showactors VALUES(24, 2, 54);
INSERT INTO showactors VALUES(25, 2, 55);
INSERT INTO showactors VALUES(26, 2, 56);
INSERT INTO showactors VALUES(27, 2, 57);
INSERT INTO showactors VALUES(28, 3, 50);--The Book of Boba Fett
INSERT INTO showactors VALUES(29, 3, 54);
INSERT INTO showactors VALUES(30, 3, 55);
INSERT INTO showactors VALUES(31, 4, 58);--Narcos:Mexico
INSERT INTO showactors VALUES(32, 4, 59);
INSERT INTO showactors VALUES(33, 4, 60);
INSERT INTO showactors VALUES(34, 4, 61);
INSERT INTO showactors VALUES(35, 4, 62);
INSERT INTO showactors VALUES(36, 5, 50);--Narcos
INSERT INTO showactors VALUES(37, 5, 63);
INSERT INTO showactors VALUES(38, 5, 64);
INSERT INTO showactors VALUES(39, 5, 65);
INSERT INTO showactors VALUES(40, 5, 66);
INSERT INTO showactors VALUES(41, 5, 67);
INSERT INTO showactors VALUES(42, 5, 68);

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