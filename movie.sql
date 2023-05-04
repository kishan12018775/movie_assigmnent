CREATE DATABASE movie
USE movie;
SHOW TABLES;
SELECT * FROM dataset;
SELECT count(*) FROM titles;

SELECT dataset.item_id, titles.title, AVG(dataset.rating) as avg_rating
FROM dataset
INNER JOIN titles ON dataset.item_id = titles.item_id
GROUP BY dataset.item_id, titles.title;

SELECT titles.title, AVG(dataset.rating) AS avg_rating
FROM dataset
INNER JOIN titles ON dataset.item_id = titles.item_id
GROUP BY titles.title
ORDER BY avg_rating DESC
LIMIT 10;

SELECT titles.title, AVG(dataset.rating) AS avg_rating
FROM dataset
INNER JOIN titles ON dataset.item_id = titles.item_id
GROUP BY titles.title
ORDER BY avg_rating ASC
LIMIT 10;

SELECT AVG(timestamp) AS avg_timestamp FROM dataset;

SELECT title, MAX(timestamp) AS highest_duration
FROM dataset
INNER JOIN titles ON dataset.item_id = titles.item_id
GROUP BY title
ORDER BY highest_duration DESC
LIMIT 1;