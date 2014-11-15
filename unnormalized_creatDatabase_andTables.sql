CREATE DATABASE db_project;
USE db_project;

CREATE TABLE countries
(
  name varchar(255) NOT NULL,
  main_language varchar(255),
  nationality varchar(255),
  size_of_population bigint,
  continent varchar(255),
  capitol varchar(255),
  east_west_dichotomy varchar(255),
  PRIMARY KEY (name)
);

/*
countries table
-----------------
TFD: name -> continent, continent does not -> name, continent -> cardinal_reference
*/

CREATE TABLE population_characteristics
(
  country varchar(255) NOT NULL,
  main_religion varchar(255),
  religious_leader varchar(255),
  average_income bigint,
  unemployment_rate float(9, 2),
  mortality_rate float(9, 2),
  fertility_rate float(9, 2),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*
population_characteristics table
---------------------------------
TFD: country -> main_religion, main_religion does not -> country, main_religion -> religious_leader
*/

CREATE TABLE wars
(
  war_name varchar(255) NOT NULL,
  year_began smallint DEFAULT NULL,
  continent varchar(255),
  casualties int,
  reason_began text,
  main_loser_by_deaths varchar(255) DEFAULT NULL,
  century varchar(255),
  PRIMARY KEY(war_name),
  FOREIGN KEY(main_loser) REFERENCES countries(name)
);

/*wars table
--------------
TFD: reason_began -> year_began, year_began does not -> reason_began, year_began -> century
*/

CREATE TABLE climate
(
  country varchar(255) NOT NULL,
  biome varchar(255),
  num_seasons tinyint,
  min_temp smallint,
  max_temp smallint,
  avg_precipitation smallint,
  vegetation text,
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*climate table
----------------
TFD: country -> biome, biome does not -> country, biome -> vegetation
*/

CREATE TABLE authors
(
  name varchar(255) NOT NULL,
  country_born_in varchar(255),
  city_born_in varchar(255),
  most_popular_book varchar(255),
  birthday varchar(255),
  death varchar(255) DEFAULT NULL,
  how_died text DEFAULT NULL,
  PRIMARY KEY(name),
  FOREIGN KEY(country_born_in) REFERENCES countries(name)
);

/*authors table
----------------
TFD: name -> city_born_in, city_born_in does not -> name, city_born_in -> country_born_in
*/

CREATE TABLE weapons
(
  primary_rifle varchar(255) NOT NULL,
  caliber varchar(255),
  country varchar(255),
  war_first_used varchar(255),
  designer varchar(255),
  still_used boolean,
  PRIMARY KEY(primary_rifle),
  FOREIGN KEY(war_first_used) REFERENCES wars(war_name),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*weapons table
----------------
TFD: country -> main_weapon, main_weapon does not -> country, main_weapon -> still_used
*/

CREATE TABLE military
(
  country varchar(255) NOT NULL,
  size_of int,
  most_recent_war varchar(255) DEFAULT NULL,
  num_branches tinyint,
  mandatory_service varchar(255),
  most_recent_war_end varchar(255),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(most_recent_war) REFERENCES wars(war_name)
);

/*military table
------------------
TFD: country -> most_recent_war, most_recent_war does ont -> country, most_recent_war -> most_recent_war_end
*/

CREATE TABLE government
(
  country varchar(255) NOT NULL,
  type_of varchar(255),
  head_leader varchar(255),
  head_political_party varchar(255),
  name_of_constitution varchar(255),
  name_of_legislative_power varchar(255),
  do_they_vote boolean,
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*government table
------------------
TFD: country -> type_of, type_of does not -> country, type_of -> do_they_vote
*/

CREATE TABLE food
(
  country varchar(255) NOT NULL,
  popular_food varchar(255),
  popular_drink varchar(255),
  popular_dessert varchar(255),
  popular_alcoholic_beverage varchar(255),
  popular_alcohlic_beverage_type varchar(255),
  obesity_rate varchar(255),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*food table
-------------
TFD: country -> popular_alcoholic_beverage, popular_alcoholic_beverage does not -> country, popular_alcoholic_beverage -> popular_alcoholic_beverage_type
*/

CREATE TABLE disease
(
  country varchar(255) NOT NULL,
  main_disease varchar(255),
  main_disease_type varchar(255),
  life_expectancy_males tinyint,
  num_deaths_from_main_disease int,
  num_smokers varchar(255),
  num_people_with_hiv int,
  PRIMARY KEY (country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

/*
disease table
---------------
TFD: country -> main_disease, main_disease does not -> country, main_disease -> main_disease_type
*/

CREATE TABLE flag
(
  country varchar(255) NOT NULL,
  cause_of_flag_creation text,
  date_flag_created varchar(255),
  century_flag_created varchar(255),
  flag_colors varchar(255),
  flag_sizes varchar(255),
  PRIMARY KEY (country),
  FOREIGN KEY(country) REFERENCES countries(name)
)

/*
flag table
-------------
TFD: country -> date_flag_created, date_flag_created does not -> country, date_flag_created -> century
MVD: country, date_flag_created, century_flag_created ->> flag_colors; country, date_flag_created, century_flag_created ->> flag_sizes
*/