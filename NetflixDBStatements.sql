--SQL Statements

--1. What Movies are comedies
Select m_title
From Movies, Genre, MovieGenres
Where m_movieid = mg_movieid
AND g_genreid = mg_genreid
AND mg_genreid = 3;

--2. What Shows are both Action and Sci-Fi
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


--3. What Actors are in Shrek 2
Select a_actorname
FROM Actors, MovieActors, Movies
WHERE a_actorid = ma_actorid
AND m_movieid = ma_movieid
AND m_movieid = 2;

--4. What movies does Tom Hanks star in
Select m_title
From Movies, Actors, MovieActors
WHERE a_actorid = ma_actorid
AND m_movieid = ma_movieid
AND a_actorname = 'Tom Hanks';

--5. What movies does Pedro Pascal star in
Select s_title
From Shows, Actors, ShowActors
WHERE a_actorid = sa_actorid
AND s_showid = sa_showid
AND a_actorname = 'Pedro Pascal';

--6. What shows has user 'Kidy101' added to their watchlist
Select s_title
From Shows, User, Watchlist
WHERE s_showid = w_showid
AND u_username = w_username
AND u_username = 'Kidy101';

--7. What Movies and Shows has user 'pumagod' added to their watchlist
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

--8. What does Hetrotans plan include

Select sub_plan, sub_price, sub_maxviewers, sub_resolution
From Subscription, User
Where u_plan = sub_plan
And u_username = 'Hetrotan';

--9. What shows have more than 7 actors?
SELECT DISTINCT s_title
FROM Shows, Actors, ShowActors
WHERE s_showid = sa_showid
AND sa_actorid = a_actorid
GROUP BY s_title
HAVING COUNT(sa_actorid) > 6;

--10. What movies has user 'pumagod' added to their watchlist that have been released before the year 2005?
SELECT m_title
FROM Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'pumagod'
AND m_releaseDate < '2005-01-01';

--11. What movies and shows have been released after the year 2000, have been added to Kidy101's watchlist, and have less than 9 actors?
SELECT m_title
FROM Movies, User, MovieActors, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'Kidy101'
AND m_releaseDate > '1999-12-12'
GROUP BY m_title
HAVING COUNT(ma_actorid) <= 8
UNION
SELECT s_title
FROM Shows, User, ShowActors, Watchlist
WHERE s_showid = w_showid
AND u_username = w_username
AND u_username = 'Kidy101'
AND s_releaseDate > '1999-12-12'
GROUP BY s_title
HAVING COUNT(sa_actorid) <= 8;


--12. How many movies are on both of the watchlists of users pumagod and Kidy101?
SELECT m_title
FROM Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'pumagod'
INTERSECT
SELECT m_title
FROM Movies, User, Watchlist
WHERE m_movieid = w_movieid
AND u_username = w_username
AND u_username = 'Kidy101';

--13. What movies are made by Pixar, are comedies, and feature Tom Hanks?
SELECT m_title
FROM Movies, Actors, MovieActors, MovieGenres, Genre
WHERE m_movieid = ma_movieid
AND mg_movieid = m_movieid
AND ma_movieid = mg_movieid
AND mg_genreid = g_genreid
AND ma_actorid = a_actorid
AND a_actorname LIKE '%Tom Hanks'
AND g_name LIKE '%Comedy'
AND m_studio LIKE '%Pixar';

--14. What is the subscription resolution for every user?
SELECT u_username, sub_resolution
FROM Subscription, User
WHERE u_plan = sub_plan;

--15. What user(s) have a standard subscription plan and have a sci-fi show in their watchlist?
SELECT u_username
FROM User, Shows, ShowGenres, Subscription
WHERE u_plan = sub_plan
AND sub_plan = 'Standard'
AND s_showid = sg_showid
AND sg_genreid = g_genreid
AND g_name = 'Sci-Fi';

--16. What other actors besides Tom Hanks have been in movies directed by John Lasseter?
SELECT a_actorname
FROM Movies, MovieActors, Actors
WHERE m_movieid = ma_movieid
AND ma_actorid = a_actorid
AND m_director = 'John Lasseter'
EXCEPT
SELECT a_actorname
FROM Movies, MovieActors, Actors
WHERE m_movieid = ma_movieid
AND ma_actorid = a_actorid
AND m_director = 'John Lasseter'
AND a_actorname = 'Tom Hanks';

--17. How many shows are produced by Lucasfilm?
SELECT COUNT(*)
FROM (
	SELECT s_title
	FROM Shows
	WHERE s_studio = 'Lucasfilm');

--18. What movies are on more than one user's watchlist?
SELECT m_title
FROM Movies, Watchlist
WHERE m_movieid = w_movieid
GROUP BY m_title
HAVING COUNT(w_movieid) > 1;  

--Detete user 'savagecat' because he deactivated his account
DELETE FROM User
WHERE u_username = 'savagecat';

--Delete From user 'pumagod's Watchlist 
DELETE FROM Watchlist
WHERE w_username = 'pumagod'
AND w_movieid = 4;

--Delete Show from list of shows

DELETE FROM Shows
WHERE s_title = 'Narcos: Mexico'
OR s_showid = 4;

--Delete ShowActors tuples for Narcos:Mexico because we deleted the show
DELETE FROM ShowActors
WHERE sa_showid = 4;

--Update user pumagod's age because its his birthday
UPDATE User SET u_age = u_age+1
WHERE u_username = 'pumagod';

--Update user 'Hetrotan's plan to Premium because he upgraded from standard
UPDATE User SET u_plan = 'Premium'
WHERE u_username = 'Hetrotan';

--Insert new registered user 
INSERT INTO User Values('Yulissa', 'Yuly54',18,'Basic With Ads');

--New User Yulissa adds movie to watchlist
INSERT INTO Watchlist VALUES('Yuly54', 5, NULL);

--Inserting new movie into the table
INSERT INTO Movies VALUES('Despicable Me', '2010-07-09', 'Universal Pictures', 'Chris Renaud', 6);

--Inserting actors from Despicable that don't already exist in database
INSERT INTO Actors VALUES('Steve Carell', 69);
INSERT INTO Actors VALUES('Jason Segel', 70);
INSERT INTO Actors VALUES('Russell Brand', 71);
INSERT INTO Actors VALUES('Miranda Cosgrove', 72);
INSERT INTO Actors VALUES('Kristen Wiig', 73);
INSERT INTO Actors VALUES('Will Arnett', 74);
--INSERT INTO Actors VALUES('Julie Andrews', 9);This actor alredy exists so no need to add to Database again

--Associated Actors in Database with Despicable Me movie

INSERT INTO MovieActors VALUES(6,69);--Ex. Associating actor id 69 = Steve Carell with movie id 6 = Despicable Me
INSERT INTO MovieActors VALUES (6,70);
INSERT INTO MovieActors VALUES (6,71);
INSERT INTO MovieActors VALUES (6,72);
INSERT INTO MovieActors VALUES (6,73);
INSERT INTO MovieActors VALUES (6,74);
INSERT INTO MovieActors VALUES (6,9);