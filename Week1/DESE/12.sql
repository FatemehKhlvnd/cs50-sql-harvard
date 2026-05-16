SELECT
d.name,
e.per_pupil_expenditure,
e.percent_exemplary
FROM districts d
JOIN expenditures e ON d.id = e.district_id
JOIN staff_evaluations se ON d.id = se.district_id
WHERE e.per_pupil_expenditure > (
    SELECT AVG(per_pupil_expenditure) FROM expenditures
)
AND se.percent_exemplary > (
    SELECT AVG(percent_exemplary) FROM staff_evaluations
)
ORDER BY se.percent_exemplary DESC, e.per_pupil_expenditure DESC;
