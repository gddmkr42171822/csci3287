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
MVD: continent ->> main_language, continent ->> name;
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
TFD:
MVD:
