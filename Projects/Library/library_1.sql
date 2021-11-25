DROP DATABASE library;
CREATE DATABASE library;

USE library;

CREATE TABLE Country (country_id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (country_id));
DROP TABLE Country;
/*
CREATE TABLE Country (
country_id INT NOT NULL AUTO_INCREMENT,
  country_name varchar(40) NOT NULL,
    national_language varchar(40) NOT NULL,
    UNIQUE(country_id),
  PRIMARY KEY (country_name)
);

CREATE TABLE Authors (
  author_id INT NOT NULL AUTO_INCREMENT,
  psevdo  varchar(30) NOT NULL,
  country varchar(30) NOT NULL,
    activity_period varchar(15) NOT NULL,
    rating INT(5), 
  PRIMARY KEY (author_id),
    FOREIGN KEY (country) REFERENCES Country (country_name)
);

CREATE TABLE Publisher (
  publisher_id INT NOT NULL AUTO_INCREMENT,
  publisher_name varchar(40) NOT NULL,
   country varchar(30) NOT NULL,
  rating INT(5),
  PRIMARY KEY (publisher_id),
 FOREIGN KEY (country) REFERENCES Country (country_name)
);
*/
CREATE TABLE Country (
  country_id INT NOT NULL AUTO_INCREMENT,
  country_name varchar(40) NOT NULL,
--  national_language varchar(40) NOT NULL,
  PRIMARY KEY (country_id)
);

CREATE TABLE Authors (
  author_id INT NOT NULL AUTO_INCREMENT,
  psevdo varchar(30) NOT NULL,
  country_id INT NOT NULL,
  activity_period varchar(15) NOT NULL,
  rating INT(5), 
  PRIMARY KEY (author_id),
  FOREIGN KEY (country_id) REFERENCES Country (country_id)
);
    
CREATE TABLE Publisher (
  publisher_id INT NOT NULL AUTO_INCREMENT,
  publisher_name varchar(40) NOT NULL,
  country_id INT NOT NULL,
  rating INT(5),
  PRIMARY KEY (publisher_id),
  FOREIGN KEY (country_id) REFERENCES Country (country_id)
);

INSERT INTO Country (country_id, country_name) VALUES
	(1, 'Indonesia'),
    (2, 'New Zealand'),
    (3, 'Serbia'),
    (4, 'Portugal'),
    (5, 'Peru'),
    (6, 'Yemen'),
    (7, 'Finland'),
    (8, 'Vietnam'),
    (9, 'Indonesia'),
    (10, 'Ghana');
    
    /*
insert into Kraje (kraj_id, nazwa) values (11, 'China');
insert into Kraje (kraj_id, nazwa) values (12, 'France');
insert into Kraje (kraj_id, nazwa) values (13, 'Latvia');
insert into Kraje (kraj_id, nazwa) values (14, 'Panama');
insert into Kraje (kraj_id, nazwa) values (15, 'Croatia');
insert into Kraje (kraj_id, nazwa) values (16, 'Denmark');
insert into Kraje (kraj_id, nazwa) values (17, 'Indonesia');
insert into Kraje (kraj_id, nazwa) values (18, 'South Korea');
insert into Kraje (kraj_id, nazwa) values (19, 'Malta');
insert into Kraje (kraj_id, nazwa) values (20, 'Thailand');
insert into Kraje (kraj_id, nazwa) values (21, 'Brazil');
insert into Kraje (kraj_id, nazwa) values (22, 'Sweden');
insert into Kraje (kraj_id, nazwa) values (23, 'France');
insert into Kraje (kraj_id, nazwa) values (24, 'Russia');
insert into Kraje (kraj_id, nazwa) values (25, 'Greece');
insert into Kraje (kraj_id, nazwa) values (26, 'Mauritius');
insert into Kraje (kraj_id, nazwa) values (27, 'China');
insert into Kraje (kraj_id, nazwa) values (28, 'Cameroon');
insert into Kraje (kraj_id, nazwa) values (29, 'France');
insert into Kraje (kraj_id, nazwa) values (30, 'Pakistan');

*/
INSERT INTO Authors (psevdo, country_id, activity_period, rating) VALUES
	('Elset Dash', 1, 'XX', 4),
    ('Elspeth McKall', 2, 'XIX', 3),
    ('Dannye Nulty', 3, 'XVIII', 2),
    ('Orlan Capner', 3, 'XX', 5),
    ('Emile Bluschke', 1, '1878-1927', 5),
    ('Vladimir Barkess', 5, '1750-1788', 1),
    ('Ellery Shears', 4, '1848-1888', 1),
    ('Joshia McMurdo', 6, 'XX', 2),
    ('Rebeka Thumnel', 7, 'XIX-XX', 4),
    ('Bing Bedinham', 2, 'XVIII', 3);
 
INSERT INTO Publisher (publisher_name, country_id, rating) VALUES    
	('Skimia', 1, 5),
    ('Bubbletube', 1, 4),
    ('Tazzy', 8, 2),
    ('Livefish', 1, 1),
    ('Eamia', 2, 4),
    ('Redemption', 2, 2),
    ('Tok Pisin', 3, 4),
    ('Meemm', 7, 5),
    ('Quamba', 5, 5),
    ('Yabox', 3, 1),
    ('Topicstorm', 1, 4),
    ('Topicstorm', 4, 1),
    ('Topicstorm', 2, 5);
    
ALTER TABLE Authors ADD age INT NOT NULL;
ALTER TABLE Authors ADD CHECK (age < 150);
ALTER TABLE Authors DROP COLUMN age;


