INSERT INTO Person(Person_ID, Last_Name, First_Name, Phone, Address) VALUES 
    (1,  'Ivanov',   'Vania',  '+79123456789', 'Srednii pr VO, 34-2'),
    (2,  'Petrov',   'Petia',  '+79234567890', 'Sadovaia ul, 17\\2-23'),
    (3,  'Vasiliev', 'Vasia',  '+7345678901',  'Nevskii pr, 9-11'),
    (4,  'Orlov',    'Oleg',   '+7456789012',  '5 linia VO, 45-8'),
    (5,  'Galkina',  'Galia',  '+7567890123',  '10 linia VO, 35-26'),
    (6,  'Sokolov',  'S.',     '+7678901234',  'Srednii pr VO, 27-1'),
    (7,  'Vorobiev', 'Vova',   '123-45-67',    'Universitetskaia nab, 17'),
    (8,  'Ivanov',   'Vano',   '+7789012345',  'Malyi pr VO, 33-2'),
    (9,  'Sokolova', 'Sveta',  '234-56-78',    NULL),
    (10, 'Zotov',    'Misha',  '111-56-22',    NULL)
;

INSERT INTO Owner(Owner_ID, Description, Person_ID) VALUES 
    (1, 'good boy',            2),
    (2, NULL,                  3),
    (3, NULL,                  5),
    (4, 'from the ArtsAcademy',6),
    (5, NULL,                  8),
    (6, 'mean',                9)
;

INSERT INTO Employee(Employee_ID, Spec, Person_ID) VALUES 
    (1, 'boss',       1),
    (2, 'hairdresser',4),
    (3, 'student',    7),
    (4, 'student',    10)
;

INSERT INTO Pet_Type(Pet_Type_ID, Name) VALUES 
    (1, 'DOG'),
    (2, 'CAT'),
    (3, 'COW'),
    (4, 'FISH')
;

INSERT INTO Pet(Pet_ID, Nick, Breed, Age, Description, Pet_Type_ID, Owner_ID) VALUES 
    (1,  'Bobik',    'unknown', 3,  NULL,       1, 1),
    (2,  'Musia',    NULL,      12, NULL,       2, 1),
    (3,  'Katok',    NULL,      2,  'crazy guy',2, 1),
    (4,  'Apelsin',  'poodle',  5,  NULL,       1, 2),
    (5,  'Partizan', 'Siamese', 5,  'very big', 2, 2),
    (6,  'Daniel',   'spaniel', 14, NULL,       1, 3),
    (7,  'Model',    NULL,      5,  NULL,       3, 4),
    (8,  'Markiz',   'poodle',  1,  NULL,       1, 5),
    (9,  'Zombi',    'unknown', 7,  'wild',     2, 6),
    (10, 'Las',      'Siamese', 7,  NULL,       2, 6)
;

INSERT INTO Service(Service_ID, Name) VALUES 
    (1, 'Walking'),
    (2, 'Combing'),
    (3, 'Milking')
;

INSERT INTO Employee_Service(Employee_ID, Service_ID, Is_Basic) VALUES 
    (1, 1, 0),
    (1, 2, 0),
    (1, 3, 1),
    (2, 1, 0),
    (2, 2, 1),
    (3, 1, 1)
;

INSERT INTO Order1(Order_ID, Owner_ID, Service_ID, Pet_ID, Employee_ID, Time_Order, Is_Done, Mark, Comments) VALUES 
    (1,  1, 1, 1, 3, '2023-09-11 08:00', 1, 5, NULL),
    (2,  1, 2, 2, 2, '2023-09-11 09:00', 1, 4, NULL),
    (3,  1, 2, 3, 2, '2023-09-11 09:00', 1, 4, 'That cat is crazy!'),
    (4,  1, 1, 1, 3, '2023-09-11 00:00', 1, 5, NULL),
    (5,  1, 1, 1, 3, '2023-09-16 11:00', 1, 3, 'Comming late'),
    (6,  1, 1, 1, 3, '2023-09-17 17:00', 1, 5, NULL),
    (7,  1, 2, 2, 2, '2023-09-17 18:00', 1, 5, NULL),
    (8,  2, 1, 5, 3, '2023-09-17 18:00', 1, 4, NULL),
    (9,  2, 1, 4, 3, '2023-09-17 10:00', 1, 4, NULL),
    (10, 2, 1, 5, 3, '2023-09-18 17:00', 1, 4, NULL),
    (11, 2, 1, 4, 3, '2023-09-18 18:00', 1, 4, NULL),
    (12, 2, 1, 5, 3, '2023-09-18 12:00', 1, 4, NULL),
    (13, 2, 1, 4, 3, '2023-09-18 14:00', 1, 4, NULL),
    (14, 3, 1, 6, 3, '2023-09-19 10:00', 1, 5, NULL),
    (15, 3, 2, 6, 2, '2023-09-19 18:00', 0, 0, NULL),
    (16, 3, 1, 6, 3, '2023-09-20 10:00', 0, 0, NULL),
    (17, 3, 1, 6, 3, '2023-09-20 11:00', 0, 0, NULL),
    (18, 3, 1, 6, 3, '2023-09-22 10:00', 0, 0, NULL),
    (19, 3, 1, 6, 3, '2023-09-23 10:00', 0, 0, NULL),
    (20, 4, 3, 7, 1, '2023-09-30 11:00', 1, 5, NULL),
    (21, 4, 3, 7, 1, '2023-10-01 11:00', 0, 0, NULL),
    (22, 4, 3, 7, 1, '2023-10-02 11:00', 0, 0, NULL),
    (23, 5, 2, 8, 2, '2023-10-03 16:00', 0, 0, NULL)
;

INSERT INTO Vaccine_Type (Vaccine_Type_ID, Name, Description, Manufacturer) VALUES 
    (1, 'Rabies',    'Rabies vaccine',     'Merck'),
    (2, 'Distemper', 'Canine distemper',   'Zoetis')
;

INSERT INTO Vaccine (Vaccine_ID, Vaccine_Type_ID, Date, Document, Pet_ID) VALUES 
    (1, 1, '2023-09-10', 'VAC-001', 1)
;
