-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/uQrzL8
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE scoreboard (
    id int   NOT NULL,
    gameID int   NOT NULL,
    userID int   NOT NULL,
    ranking int   NOT NULL,
    amountWon int   NOT NULL,
    CONSTRAINT pk_scoreboard PRIMARY KEY (
        id
     )
);

CREATE TABLE created_games (
    id int   NOT NULL,
    title varchar(200)   NOT NULL,
    hostID int   NOT NULL,
    cat1ID int   NOT NULL,
    cat2ID int   NOT NULL,
    cat3ID int   NOT NULL,
    cat4ID int   NOT NULL,
    cat5ID int   NOT NULL,
    cat6ID int   NOT NULL,
    CONSTRAINT pk_created_games PRIMARY KEY (
        id
     )
);

CREATE TABLE category1 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category1 PRIMARY KEY (
        id
     )
);

CREATE TABLE category2 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category2 PRIMARY KEY (
        id
     )
);

CREATE TABLE category3 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category3 PRIMARY KEY (
        id
     )
);

CREATE TABLE category4 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category4 PRIMARY KEY (
        id
     )
);

CREATE TABLE category5 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category5 PRIMARY KEY (
        id
     )
);

CREATE TABLE category6 (
    id int   NOT NULL,
    question1 varchar   NOT NULL,
    question2 varchar   NOT NULL,
    question3 varchar   NOT NULL,
    question4 varchar   NOT NULL,
    question5 varchar   NOT NULL,
    answer1 varchar   NOT NULL,
    answer2 varchar   NOT NULL,
    answer3 varchar   NOT NULL,
    answer4 varchar   NOT NULL,
    answer5 varchar   NOT NULL,
    CONSTRAINT pk_category6 PRIMARY KEY (
        id
     )
);

CREATE TABLE users (
    id int   NOT NULL,
    username varchar   NOT NULL,
    avatar varchar   NOT NULL,
    email varchar   NOT NULL,
    userPassword varchar   NOT NULL,
    ranking int   NOT NULL,
    amountWon int   NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (
        id
     )
);

CREATE TABLE host (
    id int   NOT NULL,
    username varchar   NOT NULL,
    avatar varchar   NOT NULL,
    email varchar   NOT NULL,
    hostPassword varchar   NOT NULL,
    CONSTRAINT pk_host PRIMARY KEY (
        id
     )
);

ALTER TABLE scoreboard ADD CONSTRAINT fk_scoreboard_gameID FOREIGN KEY(gameID)
REFERENCES created_games (id);

ALTER TABLE scoreboard ADD CONSTRAINT fk_scoreboard_userID FOREIGN KEY(userID)
REFERENCES users (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_hostID FOREIGN KEY(hostID)
REFERENCES host (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat1ID FOREIGN KEY(cat1ID)
REFERENCES category1 (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat2ID FOREIGN KEY(cat2ID)
REFERENCES category2 (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat3ID FOREIGN KEY(cat3ID)
REFERENCES category3 (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat4ID FOREIGN KEY(cat4ID)
REFERENCES category4 (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat5ID FOREIGN KEY(cat5ID)
REFERENCES category5 (id);

ALTER TABLE created_games ADD CONSTRAINT fk_created_games_cat6ID FOREIGN KEY(cat6ID)
REFERENCES category6 (id);

