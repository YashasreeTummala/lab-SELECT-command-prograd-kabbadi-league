--Write a query to display the team details. Display the records sorting them in the order of team name.
SELECT * FROM TEAM1
ORDER BY NAME;

--Write a query to display the player details whose name starts with a letter S and who do not belong to the country 'South Africa'. 
--Display the records sorted in descending order based on player name.
SELECT * FROM PLAYER1
WHERE NAME LIKE 'S%' 
AND
COUNTRY NOT IN ('South Africa')
ORDER BY NAME DESC;

--Write a query to display the event number and the seconds taken for each event. 
--Display the records sorted in ascending order based on event number.
SELECT EVENT_NO, CLOCK_IN_SECONDS FROM EVENT1
ORDER BY EVENT_NO;

--Write a query to display the event numbers of those events which has the sum of raid points and defending points greater than or equal to 3. 
--Display the records sorted in ascending order based on event_no.
SELECT EVENT_NO FROM event1
WHERE RAIDER_POINTS + DEFENDING_POINTS >= 3
ORDER BY EVENT_NO ASC;

--Write a query to display the names of all the players who belong to the country India or Iran. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1
WHERE COUNTRY IN ('India', 'Iran')
ORDER BY NAME ASC;

--Write a query to display the names of all the players who do not belong to the country India and Iran. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1
WHERE COUNTRY NOT IN ('India', 'Iran')
ORDER BY NAME ASC;

--Write a query to display the names of all the skills that start with Defend. 
--Display the records sorted in ascending order based on skill name.
SELECT NAME FROM SKILL1
WHERE NAME LIKE 'Defend%'
ORDER BY NAME ASC;

--Write a query to display all the stadium names that end with Complex. 
--Display the records sorted in ascending order based on stadium names.
SELECT STADIUM_NAME FROM venue1
WHERE STADIUM_NAME LIKE '%Complex'
ORDER BY STADIUM_NAME ASC;

--Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. 
--Display the records sorted in descending order based on outcome id.
SELECT WINNER_TEAM_ID, SCORE FROM OUTCOME1
WHERE SCORE < 35
ORDER BY ID DESC;

--Write a query to display the game details of those games that were played between January and March of 2020. 
--Display the records sorted in descending order based on id.
SELECT * FROM GAME1
WHERE GAME_DATE BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD') AND TO_DATE('2020-03-01', 'YYYY-MM-DD')
ORDER BY ID DESC;

--Write a query to display the names of players who are Raiders. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1
WHERE SKILL_ID > 1
ORDER BY NAME ASC;

--Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on 2020-01-26. 
--Display the records sorted in ascending order based on event number.
SELECT EVENT_NO, RAIDER_POINTS, DEFENDING_POINTS FROM EVENT1, GAME1
WHERE EVENT1.INNINGS_ID = 1 AND game1.game_date = TO_DATE('2020-01-26', 'YYYY-MM-DD')
ORDER BY EVENT_NO ASC;

--Write a query to display the name of the winner team in the game played on 2020-03-09. 
--Display the records sorted in ascending order based on team name.
SELECT NAME FROM TEAM1, OUTCOME1, GAME1
WHERE OUTCOME1.WINNER_TEAM_ID = TEAM1.ID AND game1.game_date = TO_DATE('2020-03-09', 'YYYY-MM-DD')
ORDER BY team1.name ASC;

--Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1, OUTCOME1, GAME1
WHERE OUTCOME1.PLAYER_OF_MATCH = PLAYER1.ID AND game1.game_date = TO_DATE('2020-03-09', 'YYYY-MM-DD')
ORDER BY PLAYER1.NAME ASC;

--Write a query to display the names of players who are All rounders. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1
WHERE SKILL_ID = 2
ORDER BY PLAYER1.NAME ASC;

--Write a query to display the venue names for all the games that were played on 2020-03-09. 
--Display the records sorted in ascending order based on venue name.
SELECT STADIUM_NAME FROM VENUE1, GAME1
WHERE GAME1.VENUE_ID = VENUE1.ID AND GAME1.GAME_DATE = TO_DATE('2020-03-09', 'YYYY-MM-DD')
ORDER BY VENUE1.STADIUM_NAME ASC;

--Write a query to display the Coach's name of the team Iran
SELECT COACH FROM TEAM1
WHERE NAME IN ('Iran');

--Write a query to display the event number and the defence points of Fazel Atrachali in each event. 
--Display the records sorted in ascending order based on event number.
SELECT EVENT_NO, RAIDER_POINTS FROM EVENT1, PLAYER1
WHERE EVENT1.RAIDER_NO = PLAYER1.ID AND PLAYER1.NAME = 'Fazel Atrachali'
ORDER BY EVENT1.EVENT_NO ASC;

--Write a query to display the names of the Winning teams in the month of March 2020. 
--Display the records sorted in ascending order based on team name.
SELECT NAME FROM TEAM1, OUTCOME1, GAME1
WHERE OUTCOME1.WINNER_TEAM_ID = TEAM1.ID AND GAME1.GAME_DATE BETWEEN TO_DATE('2020-03-01', 'YYYY-MM-DD') AND TO_DATE('2020-03-31', 'YYYY-MM-DD')
ORDER BY TEAM1.NAME ASC;

--Write a query to display the names of players who won the player of the match in the games held in March 2020. 
--Display the records sorted in ascending order based on player name.
SELECT NAME FROM PLAYER1, OUTCOME1, GAME1
WHERE OUTCOME1.PLAYER_OF_MATCH = PLAYER1.ID AND GAME1.GAME_DATE BETWEEN TO_DATE('2020-03-01', 'YYYY-MM-DD') AND TO_DATE('2020-03-31', 'YYYY-MM-DD')
ORDER BY PLAYER1.NAME ASC;