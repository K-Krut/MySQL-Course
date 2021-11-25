CREATE DATABASE hyeta;
DROP DATABASE hyeta;

USE coursework;
-- DROP TABLE UserInfo;
CREATE TABLE UserInfo (
  id VARCHAR(30) NOT NULL,
  username varchar(30) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY (username)
);

ALTER TABLE UserInfo ADD HER INTEGER;
ALTER TABLE UserInfo DROP COLUMN HER;

INSERT INTO UserInfo VALUES
	("121", "Лера"),
	("433", "Вика"),
	("222", "Саня"),
	("667", "Дуб"),
	("662", "k-krut");
UPDATE userinfo SET id = "666"
WHERE username="Дуб";
DELETE FROM userinfo
WHERE id = '433';

USE coursework;
-- DROP TABLE Finance;
CREATE TABLE Finance (
  id INTEGER AUTO_INCREMENT NOT NULL, /*string or int?*/
  user_id VARCHAR(20) NOT NULL, /*string or int?*/
  available_amount decimal(10,2) NOT NULL,
  mounth_expences decimal(10,2) NOT NULL,
  mounth_incomes decimal(10,2) NOT NULL,
  pure_profit double(10, 2) DEFAULT 0.00,
  PRIMARY KEY (id),
  Unique(user_id),
  FOREIGN KEY (user_id) REFERENCES UserInfo(username)
);
INSERT INTO Finance(user_id, available_amount, mounth_expences, mounth_incomes,pure_profit)  VALUES
	("k-krut", 53.50, 100.53, 99.99, 99.91),
	("Дуб", 32.50, 301.00, 32.22, 99.12),
	("Лера", 63.50, 111.00, 512.22, 22.15),
	("Саня", 71.50, 300.00, 225.22, 31.15);

-- INSERT INTO Finance(user_id, available_amount, mounth_expences, mounth_incomes,pure_profit) VALUES
-- ("3947hkg3g", 514.50, 1123.53, 9613.99, 61399.91);
-- ("Серёженька", 53.50, 100.53, 99.99, 99.91);
-- (NULL, 53.50, 100.53, 99.99, 99.91);
-- ("Се", 53.50, 100.53, 99.99, -10);



CREATE TABLE Books (
	book_id INT NOT NULL AUTO_INCREMENT,
	title varchar(40) NOT NULL,
	author_id INT NOT NULL,
	year_of_publishing INT NOT NULL,
    genre varchar(20) /*NOT NULL*/,
	language_ varchar(20) NOT NULL,
	publisher_id varchar(40) NOT NULL,
	file_format varchar(10)  /*NOT NULL*/,
	style varchar(20) NOT NULL,
	country_id INT NOT NULL,
	-- number_of publishing INT NOT NULL,
	amount INT NOT NULL,
	PRIMARY KEY (book_id)
);

CREATE TABLE Authors (
	author_id INT NOT NULL AUTO_INCREMENT,
	psevdo /*name*/ varchar(30) NOT NULL,
	country_id INT NOT NULL,
    activity_period varchar(15) NOT NULL,
    rating INT(5), /*//////////////////////////////////////////////////////////*/
	PRIMARY KEY (author_id)
);

CREATE TABLE Country (
	country_id INT NOT NULL AUTO_INCREMENT,
	country_name varchar(40) NOT NULL,
	PRIMARY KEY (country_id)
);

CREATE TABLE Styles (
	style_id INT NOT NULL AUTO_INCREMENT,
	style_name varchar(30) NOT NULL,
	time_period varchar(40) NOT NULL,
    style_description varchar(150) NOT NULL,
	PRIMARY KEY (style_id)
);

CREATE TABLE Genres (
	genre_id INT NOT NULL AUTO_INCREMENT,
	genre_name varchar(40) NOT NULL,
    genre_description varchar(150) NOT NULL,
	literature_type varchar(40) NOT NULL,
	genre_type varchar(40) NOT NULL,
	PRIMARY KEY (genre_id)
);

CREATE TABLE Publisher (
	publisher_id INT NOT NULL AUTO_INCREMENT,
	publisher_name varchar(40) NOT NULL,
	country_id INT NOT NULL,
	rating INT(5),
	PRIMARY KEY (publisher_id)
);


CREATE TABLE Authors (
	author_id INT NOT NULL AUTO_INCREMENT,
	psevdo /*name*/ varchar(30) NOT NULL,
	country_id INT NOT NULL,
    activity_period varchar(15) NOT NULL,
    rating INT(5), /*//////////////////////////////////////////////////////////*/
	PRIMARY KEY (author_id)
);

CREATE TABLE Country (
	country_id INT NOT NULL AUTO_INCREMENT,
	country_name varchar(40) NOT NULL,
	PRIMARY KEY (country_id)
);

CREATE TABLE Styles (
	style_id INT NOT NULL AUTO_INCREMENT,
	style_name varchar(30) NOT NULL,
	time_period varchar(40) NOT NULL,
    style_description varchar(150) NOT NULL,
	PRIMARY KEY (style_id)
);

INSERT INTO Styles (style_name, time_period, style_description)  VALUES
	("k", "j", "k", "gjl"),
	("b", "jf", "kf", "hfgf"),
	("kek", "jf", "ghkvkf", "hfgf"),
	("lol", "n", "h", "kgf"),
	("her", "fhcha", "m", "kgfh"),
	("blia", "jh", "kh", "k");
    
    
INSERT INTO Genres (genre_name, genre_description, literature_type, genre_type)  VALUES
	("k", "j", "k", "gjl"),
	("b", "jf", "kf", "hfgf"),
	("n", "jf", "kf", "hfgf"),
	("h", "jf", "kf", "hfgf"),
	("c", "juy", "h", "kgf"),
	("g", "wa", "m", "kgfh"),
	("f", "jh", "kh", "k");
