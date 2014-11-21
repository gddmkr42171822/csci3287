INSERT INTO countries (name, main_language, nationality, size_of_population, continent, capitol)
VALUES ('germany', 'german', 'german', 80620000, 'europe', 'berlin'),
('france', 'french', 'french', 66030000, 'europe', 'paris'),
('brazil', 'portuguese', 'brazilian', 200400000, 'south america', 'brazilia'),
('united states of america', 'english', 'american', 316100000, 'north america', 'washington d.c.'),
('england', 'english', 'british', 53010000, 'europe', 'london'),
('mexico', 'spanish', 'mexican', 122300000, 'south armerica', 'mexico city'),
('russia', 'russian', 'russian', 146000000, 'asia', 'moscow'),
('australia', 'english', 'austrailian', 23130000, 'australia', 'canberra'),
('china', 'chinese', 'chinese', 1357000000, 'asia', 'beijing'),
('somalia', 'arabic', 'somali', 10000000, 'africa', 'mogadishu');

INSERT INTO continents (continents, east_west_dichotomy)
VALUES ('south america', 'west'),
('north america', 'west'),
('australia', 'east'),
('asia', 'east'),
('africa', 'east'),
('europe', 'west');

INSERT INTO population_characteristics (country, main_religion, average_income, unemployment_rate, mortality_rate, fertility_rate)
VALUES ('germany', 'christianity', 23938, 5.1, 3, 1.38),
('france', 'christianity', 24000, 4.9, 2, 1.4),
('brazil', 'catholicism', 19000, 8.5, 4, 2.3),
('united states of america', 'christianity', 30000, 5.0, 2.4, 2),
('england', 'protestant', 25000, 5.1, 2.3, 2.1),
('mexico', 'catholicism', 10000, 10, 4, 4),
('russia', 'orthodox christianity', 22000, 9, 3.3, 1.9),
('australia', 'christianity', 20000, 4.5, 2.6, 2.0),
('china', 'confusianism', 14500, 15.4, 20, 21),
('somalia', 'islam', 5000, 40, 50, 15);

INSERT INTO religions (main_religion, religious_leader)
VALUES ('christianity', 'father'),
('catholicism', 'priest'),
('protestant', 'pastor'),
('orthodox christianity', 'otets'),
('confusianism', 'scholar-official'),
('islam', 'imam');

INSERT INTO wars (war_name, year_began, continent, casualties, main_loser_by_deaths, century)
VALUES ('ww1', 1914, 'europe', 37000000, 'germany', '20th'),
('ww2', 1939, 'europe', 100000000, 'russia', '20th'),
('civil war', 1860, 'north america', 1000000, 'southern states', '19th'),
('revolutionary war', 1776, 'north america', 50000, 'england', '18th'),
('first afghan war', 1980, 'asia', 100000, 'russia', '20th'),
('vietnam', 1960, 'asia', 150000, 'united states of america', '20th'),
('second iraq war', 2003, 'asia', 14000, 'iraq', '21st'),
('spanish american war', 1898, 'south america', 50000, 'mexico', '19th'),
('gwot', 1, 'everywhere', 100000, 'islam', '21st'),
('congress', 1900, 'north america', 300000000, 'united states of america', '21st');

INSERT INTO year_war_began (year_began, reason_began)
VALUES (1914, 'assasination of Archduke'),
(1939, 'nazi blitzkrieg'),
(1860, 'unrest between states'),
(1776, 'taxation without representation'),
(1980, 'mujahideen'),
(1960, 'communism'),
(2003, 'saddam hussein'),
(1898, 'border protection'),
(10000, 'destroy islmaic extremists'),
(1900, 'idiocy');

INSERT INTO climate (country, biome, num_seasons, min_temp, max_temp, avg_precipitation)
VALUES ('germany', 'warm temperate', 4, -50, 104, 700),
('united states of america', 'everything', 4, -59, 110, 1000),
('china', 'boreal', 4, -60, 90, 500),
('france', 'continental', 3, -5, 60, 213),
('somalia', 'subtropical', 1, 40, 120, 100),
('australia', 'subtropical', 2, 50, 100, 1500),
('mexico', 'equatorial', 2, 50, 99, 1598),
('england', 'tropical', 5, 10, 150, 20000),
('brazil', 'polar', 1, -100, 0, 5),
('russia', 'boreal', 10, 6, 7, 20);

INSERT INTO world_biomes (biome, vegetation)
VALUES ('warm temperate', 'temperate evergreen forest'),
('everything', 'all'),
('boreal', 'evergreen'),
('continental', 'grasslands'),
('subtropical', 'desert'),
('equatorial', 'forest'),
('tropical', 'highlands'),
('polar', 'frozen soil'),
('boreal', 'needle-leaved forest');

INSERT INTO authors (name, city_born_in, birthday, how_died)
VALUES ('fritz stern', 'wroclaw', 'our century', 'february 2, 1926', NULL),
('jon malcom', 'london', 'dude', 'july 10, 1975', 'stabbed'),
('bilbo baggins', 'leningrad', 'good to be here', 'december 1, 1988', 'hanged'),
('jon goete', 'normandy', 'beaches', 'august 10, 1000', 'fell'),
('pierce', 'san palo', 'slums', 'september 11, 2001', 'airplane crash'),
('kiet', 'hong kong', 'umbrella wars', 'march 11, 2012', NULL),
('tim allen', 'sidney', 'dingos forever', 'february 2, 1969', 'eaten alive'),
('bob', 'salinas', 'what am i doing here', 'july 11, 1900', NULL),
('somali pirate', 'oceania', 'damn you navy seals', 'beginning of time', 'sniper bullet to dome'),
('jose', 'mexico city', 'i hate the drug cartels', '1969', 'border patrol ran him over');

INSERT INTO birthplace (city_born_in, country_born_in, most_popular_book)
VALUES ('wroclaw', 'germany', 'our century'),
('london', 'england', 'dude')
('leningrad', 'russia', 'good to be here'),
('normandy', 'france', 'beaches'),
('san palo', 'brazil', 'slums'),
('hong kong', 'china', 'umbrella wars'),
('sidney', 'australia', 'dingos forever'),
('salinas', 'united states of america', 'what am i doing here'),
('oceania', 'somalia', 'damn you navy seals'),
('mexico city', 'mexico', 'i hate the drug cartels');

#insert into weapons table
INSERT INTO weapons (primary_rifle, caliber, country, war_first_used, designer)
VALUES ('gewehr 88', '7.92x57mm', 'germany', 'ww1', 'german rifle commission'),
('tech-nine', '45acp', 'united states of america', 'civil war', 'techanina'),
('super duper cannon', '60mm', 'france', 'congress', 'cool kidz'),
('coffee', '-2cups', 'mexico', 'first afghan war', 'destructo inc'),
('glock 17', '9mm', 'russia', 'vietnam', 'russian federation'),
('rail gun', 'energy beams', 'somalia', 'spanish american war', 'aliens'),
('virus', 'brca1', 'england', 'gwot', 'me'),
('m240b', '7.62x39mm', 'brazil', 'revolutionary war', 'god'),
('uzi', '10mm', 'china', 'ww2', 'china'),
('pen', 'fine tip', 'australia', 'second iraq war', 'opec');

INSERT INTO gats (primary_rifle, still_used)
VALUES ('gewehr 88', FALSE),
('tech-nine', TRUE),
('super duper cannon', TRUE),
('coffee', FALSE),
('glock 17', TRUE),
('rail gun', FALSE),
('virus', TRUE),
('m240b', FALSE),
('uzi', FALSE),
('pen', TRUE);

INSERT INTO military (country, size_of, most_recent_war, num_branches, mandatory_service)
VALUES ('germany', 183000, 'afghanistan', 3, 'yes'),
('united states of america', 1000000, 'afghanistan', 4, 'no'),
('france', 500000, 'afghanistan', 4, 'yes'),
('england', 550000, 'afghanistan', 4, 'yes'),
('brazil', 5, 'mexico', 1, 'no'),
('russia', 1000, 'chechnya', 4, 'yes'),
('china', 1000000, 'africa', 1, 'yes'),
('australia', 1, 'australia', 1, 'no'),
('mexico', 2, 'drug cartel city', 2, 'no'),
('somalia', 1, 'ocian liners', 0, 'yes');

INSERT INTO recent_war (most_recent_war, most_recent_war_end)
VALUES ('afghanistan', NULL),
('mexico', NULL),
('chechnya', NULL),
('africa', '1 feb, 2005'),
('australia', '1 march, 1990'),
('drug cartel city', NULL),
('ocean liners', NULL);

INSERT INTO government (country, type_of, head_leader, head_political_party, name_of_constitution, name_of_legislative_power)
VALUES ('germany', 'federal parliamentary republic', 'angela merkel', 'christian democratic union', 'grundgesetz', 'bundestag'),
('united states of america', 'democracy', 'obama', 'democrats', 'constitution', 'congress'),
('russia', 'dictatorship', 'putin', 'socialists', 'putins laws', 'help us'),
('mexico', 'drug democracy', 'bob', 'drug cartels', 'mexican servesas', 'national libertarians'),
('somalia', 'dictatorship', 'click-clack', 'pirates for freedom', 'guns', 'steal everything'),
('australia', 'grill on', 'steve erwin', 'stingrays', 'dingos rule', 'catch me a crocodile'),
('brazil', 'maybe not', 'don\'t know', 'soccer', 'futbol', 'fifa'),
('england', 'democracy', 'tony blair', 'social democrats', 'in all fairness', 'parliament'),
('china', 'communism', 'xi', 'communists', 'chinas constitution', 'the people'),
('france', 'democracy', 'hmmmm', 'bread smokers', 'wine and cheese', 'forget me not');

INSERT INTO type_of_government
VALUES ('federal parliamentary republic', TRUE),
('democracy', TRUE),
('dictatorship', FALSE),
('drug democracy', TRUE),
('grill on', TRUE),
('maybe not', FALSE),
('communism', FALSE);

INSERT INTO food (country, popular_food, popular_drink, popular_dessert, popular_alcoholic_beverage, obesity_rate)
VALUES ('germany', 'aachener printen', 'kaffe', 'black forest cake', 'jagermeister', '25%'),
('france', 'bread', 'wine', 'cheese', 'wine', '100%'),
('russia', 'snow', 'snow', 'snow', 'vodka', '0%'),
('brazil', 'dirt', 'dirty water', 'ball', 'broken glass', '5%'),
('united states of america', 'cheeseburger', 'coke', 'pie', 'coors light', '50%'),
('somalia', 'bricks', 'green', 'ak47', 'pipe', '0%'),
('mexico', 'cocaine', 'marijuana', 'acid', 'servesa', '60%'),
('china', 'rice', 'rice', 'rice', 'rice', '10%'),
('australia', 'dingos', 'kangaroo', 'shrimp', 'admiral nelsons', '6%'),
('england', 'fish and chips', 'pub brew', 'murder', 'manchester', '76%');

INSERT INTO booze (popular_alcoholic_beverage, popular_alcoholic_beverage_type)
VALUES ('jagermeister', 'liquer'),
('wine', 'wine'),
('vodka', 'wodka'),
('broken glass', 'beer'),
('coors light', 'beer'),
('pipe', 'whiskey'),
('servesa', 'dos equis'),
('rice', 'rice'),
('admiral nelsons', 'rum'),
('manchester', 'gin');

INSERT INTO disease (country, main_disease, life_expectancy_males, num_deaths_from_main_disease, num_smokers, num_people_with_hiv)
VALUES ('germany', 'coronary heart disease', 78, 155761, '30%', 53000),
('france', 'cheese disease', 20, 10, '50%', 1),
('russia', 'snow cold', 5, 25, '60%', 100),
('brazil', 'the jungle', 67, 500, '100%', 5),
('united states of america', 'obesity', 77, 50000, '40%', 25000),
('somalia', 'starvation', 40, 45, '10%', 8),
('mexico', 'beheading', 30, 32, '40%', 66),
('china', 'sars', 300, 3500, '30%', 678),
('australia', 'dingo attack', 98, 987, '20%', 567),
('england', 'mi5', 56, 76, '10%', 23);

INSERT INTO most_deadly_diseas_in_country (main_disease, main_disease_typ)
VALUES ('coronary heart disease', 'lifestyle disease'),
('cheese disease', 'sitting too much'),
('snow cold', 'the snow'),
('the jungle', 'humidity'),
('obesity', 'lifestyle disease'),
('starvation', 'not enough food'),
('beheading', 'drug cartels'),
('sars', 'infections disease'),
('dingo attack', 'wild dog disease'),
('mi5', 'spying');

INSERT INTO flag_day (cause_of_flag_creation, date_flag_created, century_flag_created)
VALUES ('fall of berlin wall', '1990', '20th'),

INSERT INTO flag_colors (cause_of_flag_creation, country, date_flag_created, flag_colors)
VALUES ('fall of berlin wall', 'germany', '1990', 'black')
VALUES ('fall of berlin wall', 'germany', '1990', 'yellow')
VALUES ('fall of berlin wall', 'germany', '1990', 'red')

INSERT INTO flag_sizes (cause_of_flag_creation, country, date_flag_created, flag_sizes)
VALUES ('fall of berlin wall', 'germany', '1990', '5ft'),
VALUES ('fall of berlin wall', 'germany', '1990', '10ft'),
VALUES ('fall of berlin wall', 'germany', '1990', '15ft'),
