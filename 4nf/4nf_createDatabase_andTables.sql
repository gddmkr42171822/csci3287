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
  biome varchar(255),
  vegetation text,
  PRIMARY KEY(biome)
);
