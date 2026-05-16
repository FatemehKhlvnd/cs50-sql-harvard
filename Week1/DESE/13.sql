SELECT
d.name,
e.per_pupil_expenditure,
g.graduation_rate
FROM districts d
JOIN expenditures e ON d.id = e.district_id
JOIN graduation_rates g ON d.id = g.district_id
WHERE g.graduation_rate > 90
ORDER BY e.per_pupil_expenditure DESC;
