USE db_project;

#insert into countries table
INSERT INTO countries (name, main_language, nationality, size_of_population, continent, capitol, east_west_dichotomy)
VALUES ('germany', 'german', 'german', 80620000, 'europe', 'berlin', 'west'),
('france', 'french', 'french', 66030000, 'europe', 'paris', 'west'),
('brazil', 'portuguese', 'brazilian', 200400000, 'south america', 'brazilia', 'west'),
('united states of america', 'english', 'american', 316100000, 'north america', 'washington d.c.', 'west'),
('england', 'english', 'british', 53010000, 'europe', 'london', 'west'),
('mexico', 'spanish', 'mexican', 122300000, 'south armerica', 'mexico city', 'west'),
('russia', 'russian', 'russian', 146000000, 'asia', 'moscow', 'east'),
('australia', 'english', 'austrailian', 23130000, 'australia', 'canberra', 'east'),
('china', 'chinese', 'chinese', 1357000000, 'asia', 'beijing', 'east'),
('somalia', 'arabic', 'somali', 10000000, 'africa', 'mogadishu', 'east');
/*
#insert into population_characteristics table
INSERT INTO population_characteristics (country, main_religion, average_income, unemployment_rate, mortality_rate, fertility_rate, religious_leader)
VALUES ('germany', 'christianity', 23938, 5.1, 3, 1.38, 'pope');

#insert into wars table
INSERT INTO wars (war_name, year_began, continent, casualties, reason_began, main_loser_by_deaths)
VALUES ('ww1', '1914', 'europe', 37000000, 'assasination of Archduke', 'germany', '20th');

#insert into climate table
INSERT INTO climate (country, biome, num_seasons, min_temp, max_temp, avg_precipitation, vegetation)
VALUES ('germany', 'warm temperate', 4, -50, 104, 700, 'temperate evergreen forest');

#insert into authors table
INSERT INTO authors (name, country_born_in, city_born_in, most_popular_book, birthday)
VALUES ('fritz stern', 'germany', 'wroclaw', 'our century', 'february 2, 1926');

#insert into weapons table
INSERT INTO weapons (primary_rifle, caliber, country, war_first_used, designer, still_used)
VALUES ('gewehr 88', '7.92x57mm', 'germany', 'ww1', 'german rifle commission', FALSE);

#insert into military table
INSERT INTO military (country, size_of, most_recent_war, num_branches, mandatory_service, most_recent_war_end)
VALUES ('germany', 183000, afghanistan, 3, 'yes', NULL);

#insert into government table
INSERT INTO government (country, type_of, head_leader, head_political_party, name_of_constitution, name_of_legislative_power, do_they_vote)
VALUES ('germany', 'federal parliamentary republic', 'angela merkel', 'christian democratic union', 'grundgesetz', 'bundestag', TRUE);

#insert into food table
INSERT INTO food (country, most_famous_food, most_famous_drink, most_famous_dessert, obesity_rate)
VALUES ('germany', 'aachener printen', 'kaffe', 'black forest cake', 'jagermeister', '25%');

#insert into disease table
INSERT INTO disease (country, main_disease, life_expectancy_males, num_deaths_from_main_disease, num_smokers, num_people_with_hiv)
VALUES ('germany', 'coronary heart disease', 78, 155761, '30%', 53000);
*/
