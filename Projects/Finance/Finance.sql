DROP DATABASE finance;
CREATE DATABASE finance;

CREATE DATABASE SOMEBD;
DROP DATABASE SOMEBD;

USE finance;

-- DROP TABLE UserInfo;

CREATE TABLE UserInfo (
  user_id VARCHAR(30) NOT NULL,
  username varchar(30) NOT NULL,
  PRIMARY KEY (user_id),
  UNIQUE KEY (username)
);

CREATE TABLE Finance (
  id INTEGER AUTO_INCREMENT NOT NULL,
  user_id VARCHAR(20) NOT NULL,
  available_amount decimal(10,2) NOT NULL,
  mounth_expences decimal(10,2) NOT NULL,
  mounth_incomes decimal(10,2) NOT NULL,
  pure_profit double(10, 2) DEFAULT 0.00,
  CHECK (pure_profit > 0),
  PRIMARY KEY (id),
  Unique(user_id),
  FOREIGN KEY (user_id) REFERENCES UserInfo(username)
);

ALTER TABLE UserInfo ADD SMTH INTEGER;
ALTER TABLE UserInfo DROP COLUMN SMTH;

INSERT INTO UserInfo VALUES
("121", "Лера"),
("433", "Вика"),
("222", "Саня"),
("667", "Дуб"),
("662", "k-krut");

INSERT INTO Finance(user_id, available_amount, mounth_expences, mounth_incomes, pure_profit)  VALUES
("k-krut", 53.50, 100.53, 99.99, 99.91),
("Дуб", 32.50, 301.00, 32.22, 99.12),
("Лера", 63.50, 111.00, 512.22, 22.15),
("Саня", 71.50, 300.00, 225.22, 31.15);

-- INSERT INTO Finance(user_id, available_amount, mounth_expences, mounth_incomes, pure_profit) VALUES
-- ("Саня", 514.50, 1123.53, 9613.99, 61399.91);
-- ("ПОРПОР", 53.50, 100.53, 99.99, 99.91);
-- (NULL, 53.50, 100.53, 99.99, 99.91);
-- ("Се", 53.50, 100.53, 99.99, -10);


UPDATE userinfo SET user_id = "666" WHERE username="Дуб";
-- DELETE FROM userinfo WHERE id = '433';