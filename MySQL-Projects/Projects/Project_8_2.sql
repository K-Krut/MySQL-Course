USE production;

DROP TABLE IF EXISTS tb_EmergencyContact;
DROP TABLE IF EXISTS Contacts;
  CREATE  TABLE Contacts (
    id int,
    firstname   VARCHAR(100) NOT NULL,
    lastname    VARCHAR(100) NOT NULL,
    relationship VARCHAR(100),
    homephone   VARCHAR(25),
    workphone   VARCHAR(25),
    cellphone   VARCHAR(25)
  ); 
  INSERT INTO Contacts (id, firstname, lastname, relationship, homephone, workphone, cellphone ) VALUES 
   (1, 'Ann', 'Smith', 'Wife', NULL, '920.176.1456', '928.132.2967' ),
   (2, 'Vika', 'McCarthy', 'spouse', NULL, NULL, '982.132.2867' ), 
   (3, 'July', 'Smith', 'Daughter', NULL, NULL, NULL ),
   (4, 'John', 'Smith', 'Son', '988.132.2867', NULL, NULL ),
   (5, 'Mike', 'Somolholder', 'producer', NULL, NULL, NULL )
