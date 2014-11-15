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

#insert into population_characteristics table
INSERT INTO population_characteristics (country, main_religion, average_income, unemployment_rate, mortality_rate, fertility_rate, religious_leader)
VALUES ('germany', 'christianity', 23938, 5.1, 3, 1.38, 'father'),
('france', 'christianity', 24000, 4.9, 2, 1.4, 'father'),
('brazil', 'catholicism', 19000, 8.5, 4, 2.3, 'priest'),
('united states of america', 'christianity', 30000, 5.0, 2.4, 2, 'father'),
('england', 'protestant', 25000, 5.1, 2.3, 2.1, 'pastor'),
('mexico', 'catholicism', 10000, 10, 4, 4, 'priest'),
('russia', 'orthodox christianity', 22000, 9, 3.3, 1.9, 'otets'),
('australia', 'christianity', 20000, 4.5, 2.6, 2.0, 'father'),
('china', 'confusianism', 14500, 15.4, 20, 21, 'scholar-official'),
('somalia', 'islam', 5000, 40, 50, 15, 'imam');

#insert into wars table
INSERT INTO wars (war_name, year_began, continent, casualties, reason_began, main_loser_by_deaths, century)
VALUES ('ww1', 1914, 'europe', 37000000, 'assasination of Archduke', 'germany', '20th'),
('ww2', 1939, 'europe', 100000000, 'nazi blitzkrieg', 'russia', '20th'),
('civil war', 1860, 'north america', 1000000, 'unrest between states', 'southern states', '19th'),
('revolutionary war', 1776, 'north america', 50000, 'taxation without representation', 'england', '18th'),
('first afghan war', 1980, 'asia', 100000, 'mujahideen', 'russia', '20th'),
('vietnam', 1960, 'asia', 150000, 'communism', 'united states of america', '20th'),
('second iraq war', 2003, 'asia', 14000, 'saddam hussein', 'iraq', '21st'),
('spanish american war', 1898, 'south america', 50000, 'border protection', 'mexico', '19th'),
('gwot', 1, 'everywhere', 100000, 'destroy islamic extremists', 'islam', '21st'),
('congress', 1900, 'north america', 300000000, 'idiocy', 'united states of america', '21st');

#insert into climate table
INSERT INTO climate (country, biome, num_seasons, min_temp, max_temp, avg_precipitation, vegetation)
VALUES ('germany', 'warm temperate', 4, -50, 104, 700, 'temperate evergreen forest'),
('united states of america', 'everything', 4, -59, 110, 1000, 'all'),
('china', 'boreal', 4, -60, 90, 500, 'evergreen'),
('france', 'continental', 3, -5, 60, 213, 'grasslands'),
('somalia', 'subtropical', 1, 40, 120, 100, 'desert'),
('australia', 'subtropical', 2, 50, 100, 1500, 'desert'),
('mexico', 'equatorial', 2, 50, 99, 1598, 'forest'),
('england', 'tropical', 5, 10, 150, 20000, 'highlands'),
('brazil', 'polar', 1, -100, 0, 5, 'frozen soil'),
('russia', 'boreal', 10, 6, 7, 20, 'needle-leaved forest');

#insert into authors table
INSERT INTO authors (name, country_born_in, city_born_in, most_popular_book, birthday, how_died)
VALUES ('fritz stern', 'germany', 'wroclaw', 'our century', 'february 2, 1926', NULL),
('jon malcom', 'england', 'london', 'dude', 'july 10, 1975', 'stabbed'),
('bilbo baggins', 'russia', 'leningrad', 'good to be here', 'december 1, 1988', 'hanged'),
('jon goete', 'france', 'normandy', 'beaches', 'august 10, 1000', 'fell'),
('pierce', 'brazil', 'san palo', 'slums', 'september 11, 2001', 'airplane crash'),
('kiet', 'china', 'hong kong', 'umbrella wars', 'march 11, 2012', NULL),
('tim allen', 'australia', 'sidney', 'dingos forever', 'february 2, 1969', 'eaten alive'),
('bob', 'united states of america', 'salinas', 'what am i doing here', 'july 11, 1900', NULL),
('somali pirate', 'somalia', 'oceania', 'damn you navy seals', 'beginning of time', 'sniper bullet to dome'),
('jose', 'mexico', 'mexico city', 'i hate the drug cartels', '1969', 'border patrol ran him over');

#insert into weapons table
INSERT INTO weapons (primary_rifle, caliber, country, war_first_used, designer, still_used)
VALUES ('gewehr 88', '7.92x57mm', 'germany', 'ww1', 'german rifle commission', FALSE),
('tech-nine', '45acp', 'united states of america', 'civil war', 'techanina', TRUE),
('super duper cannon', '60mm', 'france', 'congress', 'cool kidz', FALSE),
('coffee', '-2cups', 'mexico', 'first afghan war', 'destructo inc', FALSE),
('glock 17', '9mm', 'russia', 'vietnam', 'russian federation', TRUE),
('rail gun', 'energy beams', 'somalia', 'spanish american war', 'aliens', FALSE),
('virus', 'brca1', 'england', 'gwot', 'me', TRUE),
('m240b', '7.62x39mm', 'brazil', 'revolutionary war', 'god', FALSE),
('uzi', '10mm', 'china', 'ww2', 'china', FALSE),
('pen', 'fine tip', 'australia', 'second iraq war', 'opec', TRUE);

#insert into military table
INSERT INTO military (country, size_of, most_recent_war, num_branches, mandatory_service, most_recent_war_end)
VALUES ('germany', 183000, 'afghanistan', 3, 'yes', NULL),
('united states of america', 1000000, 'afghanistan', 4, 'no', NULL),
('france', 500000, 'afghanistan', 4, 'yes', NULL),
('england', 550000, 'afghanistan', 4, 'yes', NULL),
('brazil', 5, 'mexico', 1, 'no', NULL),
('russia', 1000, 'chechnya', 4, 'yes', NULL),
('china', 1000000, 'africa', 1, 'yes', 2005),
('australia', 1, 'australia', 1, 'no', 1990),
('mexico', 2, 'drug cartel city', 2, 'no', NULL),
('somalia', 1, 'ocian liners', 0, 'yes', NULL);

#insert into government table
INSERT INTO government (country, type_of, head_leader, head_political_party, name_of_constitution, name_of_legislative_power, do_they_vote)
VALUES ('germany', 'federal parliamentary republic', 'angela merkel', 'christian democratic union', 'grundgesetz', 'bundestag', TRUE),
('united states of america', 'democracy', 'obama', 'democrats', 'constitution', 'congress', FALSE),
('russia', 'dictatorship', 'putin', 'socialists', 'putins laws', 'help us', TRUE),
('mexico', 'drug democracy', 'bob', 'drug cartels', 'mexican servesas', 'national libertarians', TRUE),
('somalia', 'dictatorship', 'click-clack', 'pirates for freedom', 'guns', 'steal everything', FALSE),
('australia', 'grill on', 'steve erwin', 'stingrays', 'dingos rule', 'catch me a crocodile', TRUE),
('brazil', 'maybe not', 'don\'t know', 'soccer', 'futbol', 'fifa', FALSE),
('england', 'democracy', 'tony blair', 'social democrats', 'in all fairness', 'parliament', TRUE),
('china', 'communism', 'xi', 'communists', 'chinas constitution', 'the people', FALSE),
('france', 'democracy', 'hmmmm', 'bread smokers', 'wine and cheese', 'forget me not', FALSE);

#insert into food table
INSERT INTO food (country, popular_food, popular_drink, popular_dessert, popular_alcoholic_beverage, popular_alcoholic_beverage_type, obesity_rate)
VALUES ('germany', 'aachener printen', 'kaffe', 'black forest cake', 'jagermeister', 'liquer', '25%'),
('france', 'bread', 'wine', 'cheese', 'wine', 'wine', '100%'),
('russia', 'snow', 'snow', 'snow', 'vodka', 'wodka', '0%'),
('brazil', 'dirt', 'dirty water', 'ball', 'broken glass', 'beer', '5%'),
('united states of america', 'cheeseburger', 'coke', 'pie', 'coors light', 'beer', '50%'),
('somalia', 'bricks', 'green', 'ak47', 'pipe', 'whiskey', '0%'),
('mexico', 'cocaine', 'marijuana', 'acid', 'servesa', 'dos equis', '60%'),
('china', 'rice', 'rice', 'rice', 'rice', 'rice', '10%'),
('australia', 'dingos', 'kangaroo', 'shrimp', 'admiral nelsons', 'rum', '6%'),
('england', 'fish and chips', 'pub brew', 'murder', 'manchester', 'gin', '76%');

#insert into disease table
INSERT INTO disease (country, main_disease, main_disease_type, life_expectancy_males, num_deaths_from_main_disease, num_smokers, num_people_with_hiv)
VALUES ('germany', 'coronary heart disease', 'lifestyle disease', 78, 155761, '30%', 53000),
('france', 'cheese disease', 'sitting too much', 20, 10, '50%', 1),
('russia', 'snow cold', 'the snow', 5, 25, '60%', 100),
('brazil', 'the jungle', 'humidity', 67, 500, '100%', 5),
('united states of america', 'obesity', 'lifestyle disease', 77, 50000, '40%', 25000),
('somalia', 'starvation', 'not enough food', 40, 45, '10%', 8),
('mexico', 'beheading', 'drug cartels', 30, 32, '40%', 66),
('china', 'sars', 'infectious disease', 300, 3500, '30%', 678),
('australia', 'dingo attack', 'wild dog disease', 98, 987, '20%', 567),
('england', 'mi5', 'spying', 56, 76, '10%', 23);

#insert into flag table
INSERT INTO flag (country, cause_of_flag_creation, date_flag_created, century_flag_created, flag_colors, flag_sizes)
VALUES ('germany', 'fall of berlin wall', '1990', '20th', 'red', '5ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'black', '10ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'yellow', '15ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'red', '10ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'black', '5ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'yellow', '10ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'black', '15ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'red', '15ft'),
('germany', 'fall of berlin wall', '1990', '20th', 'yellow', '5ft');
