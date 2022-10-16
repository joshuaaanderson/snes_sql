-- Questions to ask your information
-- what was the min/max year of production

SELECT MIN(YEAR),
	MAX(YEAR)
FROM ALL_SNES_TITLES 


--How does the data look for production?
--Can you put this in a chart?
SELECT COUNT(*),
	YEAR
FROM ALL_SNES_TITLES
GROUP BY YEAR
ORDER BY 2 

-- who were the top ten producers? What kind of games were they?
-- what are the top games on today's game platform? How do they compare?
SELECT COUNT(*) TOTALGAMESPUBLISHED,
	PUBLISHER
FROM ALL_SNES_TITLES
GROUP BY PUBLISHER
ORDER BY 1 

-- who were the top ten developers, what did they produce?
-- how many rows returned?
SELECT COUNT(*) TOTALGAMESDEVELOPED,
	DEVELOPER
FROM ALL_SNES_TITLES
GROUP BY DEVELOPER
ORDER BY 1 

-- did any developers work for multiple publishers?
SELECT PUBLISHER,
	DEVELOPER
FROM ALL_SNES_TITLES
GROUP BY PUBLISHER,
	DEVELOPER
ORDER BY 1 

-- other questions to research
-- what are the top 10 games?
-- what are the other game platforms?
-- what are their top 10 games?
-- what genre's do the games fall into?
