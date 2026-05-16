CREATE VIEW no_descriptions AS
SELECT
    id,
    property_type,
    host_name,
    accommodates,
    bedrooms,
    bathrooms,
    price,
    minimum_nights,
    maximum_nights,
    availability_365
FROM listings;
