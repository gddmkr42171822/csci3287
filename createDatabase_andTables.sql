CREATE DATABASE db_project;
USE db_project;

CREATE TABLE countries
(
  name varchar(255)
  language varchar(255)
  nationality varchar(255)
  population bigint
  continent varchar(255)
  capitol varchar(255)
  PRIMARY KEY (name)
  #FOREIGN KEY ()
);

#TFD: name -> language, language does not -> name, language -> nationality
#MVD: continent ->> language, continent ->> name;

INSERT INTO countries (name, language, nationality, population, continent, capitol);
VALUES ('germany', 'german', 'german', 80620000, 'europe', 'berlin');
