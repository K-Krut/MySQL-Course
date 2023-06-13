-- CREATE DATABASE production;
USE production;

DROP TABLE IF EXISTS laptops;
CREATE TABLE laptops(
    id INTEGER AUTO_INCREMENT NOT NULL,
    laptop_name VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(20) NOT NULL,
    laptop_count INTEGER DEFAULT 0,
    price DECIMAL,
    PRIMARY KEY(id)
);

INSERT INTO laptops(laptop_name, manufacturer, laptop_count, price) VALUES
	('ROGZephyrus G14 GA401QM-K2334', 'Asus', 3, 45000),
	('ROG Flow X13 GV301QE-K6033R', 'Asus', 2, 118999),
	('Swift X SFX14-41G', 'Acer', 6, 36000),
	('Nitro 5 AN515-44-R74P', 'Acer', 3, 32000),
	('MacBook Pro 16” Silver 2021', 'Apple', 1, 92000),
	('Matebook X Pro 2020', 'Huawei', 2, 43000),
	('Legion 5 15ARH05H', 'Lenovo', 4, 33000),
	('TUF Gaming A15IV ', 'Asus',  NULL, 0),
	('Aspire 7', 'Acer',  NULL, 0),
	('Swift 3', 'Acer',  NULL, 0),
	('Zenbook 3', 'Asus', 15, NULL),
	('Macbook Air 13” Silver 2021', 'Apple', 16, NULL),
	('Lap Pap 13', 'Lenovo', NULL , NULL),
	('Simple', 'Dimple', NULL, NULL),
	('Destroyed', 'Itwillbe', NULL , NULL),
	('This', 'One-too', NULL, NULL);