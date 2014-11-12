USE db_project;

#insert into countries table
INSERT INTO countries (name, main_language, nationality, size_of_population, continent, capitol)
VALUES ('germany', 'german', 'german', 80620000, 'europe', 'berlin');
INSERT INTO countries (name, main_language, nationality, size_of_population, continent, capitol)
VALUES ('france', 'french', 'french', 66030000, 'europe', 'paris');
INSERT INTO countries (name, main_language, nationality, size_of_population, continent, capitol)
VALUES ('brazil', 'portuguese', 'brazilian', 200400000, 'south america', 'brazilia');

#insert into population_characteristics table
INSERT INTO population_characteristics (country, main_religion, average_income, unemployment_rate, mortality_rate, fertility_rate)
VALUES ('germany', 'christianity', 23938, 5.1, 3, 1.38);

#insert into wars table
INSERT INTO wars (war_name, year_began, continent, casualties, reason_began, main_loser)
VALUES ('ww1', '1914', 'europe', 37000000, 'assasination of Archduke', 'germany');

#insert into climate table
INSERT INTO climate (country, biome, num_seasons, min_temp, max_temp, avg_precipitation, vegetation)
VALUES ('germany', 'warm temperate', 4, -50, 104, 700, 'temperatre evergreen forest');
