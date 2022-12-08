CREATE TABLE "Scoreboard" (
    "gameID" int   NOT NULL,
    "userID" int   NOT NULL,
    "ranking" int   NOT NULL,
    "amountWon" int   NOT NULL
);

CREATE TABLE "Created_Games" (
    "gameID" int   NOT NULL,
    "title" varchar(200)   NOT NULL,
    "hostID" int   NOT NULL,
    "cat1ID" int   NOT NULL,
    "cat2ID" int   NOT NULL,
    "cat3ID" int   NOT NULL,
    "cat4ID" int   NOT NULL,
    "cat5ID" int   NOT NULL,
    "cat6ID" int   NOT NULL
);

CREATE TABLE "Category1" (
    "cat1ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "Category2" (
    "cat2ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "Category3" (
    "cat3ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "Category4" (
    "cat4ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "Category5" (
    "cat5ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "Category6" (
    "cat6ID" int   NOT NULL,
    "question1" varchar   NOT NULL,
    "question2" varchar   NOT NULL,
    "question3" varchar   NOT NULL,
    "question4" varchar   NOT NULL,
    "question5" varchar   NOT NULL,
    "answer1" varchar   NOT NULL,
    "answer2" varchar   NOT NULL,
    "answer3" varchar   NOT NULL,
    "answer4" varchar   NOT NULL,
    "answer5" varchar   NOT NULL
);

CREATE TABLE "User" (
    "userID" int   NOT NULL,
    "username" varchar   NOT NULL,
    "avatar" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    "password" varchar   NOT NULL,
    "ranking" int   NOT NULL,
    "amountWon" int   NOT NULL
);

CREATE TABLE "Host" (
    "hostID" int   NOT NULL,
    "username" varchar   NOT NULL,
    "avatar" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    "password" varchar   NOT NULL
);

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_gameID" FOREIGN KEY("gameID")
REFERENCES "Scoreboard" ("gameID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat1ID" FOREIGN KEY("cat1ID")
REFERENCES "Category1" ("cat1ID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat2ID" FOREIGN KEY("cat2ID")
REFERENCES "Category2" ("cat2ID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat3ID" FOREIGN KEY("cat3ID")
REFERENCES "Category3" ("cat3ID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat4ID" FOREIGN KEY("cat4ID")
REFERENCES "Category4" ("cat4ID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat5ID" FOREIGN KEY("cat5ID")
REFERENCES "Category5" ("cat5ID");

ALTER TABLE "Created_Games" ADD CONSTRAINT "fk_Created_Games_cat6ID" FOREIGN KEY("cat6ID")
REFERENCES "Category6" ("cat6ID");

ALTER TABLE "User" ADD CONSTRAINT "fk_User_userID_ranking_amountWon" FOREIGN KEY("userID", "ranking", "amountWon")
REFERENCES "Scoreboard" ("userID", "ranking", "amountWon");

ALTER TABLE "Host" ADD CONSTRAINT "fk_Host_hostID" FOREIGN KEY("hostID")
REFERENCES "Created_Games" ("hostID");