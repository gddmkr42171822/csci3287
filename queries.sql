#A simple SELECT FROM WHERE
SELECT *
FROM continents
WHERE east_west_dichotomy = 'east';

#A SELECT FROM WHERE ORDER BY
SELECT *
FROM authors
WHERE  how_died IS NOT NULL
ORDER BY name;

#A SELECT FROM WHERE ORDER BY LIMIT
SELECT *
FROM authors
WHERE how_died IS NOT NULL
ORDER BY name
LIMIT 2;

#A SELECT FROM WHERE GROUP BY
SELECT country, obesity_rate
FROM food
WHERE obesity_rate NOT LIKE '0%'
GROUP BY country;

#A SELECT FROM WHERE GROUP BY HAVING
SELECT *
FROM wars
WHERE year_began > 1899
GROUP BY war_name
HAVING casualties > 14000;

#A SELECT FROM WHERE with an implied join
SELECT recent_war.most_recent_war_end, military.country
FROM recent_war, military
WHERE recent_war.most_recent_war = 'afghanistan'
AND military.most_recent_war = 'afghanistan';

#A SELECT FROM WHERE with two implied joins, a MAX function, an AVG function,
#and at least two levels of parentheses embedding in the where clause
SELECT countries.name, diseases.main_disease
FROM countries, diseases
WHERE countries.name = diseases.country
AND diseases.num_deaths_from_main_disease = (
  SELECT max(diseases.num_deaths_from_main_disease)
  FROM diseases, most_deadly_disease_in_country
  WHERE diseases.main_disease = most_deadly_disease_in_country.main_disease
  HAVING diseases.life_expectancy_males > avg(diseases.life_expectancy_males)
  );

#A SELECT FROM WHERE with a NOT operator and an IN operator, and a nested query
SELECT country
FROM population_characteristics
WHERE main_religion
NOT IN (
  SELECT main_religion
  FROM religions
  WHERE main_religion != 'islam');

#A SET command and a nontrivial WHERE clause
UPDATE type_of_government
SET do_they_vote = FALSE
WHERE do_they_vote = TRUE;

#An UPDATE with a nontrivial WHERE clause
UPDATE flag_sizes
SET flag_sizes = '7ft'
WHERE country LIKE 'germany' AND flag_sizes LIKE '5ft';

#A CREATE USER
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'bob';
GRANT ALL PRIVILEGES ON * . * TO 'bob'@'localhost';

#A DROP USER
DROP USER 'bob'@'localhost';

#A START TRANSACTION and a ROLLBACK
START TRANSACTION;
DELETE FROM climate
WHERE num_seasons < 4;
ROLLBACK;
