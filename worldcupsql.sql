-- WC_ALL MATCHES Only containts knockout stage game data and group stage game winner data of past world cups
SELECT * 
FROM wc_all_matches;

-- Want to find interesting trends. What stadium has the highest point differentials, most home losses, etc 

SELECT stage, team1, score1 + score2 AS goals, team2
FROM wc_all_matches
ORDER BY goals DESC;

SELECT 
	venue, 
	SUM(score1 + score2) AS total_goals, 
	AVG(score1 + score2) AS avg_goals, 
	COUNT(venue) AS stadiums
FROM wc_all_matches
GROUP BY venue
ORDER BY COUNT(venue) DESC;

-- THE most played stadiums with the most goals scored in the competetion

SELECT 
	year,
	SUM(score1 + score2) AS total_goals, 
	AVG(score1 + score2) AS avg_goals,
	COUNT(city) AS cities,
	COUNT(*) AS knockout_games
FROM wc_all_matches
GROUP BY year;

-- total and avg goals scored in each world cup year as well as number of cities played in

SELECT * FROM wc_all_matches
ORDER BY date;

--2026 wc teams

SELECT * FROM wc_2026_teams
ORDER BY fifa_rank;

SELECT
	"group",
	AVG(fifa_rank) as group_rating
FROM wc_2026_teams
GROUP BY "group"
ORDER BY group_rating DESC;

-- creat a group rating column 

SELECT team, fifa_rank, "group", group_rating, debut_2026
FROM wc_2026_teams AS t
INNER JOIN (
	SELECT
		"group" AS group_id,
		AVG(fifa_rank) as group_rating
	FROM wc_2026_teams
	GROUP BY "group"
) group_rating_table ON t."group" = group_rating_table.group_id
ORDER BY group_rating, fifa_rank;

	