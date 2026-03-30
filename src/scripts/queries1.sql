SELECT * 
FROM Pet 
WHERE Nick = 'Partizan';

SELECT 
    Nick, 
    Breed 
FROM Pet 
ORDER BY Age;

SELECT * 
FROM Pet 
WHERE NOT Description IS NULL;

SELECT 
    AVG(Age) AS Average_Poodle_Age 
FROM Pet 
WHERE Breed = 'poodle';

SELECT 
    COUNT(DISTINCT Owner_ID) AS Ownews_Num 
FROM Pet;

SELECT 
    Breed, 
    COUNT(*) AS Total 
FROM Pet 
GROUP BY Breed;

SELECT 
    Breed, 
    COUNT(*) AS Total 
FROM Pet 
GROUP BY Breed 
HAVING Total > 1;

SELECT 
    Nick, 
    Age 
FROM Pet 
WHERE Age BETWEEN 3 AND 7;

SELECT * 
FROM Pet 
WHERE Nick LIKE '%a%';

SELECT 
    Nick, 
    Breed 
FROM Pet 
WHERE Breed IN ('poodle', 'Siamese');