-- SQLite

--Drop Table erases content from tables.
DROP TABLE User;
DROP TABLE Subscription;
DROP TABLE Movies;
DROP TABLE Shows;
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
    u_name CHAR(50) NOT NULL,
    u_username CHAR(50) PRIMARY KEY,
    u_age INTEGER,
    u_plan CHAR(50) NOT NULL
);

-- CREATE TABLE Subscription (
--     sub_plan CHAR(50) NOT NULL,
--     sub_price FLOAT,
--     sub_maxviewers INTEGER,
--     sub_resolution CHAR(50) NOT NULL,
--     sub_username CHAR(50) PRIMARY KEY
-- );

-- Don't think we need username for subscrption
CREATE TABLE Subscription (
    sub_plan CHAR(50) NOT NULL,
    sub_price FLOAT,
    sub_maxviewers INTEGER,
    sub_resolution CHAR(50) NOT NULL
);

CREATE TABLE viewHistory (
    vh_username CHAR(50) PRIMARY KEY
    vh_movieid INTEGER,
    vh_showid INTEGER
);

-- CREATE TABLE Watchlist (
--     w_username CHAR(50) PRIMARY KEY
--     w_movieid INTEGER,
--     w_showid INTEGER
-- );

CREATE TABLE Movies (
    m_title CHAR(50) NOT NULL,
    --m_genre CHAR(50) NOT NULL,
    m_releaseDate DATE,
    m_studio CHAR(50) NOT NULL,
    --m_actor CHAR(50) NOT NULL, more than one actor will be needed
    m_director CHAR(50) NOT NULL,
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

CREATE TABLE Shows (
    s_title CHAR(50) NOT NULL,
    --s_genre CHAR(50) NOT NULL,
    s_releaseDate DATE,
    s_studio CHAR(50) NOT NULL,
    s_director CHAR(50) NOT NULL,
    s_showid INTEGER
);


-- CREATE TABLE Directors (
--     d_directorname CHAR(50) NOT NULL,
--     d_directorid INTEGER
-- );

CREATE TABLE Actors (
    a_actorname CHAR(50) NOT NULL,
    a_actorid INTEGER
);

-- CREATE TABLE Studios (
--     s_studio CHAR(50) NOT NULL,
--     s_address CHAR(50) NOT NULL
-- );

Create Table Watchlist (
    w_username CHAR(50) NOT NULL,
    w_movieid INTEGER,
    w_showid INTEGER
);

Create Table Genre (
    g_genreid INTEGER,
    g_name CHAR(50) NOT NULL
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

--INSERT INTO Movies VALUES('Title', ReleaseDate, Studio, director, movieid)
INSERT INTO Movies VALUES('Forrest Gump', '1996-07-06', 'Paramount', 'Robert Zemeckis', 1);
INSERT INTO Movies VALUES('Shrek 2', '2004-05-19', 'Dreamworks', 'Andrew Adamson', 2);
INSERT INTO Movies VALUES('Toy Story', '1995-11-19', 'Pixar', 'John Lasseter', 3);
INSERT INTO Movies VALUES('Star Wars: Episode III - Revenge of the Sith', '2005-05-19', 'Lucasfilm', 'George Lucas', 4);
INSERT INTO Movies VALUES('Toy Story 2', '1999-11-24', 'Pixar', 'John Lasseter', 5);

--INSERT INTO Shows VALUES('Title', 'ReleaseDate', 'Studio', 'Director', showid);
INSERT INTO Shows VALUES('Stranger Things', '2016-07-15', 'Netflix', 'Shawn Levy', 1);
INSERT INTO Shows VALUES('The Mandalorian', '2019-11-12', 'Lucasfilm', 'Dave Filoni', 2);
INSERT INTO Shows VALUES('The Book of Boba Fett', '2021-12-29', 'Lucasfilm', 'Jon Favreau', 3);
INSERT INTO Shows VALUES('Narcos: Mexico','2018-11-16', 'Netflix', 'Andi Baiz', 4);
INSERT INTO Shows VALUES('Narcos', '2015-08-28', 'Netflix', 'José Padilha', 5);





--INSERT INTO Actors VALUES(ActorName, Actorid)
INSERT INTO Actors VALUES('Tom Hanks', 1);--Forrest Gump
INSERT INTO Actors VALUES('Robert Wright', 2);
INSERT INTO Actors VALUES('Gary Sinise', 3);
INSERT INTO Actors VALUES('Mykelti Williamson', 4);
INSERT INTO Actors VALUES('Sally Field', 5);
INSERT INTO Actors VALUES('Mike Myers', 6);--Shrek 2
INSERT INTO Actors VALUES('Eddie Murphy', 7);
INSERT INTO Actors VALUES('Cameron Diaz', 8);
INSERT INTO Actors VALUES('Julie Andrews', 9);
INSERT INTO Actors VALUES('Antonio Banderas', 10);
INSERT INTO Actors VALUES('John Cleese', 11);
INSERT INTO Actors VALUES('Rupert Everett', 12);
INSERT INTO Actors VALUES('Jennifer Saunders', 13);
--INSERT INTO Actors VALUES('Tom Hanks', 1);--Toy Story
INSERT INTO Actors VALUES('Tim Allen', 14);
INSERT INTO Actors VALUES('Don Rickles', 15);
INSERT INTO Actors VALUES('Jim Varney', 16);
INSERT INTO Actors VALUES('Wallace Shawn', 17);
INSERT INTO Actors VALUES('John Ratzenberger', 18);
INSERT INTO Actors VALUES('Annie Potts', 19);
INSERT INTO Actors VALUES('John Morris', 20);
INSERT INTO Actors VALUES('Erik von Detten', 21);
INSERT INTO Actors VALUES('Ewan McGregor', 22);--Star Wars Episode 3
INSERT INTO Actors VALUES('Natalie Portman', 23);
INSERT INTO Actors VALUES('Hayden Christensen', 24);
INSERT INTO Actors VALUES('Ian McDiarmid', 25);
INSERT INTO Actors VALUES('Samuel L. Jackson', 26);
INSERT INTO Actors VALUES('Christopher Lee', 27);
INSERT INTO Actors VALUES('Anthony Daniels', 28);
INSERT INTO Actors VALUES('Kenny Baker', 29);
INSERT INTO Actors VALUES('Frank Oz', 30);
--INSERT INTO Actors VALUES('Tom Hanks', 1);--Toy Story 2
--INSERT INTO Actors VALUES('Tim Allen', 14);
INSERT INTO Actors VALUES('Winona Ryder', 31);--Stranger Things
INSERT INTO Actors VALUES('David Harbour', 32);
INSERT INTO Actors VALUES('Finn Wolfhard', 33);
INSERT INTO Actors VALUES('Millie Bobby Brown', 34);
INSERT INTO Actors VALUES('Gaten Matarazzo', 35);
INSERT INTO Actors VALUES('Caleb McLaughlin', 36);
INSERT INTO Actors VALUES('Natalia Dyer', 37);
INSERT INTO Actors VALUES('Charlie Heaton', 38);
INSERT INTO Actors VALUES('Cara Buono', 39);
INSERT INTO Actors VALUES('Matthew Modine', 40);
INSERT INTO Actors VALUES('Noah Schnapp', 41);
INSERT INTO Actors VALUES('Sadie Sink', 42);
INSERT INTO Actors VALUES('Joe Keery', 43);
INSERT INTO Actors VALUES('Dacre Montgomery', 44);
INSERT INTO Actors VALUES('Sean Astin', 45);
INSERT INTO Actors VALUES('Paul Reiser', 46);
INSERT INTO Actors VALUES('Maya Hawke', 47);
INSERT INTO Actors VALUES('Priah Ferguson', 48);
INSERT INTO Actors VALUES('Brett Gellam', 49);
INSERT INTO Actors VALUES('Pedro Pascal', 50);--The Mandalorian
INSERT INTO Actors VALUES('Carl Weathers', 51);
INSERT INTO Actors VALUES('Giancarlo Esposito', 52);
INSERT INTO Actors VALUES('Gina Carano', 53);
INSERT INTO Actors VALUES('Temuera Morrison', 54);
INSERT INTO Actors VALUES('Ming-Na Wen', 55);
INSERT INTO Actors VALUES('Emily Swallow', 56);
INSERT INTO Actors VALUES('Rosario Dawson', 57);
INSERT INTO Actors VALUES('Diego Luna', 58);--Narcos:Mexico
INSERT INTO Actors VALUES('Micheal Pena', 59);
INSERT INTO Actors VALUES('Teresa Ruiz', 60);
INSERT INTO Actors VALUES('Tencho Huerta', 61);
INSERT INTO Actors VALUES('Alejandro Eda', 62);
--INSERT INTO Actors VALUES('Pedro Pascal', 50);--Narcos
INSERT INTO Actors VALUES('Wagner Mora', 63);
INSERT INTO Actors VALUES('Boyd Holbrook', 64);
INSERT INTO Actors VALUES('Alberto Ammann', 65);
INSERT INTO Actors VALUES('Paulina Gaitán', 66);
INSERT INTO Actors VALUES('Damián Alcázar', 67);
INSERT INTO Actors VALUES('Francisco Denis', 68);









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

--INSERT INTO MovieActors VALUES(showeid, actorid)
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
INSERT INTO Watchlist VALUES('Kidy101', 2, NULL);
INSERT INTO Watchlist VALUES('Kidy101', NULL, 2);
INSERT INTO Watchlist VALUES('Kidy101', NULL, 3);
INSERT INTO Watchlist VALUES('Kidy101', 4, NULL);
INSERT INTO Watchlist VALUES('pumagod', 1, NULL);
INSERT INTO Watchlist VALUES('pumagod', 2, NULL);
INSERT INTO Watchlist VALUES('pumagod', 4, NULL);
INSERT INTO Watchlist VALUES('pumagod', NULL, 1);











--SQL Statements

--What Movies are comedies
Select m_title
From Movies, Genre, MovieGenres
Where m_movieid = mg_movieid
AND g_genreid = mg_genreid
AND mg_genreid = 3;

--What Shows are both Action and Sci-Fi
select s_title
from Shows, Genre, ShowGenres
where s_showid = sg_showid
and g_genreid = sg_showid
and sg_genreid = 1
INTERSECT
select s_title
from Shows, Genre, ShowGenres
where s_showid = sg_showid
and g_genreid = sg_showid
and sg_genreid = 11;


--What Actors are in Shrek 2
Select a_actorname
FROM Actors, MovieActors, Movies
WHERE a_actorid = ma_actorid
AND m_movieid = ma_movieid
AND m_movieid = 2;

--What movies does Tom Hanks star in
Select m_title
From Movies, Actors, MovieActors
WHERE a_actorid = ma_actorid
AND m_movieid = ma_movieid
AND a_actorname = 'Tom Hanks';

--What movies does Pedro Pascal star in
Select s_title
From Shows, Actors, ShowActors
WHERE a_actorid = sa_actorid
AND s_showid = sa_showid
AND a_actorname = 'Pedro Pascal';

--What shows has user 'Kidy101' added to their watchlist
Select s_title
From Shows, User, Watchlist
WHERE s_showid = w_showid
AND u_username = w_username
AND u_username = 'Kidy101';

--What Movies and Shows has user 'pumagod' added to their watchlist
Select m_title
From Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'pumagod'
UNION
Select s_title
From Shows, User, Watchlist
WHERE s_showid = w_showid
AND u_username = w_username
AND u_username = 'pumagod';

--What plan does user 'Hetrotan' have
Select u_plan
From User
Where u_username = 'Hetrotan';

--What does Hetrotans plan include

Select sub_plan, sub_price, sub_maxviewers, sub_resolution
From Subscription, User
Where u_plan = sub_plan
And u_username = 'Hetrotan';

--What shows have more than 7 actors?
SELECT DISTINCT s_title
FROM Shows, Actors, ShowActors
WHERE s_showid = sa_showid
AND sa_actorid = a_actorid
GROUP BY s_title
HAVING COUNT(sa_actorid) > 6;

--What movies has user 'pumagod' added to their watchlist that have been released before the year 2005?
SELECT m_title
FROM Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'pumagod'
AND m_releaseDate < '2005-01-01';

--What movies and shows have been released after the year 2000, have been added to Kidy101's watchlist, and have less than 9 actors?
SELECT m_title, s_title
FROM Movies, Shows, User, Watchlist, ShowActors, MovieActors
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'Kidy101'
AND m_releaseDate > '1999-12-12'
AND s_releaseDate > '1999-12-12'
GROUP BY m_title, s_title
HAVING COUNT(ma_actorid) <= 8 AND COUNT(sa_actorid) <= 8;

--How many movies are on both of the watchlists of users pumagod and Kidy101?
SELECT m_title
FROM Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'pumagod'
AND u_username = 'Kidy101';

--What movies are made by Pixar, are comedies, and feature Tom Hanks?
SELECT m_title
FROM Movies, Actors, MovieActors
WHERE m_movieid = ma_movieid
AND ma_actorid = a_actorid
AND a_actorname LIKE "%Tom Hanks"
AND m_