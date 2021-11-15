CREATE DATABASE CourseWork;
USE CourseWork;
CREATE TABLE Finance(
	record_id int(20) NOT NULL, 
	user_id varchar(30) NOT NULL, 
	available_amount decimal(10,2) NOT NULL,
	mounth_expences decimal(10,2) NOT NULL,
	mounth_incomes decimal(10,2) NOT NULL,
	pure_profit double(10, 2) DEFAULT 0.00,
	/*какой праймери и форен???о вообще это за поля???*/
	PRIMARY KEY (record_id),
	FOREIGN KEY (user_id) REFERENCES UserInfo(user_id)
);