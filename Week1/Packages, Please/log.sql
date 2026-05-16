-- *** The Lost Letter ***

-- Find sender and recipient addresses
SELECT * FROM addresses
WHERE address IN ('900 Somerville Avenue', '2 Finnegan Street');

-- Find package between these addresses
SELECT * FROM packages
WHERE from_address_id = (
    SELECT id FROM addresses WHERE address = '900 Somerville Avenue'
)
AND to_address_id = (
    SELECT id FROM addresses WHERE address = '2 Finnegan Street'
);
