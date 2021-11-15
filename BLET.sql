CREATE DATABASE CourseWork;
USE CourseWork;
CREATE TABLE Finance(
	record_id varchar(20) NOT NULL, /*string or int?*/
	user_id varchar(20) NOT NULL, /*string or int?*/
	available_amount decimal(10,2) NOT NULL,
	mounth_expences decimal(10,2) NOT NULL,
	mounth_incomes decimal(10,2) NOT NULL,
	pure_profit double(10, 2) DEFAULT 0.00,
	/*какой праймери и форен???о вообще это за поля???*/
    CHECK (length(user_id) > 0  AND length(record_id) > 0),
	PRIMARY KEY (record_id),
	FOREIGN KEY (user_id) REFERENCES UserInfo(user_id)
);


CREATE TABLE UserInfo(
	user_id varchar(20) NOT NULL,
    username varchar(30) NOT NULL,
    PRIMARY KEY (user_id)
);