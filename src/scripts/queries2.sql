SELECT 
    p.Nick AS 'Nick',
    pt.Name AS 'Name'
FROM Pet AS p 
JOIN Pet_Type AS pt ON p.Pet_Type_ID = pt.Pet_Type_ID 
WHERE p.Nick = 'Partizan';
SELECT 
    p.Nick AS 'Nick', 
    p.Breed AS 'Breed', 
    p.Age AS 'Age'
FROM Pet AS p
JOIN Pet_Type AS pt ON p.Pet_Type_ID = pt.Pet_Type_ID
WHERE pt.Name = 'DOG';
SELECT AVG(p.Age) AS 'Average age of cats'
FROM Pet p
JOIN Pet_Type pt ON p.Pet_Type_ID = pt.Pet_Type_ID
WHERE pt.Name = 'CAT';
SELECT o.Time_Order, per.First_Name, per.Last_Name
FROM Order1 o
JOIN Employee e ON o.Employee_ID = e.Employee_ID
JOIN Person per ON e.Person_ID = per.Person_ID
WHERE o.Is_Done = 0;
SELECT p.First_Name, p.Last_Name, p.Phone
FROM Person p
JOIN Owner o ON p.Person_ID = o.Person_ID;
SELECT pt.Name AS 'Name', p.Nick AS 'Nick'
FROM Pet_Type pt
LEFT JOIN Pet p ON pt.Pet_Type_ID = p.Pet_Type_ID;
SELECT pt.Name AS 'Name', p.Age AS 'Age', COUNT(*) AS 'Count'
FROM Pet p
JOIN Pet_Type pt ON p.Pet_Type_ID = pt.Pet_Type_ID
GROUP BY pt.Name, p.Age
ORDER BY pt.Name, p.Age;
SELECT per.Last_Name, COUNT(o.Order_ID) AS 'Done'
FROM Order1 o
JOIN Employee e ON o.Employee_ID = e.Employee_ID
JOIN Person per ON e.Person_ID = per.Person_ID
WHERE o.Is_Done = 1
GROUP BY per.Last_Name
HAVING COUNT(o.Order_ID) > 3;
-- Фамилия хозяина, Кличка животного, Название вакцины, Дата, когда это произошло. 
-- Отсортировано так, чтобы самые свежие прививки были вверху
SELECT 
    per.Last_Name AS 'Owner', 
    p.Nick AS 'Pet', 
    vt.Name AS 'Vaccine_Name', 
    v.Date AS 'Date'
FROM Person per
JOIN Owner o ON per.Person_ID = o.Person_ID
JOIN Pet p ON o.Owner_ID = p.Owner_ID
JOIN Vaccine v ON p.Pet_ID = v.Pet_ID
JOIN Vaccine_Type vt ON v.Vaccine_Type_ID = vt.Vaccine_Type_ID
ORDER BY v.Date DESC;
SELECT 
    per.Last_Name AS 'Owner', 
    p.Nick AS 'Pet', 
    vt.Name AS 'Vaccine_Name', 
    v.Date AS 'Date'
FROM 
    Person per, 
    Owner o, 
    Pet p, 
    Vaccine v, 
    Vaccine_Type vt
WHERE 
    per.Person_ID = o.Person_ID 
    AND o.Owner_ID = p.Owner_ID 
    AND p.Pet_ID = v.Pet_ID 
    AND v.Vaccine_Type_ID = vt.Vaccine_Type_ID
ORDER BY v.Date DESC;