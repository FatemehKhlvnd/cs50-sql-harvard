-- Create a view that decodes the hidden message
CREATE VIEW message AS
SELECT substr(sentence, start_char, length) AS phrase
FROM sentences
JOIN (
    SELECT 14 AS sentence_id, 98 AS start_char, 4 AS length
    UNION ALL
    SELECT 114, 3, 5
    UNION ALL
    SELECT 618, 72, 9
    UNION ALL
    SELECT 630, 7, 3
    UNION ALL
    SELECT 932, 12, 5
    UNION ALL
    SELECT 2230, 50, 7
    UNION ALL
    SELECT 2346, 44, 10
    UNION ALL
    SELECT 3041, 14, 5
) AS cipher
ON sentences.id = cipher.sentence_id;
