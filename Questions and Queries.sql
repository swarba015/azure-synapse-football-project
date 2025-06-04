-- Average attendance for games where total goals > average total goals
SELECT 
    attendance,
    total_goal_count
FROM 
    EnglandSoccer.Matches
WHERE 
    total_goal_count > (
        SELECT AVG(total_goal_count)
        FROM EnglandSoccer.Matches
    );


-- Question: Which referee officiated the most matches, and what is the average total number of fouls in those matches?
SELECT TOP 5
    referee,
    COUNT(*) AS Number_Matches,
    AVG(home_team_fouls + away_team_fouls) AS Average_Total_Fouls
FROM 
    EnglandSoccer.Matches
GROUP BY 
    referee
ORDER BY 
    Number_Matches DESC;



-- Question 3: For each player position, calculate the average goals scored and assists made.
-- Identify which position has the highest goal-to-assist ratio.
SELECT 
    position,
    AVG(goals) AS AverageGoal,
    AVG(assists) AS AverageAssist,
    AVG(goals) / NULLIF(AVG(assists), 0) AS Ratio
FROM 
    EnglandSoccer.Players
GROUP BY 
    position
ORDER BY 
    Ratio DESC;


-- Question 4: Compare the average goals scored, corner counts, and possession percentages 
-- for home teams versus away teams.

SELECT 
    'Home' AS Team_Type,
    AVG(home_team_goal_count) AS Average_Goal,
    AVG(home_team_corner_count) AS Average_Corner,
    AVG(home_team_possession) AS Average_Possession
FROM 
    EnglandSoccer.Matches

UNION

SELECT 
    'Away' AS Team_Type,
    AVG(away_team_goal_count) AS Average_Goal,
    AVG(away_team_corner_count) AS Average_Corner,
    AVG(away_team_possession) AS Average_Possession
FROM 
    EnglandSoccer.Matches;
