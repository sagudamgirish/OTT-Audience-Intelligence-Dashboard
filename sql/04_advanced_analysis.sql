SELECT release_year,
platform,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY release_year, platform
ORDER BY release_year;
SELECT release_year,
COUNT(*) AS total_titles
FROM cleaned_dataset
WHERE release_year >= 2015
GROUP BY release_year
ORDER BY release_year;
SELECT platform,
primary_genre,
COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY platform, primary_genre
ORDER BY platform, total_titles DESC;
SELECT release_year,
       platform,
       COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY release_year, platform
ORDER BY release_year;
SELECT release_year,
       COUNT(*) AS total_titles
FROM cleaned_dataset
WHERE release_year >= 2015
GROUP BY release_year
ORDER BY release_year;
SELECT platform,
       primary_genre,
       COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY platform, primary_genre
ORDER BY platform, total_titles DESC;
SELECT AVG(year_count) AS avg_titles_per_year
FROM (
      SELECT release_year,
             COUNT(*) AS year_count
      FROM cleaned_dataset
      GROUP BY release_year
     ) AS yearly_data;
     SELECT platform,
       COUNT(*) AS total_titles
FROM cleaned_dataset
GROUP BY platform
ORDER BY total_titles DESC
LIMIT 1;

