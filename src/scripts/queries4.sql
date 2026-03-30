SELECT * FROM Order1;
UPDATE Order1 
SET Comments = CONCAT('(s) ', Comments) 
WHERE Employee_ID IN (SELECT Employee_ID FROM Employee WHERE Spec = 'student');
SELECT * FROM Order1;
DELETE FROM Order1 
WHERE Is_Done = 0 
  AND Service_ID = (SELECT Service_ID FROM Service WHERE Name = 'Combing');
SELECT * FROM Order1;
SELECT * FROM Person;
INSERT INTO Person (Person_ID, Last_Name, First_Name, Phone, Address)
VALUES (
    (SELECT MAX(p.Person_ID) + 1 FROM Person p), 
    'Kuznetsov', 'Alex', '+79991234567', 'Nevsky pr, 10'
);
SELECT * FROM Person;
CREATE TABLE Person_Documents (
    Doc_ID      INTEGER      NOT NULL,
    Doc_Type    VARCHAR(20)  NOT NULL,
    Doc_Number  VARCHAR(30)  NOT NULL,
    Person_ID   INTEGER      NOT NULL,
    CONSTRAINT Doc_PK PRIMARY KEY (Doc_ID),
    CONSTRAINT FK_Doc_Person FOREIGN KEY (Person_ID) 
        REFERENCES Person(Person_ID)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
INSERT INTO Person_Documents (Doc_ID, Doc_Type, Doc_Number, Person_ID)
VALUES (1, 'Passport', '4012 123456', (SELECT MAX(Person_ID) FROM Person));
INSERT INTO Person_Documents (Doc_ID, Doc_Type, Doc_Number, Person_ID)
VALUES (2, 'INN', '781234567890', (SELECT MAX(Person_ID) FROM Person));
SELECT * FROM Person_Documents;
UPDATE Person 
SET Person_ID = 12
WHERE First_Name = 'Alex';
SELECT * FROM Person;
SELECT * FROM Person_Documents;
DELETE FROM Person WHERE First_Name = 'Alex';
SELECT * FROM Person_Documents;