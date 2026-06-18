SELECT primary_genre,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY primary_genre
ORDER BY total_titles DESC
LIMIT 10;
SELECT country,
COUNT(*) AS total_titles
FROM cleaned_dataset
WHERE country <> 'Unknown'
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;
SELECT rating,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY rating
ORDER BY total_titles DESC;
SELECT platform,
content_type,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY platform, content_type;
