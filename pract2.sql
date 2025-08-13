CREATE TABLE Coach
(
CoachID varchar(5) not null,
CoachFname varchar(30) not null,
CoachMname varchar(5),
CoachLname varchar(30) not null,
CONSTRAINT CoachPkey PRIMARY KEY(CoachID)
);

CREATE TABLE TEAM
(
TeamID varchar(5) not null,
TeamName varchar not null,
TeamCaptain varchar(30) not null,
CoachID varchar(5),
CONSTRAINT TeamPkey PRIMARY KEY(TeamID),
FOREIGN KEY (CoachID) REFERENCES Coach
);

-- to add comment
CREATE TABLE PLAYER 
(
playerID varchar(5) not null,
playerFname varchar(30) not null,
playerMname varchar(30),
playerLname varchar (30) not null,
playerPosition varchar(30) not null,
TeamID varchar(5) not null, 
CONSTRAINT playerPkey PRIMARY KEY (playerID),
FOREIGN KEY (TeamID) REFERENCES TEAM
);

-- to INSERT DATA IN table

INSERT INTO Coach
(
CoachID, CoachFname, CoachLname
)
VALUES
(
'C001','ZICO','SANTOS'
);
INSERT INTO Coach
(
CoachID, CoachFname, CoachLname
)
VALUES
(
'C002','pravesh','bale'
);
INSERT INTO Coach
(
CoachID, CoachFname, CoachLname
)
VALUES
(
'C003','Maria','Lopez'
);

INSERT INTO Coach
(
CoachID, CoachFname, CoachLname
)
VALUES
(
'C004','James','Anderson'
);

INSERT INTO Coach
(
CoachID, CoachFname, CoachLname
)
VALUES
(
'C005','Akira','Tanaka'
);

INSERT INTO TEAM
(
  TeamID, TeamName, TeamCaptain, CoachID
)
VALUES
(
  'T001', 'Tigers', 'Rahul Sharma', 'C001'
);

INSERT INTO TEAM
(
  TeamID, TeamName, TeamCaptain, CoachID
)
VALUES
(
  'T002', 'Warriors', 'Anita Desai', 'C002'
);

INSERT INTO TEAM
(
  TeamID, TeamName, TeamCaptain, CoachID
)
VALUES
(
  'T003', 'Spartans', 'Maria Lopez', 'C003'
);

INSERT INTO TEAM
(
  TeamID, TeamName, TeamCaptain, CoachID
)
VALUES
(
  'T004', 'Gladiators', 'James Anderson', 'C004'
);

INSERT INTO TEAM
(
  TeamID, TeamName, TeamCaptain, CoachID
)
VALUES
(
  'T005', 'Samurai', 'Akira Tanaka', 'C005'
);

INSERT INTO PLAYER
(
  playerID, playerFname, playerMname, playerLname, playerPosition, TeamID
)
VALUES
(
  'P001', 'Ravi', 'Kumar', 'Singh', 'Forward', 'T001'
);

INSERT INTO PLAYER
(
  playerID, playerFname, playerMname, playerLname, playerPosition, TeamID
)
VALUES
(
  'P002', 'Anita', NULL, 'Desai', 'Goalkeeper', 'T002'
);

INSERT INTO PLAYER
(
  playerID, playerFname, playerMname, playerLname, playerPosition, TeamID
)
VALUES
(
  'P003', 'Carlos', 'Miguel', 'Santos', 'Defender', 'T001'
);

INSERT INTO PLAYER
(
  playerID, playerFname, playerMname, playerLname, playerPosition, TeamID
)
VALUES
(
  'P004', 'Maria', NULL, 'Lopez', 'Midfielder', 'T003'
);

INSERT INTO PLAYER
(
  playerID, playerFname, playerMname, playerLname, playerPosition, TeamID
)
VALUES
(
  'P005', 'James', 'Robert', 'Anderson', 'Forward', 'T004'
);

-- projection 
SELECT*FROM coach;
SELECT*FROM TEAM;
SELECT*FROM  player;