SELECT COUNT(*) AS total_titles
FROM cleaned_dataset;
SELECT content_type,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY content_type;
SELECT platform,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY platform
ORDER BY total_titles DESC;
SELECT DISTINCT platform
FROM cleaned_dataset;
SELECT release_year,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;
