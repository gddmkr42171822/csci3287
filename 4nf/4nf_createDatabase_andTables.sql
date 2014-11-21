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
  PRIMARY KEY (name),
  FOREIGN KEY(continent) REFERENCES continents(continents)
);

CREATE TABLE continents
(
  continents varchar(255) NOT NULL,
  east_west_dichotomy varchar(255),
  PRIMARY KEY(continents)
);

CREATE TABLE population_characteristics
(
  country varchar(255) NOT NULL,
  main_religion varchar(255),
  average_income bigint,
  unemployment_rate float(9, 2),
  mortality_rate float(9, 2),
  fertility_rate float(9, 2),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(main_religion) REFERENCES religions(main_religion)
);

CREATE TABLE religions
(
  main_religion varchar(255),
  religious_leader varchar(255),
  PRIMARY KEY(main_religion)
);

CREATE TABLE wars
(
  war_name varchar(255) NOT NULL,
  year_began smallint DEFAULT NULL,
  continent varchar(255),
  casualties int,
  main_loser_by_deaths varchar(255) DEFAULT NULL,
  century varchar(255),
  PRIMARY KEY(war_name),
  FOREIGN KEY(year_began) REFERENCES year_war_began(year_began)
);

CREATE TABLE year_war_began
(
  year_began smallint NOT NULL,
  reason_began text,
  PRIMARY KEY(year_began)
);

CREATE TABLE climate
(
  country varchar(255) NOT NULL,
  biome varchar(255),
  num_seasons tinyint,
  min_temp smallint,
  max_temp smallint,
  avg_precipitation smallint,
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

CREATE TABLE world_biomes
(
  biome varchar(255) NOT NULL,
  vegetation text,
  PRIMARY KEY(biome)
);

CREATE TABLE authors
(
  name varchar(255) NOT NULL,
  city_born_in varchar(255),
  most_popular_book varchar(255),
  birthday varchar(255),
  death varchar(255) DEFAULT NULL,
  how_died text DEFAULT NULL,
  PRIMARY KEY(name),
  FOREIGN KEY(country_born_in) REFERENCES countries(name),
  FOREIGN KEY(city_born_in) REFERENCES birthplace(city_born_in)
);

CREATE TABLE birthplace
(
  city_born_in varchar(255) NOT NULL,
  country_born_in varchar(255),
  PRIMARY KEY(city_born_in)
);

CREATE TABLE weapons
(
  primary_rifle varchar(255) NOT NULL,
  caliber varchar(255),
  country varchar(255),
  war_first_used varchar(255),
  designer varchar(255),
  PRIMARY KEY(primary_rifle),
  FOREIGN KEY(war_first_used) REFERENCES wars(war_name),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(primary_rifle) REFERENCES gats(primary_rifle)
);

CREATE TABLE gats
(
  primary_rifle varchar(255),
  still_used boolean,
  PRIMARY KEY(primary_rifle),
  FOREIGN KEY(primary rifle) REFERENCES weapons(primary_rifle)
);

CREATE TABLE military
(
  country varchar(255) NOT NULL,
  size_of int,
  most_recent_war varchar(255) DEFAULT NULL,
  num_branches tinyint,
  mandatory_service varchar(255),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(most_recent_war) REFERENCES recent_war(most_recent_war)
);

CREATE TABLE recent_war
(
  most_recent_war varchar(255) NOT NULL,
  most_recent_war_end varchar(255),
  PRIMARY KEY(most_recent_war)
);

CREATE TABLE government
(
  country varchar(255) NOT NULL,
  type_of varchar(255),
  head_leader varchar(255),
  head_political_party varchar(255),
  name_of_constitution varchar(255),
  name_of_legislative_power varchar(255),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name)
);

CREATE TABLE type_of_government
(
  type_of varchar(255),
  do_they_vote boolean,
  PRIMARY KEY(type_of)
);

CREATE TABLE food
(
  country varchar(255) NOT NULL,
  popular_food varchar(255),
  popular_drink varchar(255),
  popular_dessert varchar(255),
  popular_alcoholic_beverage varchar(255),
  obesity_rate varchar(255),
  PRIMARY KEY(country),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(popular_alcoholic_beverage) REFERENCES booze(popular_alcoholic_beverage)
);

CREATE TABLE booze
(
  popular_alcoholic_beverage varchar(255),
  popular_alcoholic_beverage_type varchar(255),
  PRIMARY KEY(popular_alcoholic_beverage)
);

CREATE TABLE disease
(
  country varchar(255) NOT NULL,
  main_disease varchar(255),
  life_expectancy_males tinyint,
  num_deaths_from_main_disease int,
  num_smokers varchar(255),
  num_people_with_hiv int,
  PRIMARY KEY (country),
  FOREIGN KEY(country) REFERENCES countries(name)
  FOREIGN KEY(main_disease) REFERENCES most_deadly_diseases(main_disease)
);

CREATE TABLE most_deadly_disease_in_country
(
  main_disease varchar(255) NOT NULL,
  main_disease_type varchar(255),
  PRIMARY KEY(main_disease)
);

CREATE TABLE flag_day
(
  date_flag_created varchar(255),
  century_flag_created varchar(255),
  PRIMARY KEY(date_flag_created)
);

CREATE TABLE flag_colors
(
  cause_of_flag_creation text NOT NULL,
  country varchar(255) NOT NULL,
  date_flag_created varchar(255),
  flag_colors varchar(255),
  PRIMARY KEY(cause_of_flag_creation),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(date_flag_created) REFERENCES flag_day(date_flag_created)
);

CREATE TABLE flag_sizes
(
  cause_of_flag_creation text NOT NULL,
  country varchar(255) NOT NULL,
  date_flag_created varchar(255),
  flag_sizes varchar(255),
  PRIMARY KEY(cause_of_flag_creation),
  FOREIGN KEY(country) REFERENCES countries(name),
  FOREIGN KEY(date_flag_created) REFERENCES flag_day(date_flag_created)
  FOREIGN KEY(cause_of_flag_creation) REFERENCES flag_colors(cause_of_flag_creation)
);