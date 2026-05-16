CREATE VIEW rural AS
SELECT *
FROM census
WHERE district LIKE '%rural%';
