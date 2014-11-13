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
VALUES ('germany', 'warm temperate', 4, -50, 104, 700, 'temperate evergreen forest');

#insert into authors table
INSERT INTO authors (name, country_born_in, city_born_in, most_popular_book, birthday)
VALUES ('fritz stern', 'germany', 'wroclaw', 'our century', 'february 2, 1926');

#insert into weapons table
INSERT INTO weapons (primary_rifle, caliber, country, war_first_used, designer, still_used)
VALUES ('gewehr 88', '7.92x57mm', 'germany', 'ww1', 'german rifle commission', 'no');

#insert into military table
INSERT INTO military (country, size_of, most_recent_war, num_branches, mandatory_service, most_recent_war_end)
VALUES ('germany', 183000, afghanistan, 3, 'yes', NULL);

#insert into government table
INSERT INTO government (country, type_of, head_leader, head_political_party, name_of_constitution, name_of_legislative_power, do_they_vote)
VALUES ('germany', 'federal parliamentary republic', 'angela merkel', 'christian democratic union', 'grundgesetz', 'bundestag', 'yes');

#insert into food table
INSERT INTO food (country, most_famous_food, most_famous_drink, most_famous_dessert, obesity_rate)
VALUES ('germany', 'aachener printen', 'kaffe', 'black forest cake', 'jagermeister', '25%');

#insert into disease table
INSERT INTO disease (country, main_disease, life_expectancy_males, num_deaths_from_main_disease, num_smokers, num_people_with_hiv)
VALUES ('germany', 'coronary heart disease', 78, 155761, '30%', 53000);
