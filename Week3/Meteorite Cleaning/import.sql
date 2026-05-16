-- =========================
-- 1. Create temporary raw table
-- =========================
DROP TABLE IF EXISTS raw_meteorites;

CREATE TABLE raw_meteorites (
    name TEXT,
    id TEXT,
    nametype TEXT,
    recclass TEXT,
    mass TEXT,
    fall TEXT,
    year TEXT,
    reclat TEXT,
    reclong TEXT
);

-- Import CSV into raw table
.mode csv
.import meteorites.csv raw_meteorites

-- =========================
-- 2. Create cleaned final table
-- =========================
DROP TABLE IF EXISTS meteorites;

CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    recclass TEXT,
    mass REAL,
    fall TEXT,
    year INTEGER,
    reclat REAL,
    reclong REAL
);

-- =========================
-- 3. Insert CLEANED data
-- =========================
INSERT INTO meteorites (id, name, recclass, mass, fall, year, reclat, reclong)
SELECT
    ROW_NUMBER() OVER (
        ORDER BY
            CAST(year AS INTEGER),
            name
    ) AS id,

    name,
    recclass,

    ROUND(CAST(mass AS REAL), 2) AS mass,
    fall,

    CAST(year AS INTEGER) AS year,

    ROUND(CAST(reclat AS REAL), 2) AS reclat,
    ROUND(CAST(reclong AS REAL), 2) AS reclong

FROM raw_meteorites
WHERE nametype != 'Relict'
    AND year IS NOT NULL
    AND mass IS NOT NULL
    AND reclat IS NOT NULL
    AND reclong IS NOT NULL

ORDER BY
    CAST(year AS INTEGER),
    name;
