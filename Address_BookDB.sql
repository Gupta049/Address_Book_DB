-- UC2
	id INTEGER PRIMARY KEY auto_increment,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20),
    Address VARCHAR(30) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(30) NOT NULL
);

-- UC3
CREATE TABLE Address_Book(
INSERT INTO Address_Book VALUES (1, "Sushil", "Gupta", "Roari", "Narkatiaganj", "Bihar", "6205806083", "sushilgupta@gmail.com");
INSERT INTO Address_Book VALUES (2, "Ravi", "Kumar", "Siswa", "Narkatiaganj1", "Bihar", "6205706081", "sandeep123@gmail.com");
INSERT INTO Address_Book VALUES (3, "Yadav", NULL, "", "LauriyaBlock", "Bihar", "6205806082", "sonu123@gmail.com");
INSERT INTO Address_Book VALUES (4, "Nath", "Gupta", "Roari", "Narkatiaganj", "Bihar", "6202692096", "sheshnathguptag432@gmail.com");
INSERT INTO Address_Book VALUES (5, "Sushil", "Gupta", "Roari", "Narkatiaganj", "Bihar", "6205406083", "sushilgupta@gmail.com");

-- UC4
UPDATE Address_Book SET FirstName = "SushilNew" WHERE id = 2;

-- UC5
DELETE FROM Address_Book WHERE FirstName = "yadav";

-- UC6
SELECT * FROM Address_Book WHERE City = "Narkatiaganj1" or State = "bihar";

-- UC7
-- SELECT COUNT(*) FROM Address_Book WHERE City = "Narkatiaganj" and State ="bihar";
SELECT COUNT(*), City, State FROM Address_Book GROUP BY City, State;

-- UC8 ORDER BY CLAUSE USE ASC OR DESC for ascending and Deascending order respectively
SELECT * FROM Address_Book ORDER BY FirstName ASC;

-- UC9 
ALTER TABLE Address_Book
ADD Type VARCHAR(20);
SELECT * FROM Address_Book;

UPDATE Address_Book SET Type = "Family" WHERE id IN (1, 4);
UPDATE Address_Book SET Type = "Profession" WHERE id = 2;
UPDATE Address_Book SET Type = "Friends" WHERE id NOT IN (1, 2, 4);

SELECT * FROM Address_Book;
SELECT COUNT(*) FROM Address_Book GROUP BY Type, FirstName;

-- UC10
SELECT COUNT(*) FROM Address_Book GROUP BY Type;

-- UC11
INSERT INTO Address_Book VALUES(6, "Sandeep", "", "Siswa", "Narkatiaganj1", "UP", "9525879855", "sandeep1234@gmail.com", "Friend");
INSERT INTO Address_Book VALUES(7, "Golu", "Gupta", "Padrauna", "Padrauna", "UP", "9875421045", "golukumar1234@gmail.com", "Family");
SELECT * FROM Address_Book;
SELECT COUNT(*) FROM Address_Book GROUP BY Type;