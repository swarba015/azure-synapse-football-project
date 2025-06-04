

CREATE SCHEMA EnglandSoccer;

-- Create View Table for Players
CREATE VIEW EnglandSoccer.Players AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://engsocstorage.dfs.core.windows.net/transformed/transformed_players',
    FORMAT = 'PARQUET'
) AS Players;


-- Create View Table for Matches
CREATE VIEW EnglandSoccer.Matches AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://engsocstorage.dfs.core.windows.net/transformed/transformed_match',
    FORMAT = 'PARQUET'
) AS Matches;

