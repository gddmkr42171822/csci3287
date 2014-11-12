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
  PRIMARY KEY (name)
);

/*
countries table
-----------------
TFD: name -> main_language, main_language does not -> name, main_language -> nationality
MVD:
*/

CREATE TABLE population_characteristics
(
  country varchar(255) NOT NULL,
  main_religion varchar(255),
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
TFD: country -> unemployment_rate, unemployment_rate does not -> country, unemployment_rate -> fertility rate
MVD:
*/

CREATE TABLE wars
(
  war_name varchar(255) NOT NULL,
  year_began smallint,
  continent varchar(255),
  casualties int,
  reason_began text,
  main_loser varchar(255),
  PRIMARY KEY(war_name),
  FOREIGN KEY(main_loser) REFERENCES countries(name)
);

/*wars table
--------------
TFD: reason_began -> year_began, year_began does not -> reason_began, year_began -> main_loser
MVD:
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
MVD:
*/

/*
CREATE TABLE terrain
(
  num_mountains tinyint,
);
*/
