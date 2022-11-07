-- SQLite

DROP TABLE User;
DROP TABLE Subscription;
DROP TABLE Movies;
DROP TABLE Shows;
DROP TABLE viewHistory;
DROP TABLE Watchlist;
DROP TABLE Directors;
DROP TABLE Actors;
DROP TABLE Studios;

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
    sub_resolution CHAR(50) NOT NULL,
);

CREATE TABLE viewHistory (
    vh_username CHAR(50) PRIMARY KEY
    vh_movieid INTEGER,
    vh_showid INTEGER
);

CREATE TABLE Watchlist (
    w_username CHAR(50) PRIMARY KEY
    w_movieid INTEGER,
    w_showid INTEGER
);

CREATE TABLE Movies (
    m_title CHAR(50) NOT NULL,
    m_genre CHAR(50) NOT NULL,
    m_releaseDate DATE,
    m_studio CHAR(50) NOT NULL,
    m_actor CHAR(50) NOT NULL,
    m_director CHAR(50) NOT NULL,
    m_movieid INTEGER
);

CREATE TABLE Shows (
    s_title CHAR(50) NOT NULL,
    s_genre CHAR(50) NOT NULL,
    s_releaseDate DATE,
    s_studio CHAR(50) NOT NULL,
    s_actor CHAR(50) NOT NULL,
    s_director CHAR(50) NOT NULL,
    s_movieid INTEGER
);

CREATE TABLE Directors (
    d_director CHAR(50) NOT NULL,
    d_age INTEGER
);

CREATE TABLE Directors (
    d_director CHAR(50) NOT NULL,
    d_age INTEGER
);

CREATE TABLE Actors (
    a_actor CHAR(50) NOT NULL,
    a_age INTEGER
);

CREATE TABLE Studios (
    s_studio CHAR(50) NOT NULL,
    s_address CHAR(50) NOT NULL
);

--Following Will Populate Tables
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

INSERT INTO Subscription VALUES('Basic', 9.99, 1, 'HD');
INSERT INTO Subscription VALUES('Standard', 15.49, 2, 'Full HD');
INSERT INTO Subscription VALUES('Premium', 19.99, 4, 'Ultra HD');





