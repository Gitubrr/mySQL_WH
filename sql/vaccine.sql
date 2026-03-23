CREATE TABLE Vaccine_Type
    (
        Vaccine_Type_ID INTEGER     NOT NULL,
        Name            VARCHAR(20) NOT NULL,
        Description     VARCHAR(100)        ,
        Manufacturer    VARCHAR(50)         ,
        CONSTRAINT Vaccine_Type_PK PRIMARY KEY (Vaccine_Type_ID)
    )
;

CREATE TABLE Vaccine
    (
        Vaccine_ID      INTEGER NOT NULL,
        Vaccine_Type_ID INTEGER NOT NULL,
        Date            DATE    NOT NULL,
        Document        VARCHAR(50) NOT NULL,
        Pet_ID          INTEGER NOT NULL,
        CONSTRAINT Vaccine_PK PRIMARY KEY (Vaccine_ID)
    )
;

ALTER TABLE Vaccine ADD CONSTRAINT FK_Vaccine_Type 
    FOREIGN KEY (Vaccine_Type_ID)
    REFERENCES Vaccine_Type(Vaccine_Type_ID)
;

ALTER TABLE Vaccine ADD CONSTRAINT FK_Vaccine_Pet 
    FOREIGN KEY (Pet_ID)
    REFERENCES Pet(Pet_ID)
;

INSERT INTO Vaccine_Type (Vaccine_Type_ID, Name, Description, Manufacturer) VALUES 
    (1, 'Rabies',    'Rabies vaccine',     'Merck'),
    (2, 'Distemper', 'Canine distemper',   'Zoetis')
;

INSERT INTO Vaccine (Vaccine_ID, Vaccine_Type_ID, Date, Document, Pet_ID) VALUES 
    (1, 1, '2023-09-10', 'VAC-001', 1)
;

-- DROP TABLE IF EXISTS Vaccine;
-- DROP TABLE IF EXISTS Vaccine_Type;