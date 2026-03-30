SELECT 
    Mark 
FROM Order1 
WHERE Is_Done = 1 
    AND Employee_ID IN (
        SELECT Employee_ID 
        FROM Employee 
        WHERE Spec = 'student'
    );

SELECT 
    per.Last_Name
FROM Person per
JOIN Employee e ON per.Person_ID = e.Person_ID
WHERE e.Employee_ID NOT IN (
    SELECT DISTINCT Employee_ID 
    FROM Order1
);

SELECT 
    s.Name AS Service,
    o.Time_Order AS Time,
    per_e.Last_Name AS Employee,
    p.Nick AS Pet,
    per_o.Last_Name AS Owner
FROM Order1 o
JOIN Service s ON o.Service_ID = s.Service_ID
JOIN Employee e ON o.Employee_ID = e.Employee_ID
JOIN Person per_e ON e.Person_ID = per_e.Person_ID
JOIN Pet p ON o.Pet_ID = p.Pet_ID
JOIN Owner ow ON o.Owner_ID = ow.Owner_ID
JOIN Person per_o ON ow.Person_ID = per_o.Person_ID;

SELECT 
    Description AS all_comments 
FROM Owner 
WHERE Description IS NOT NULL

UNION

SELECT 
    Comments AS all_comments 
FROM Order1 
WHERE Comments IS NOT NULL

UNION

SELECT 
    Description AS all_comments 
FROM Pet 
WHERE Description IS NOT NULL;

SELECT 
    per.First_Name,
    per.Last_Name
FROM Person per
JOIN Employee e ON per.Person_ID = e.Person_ID
WHERE EXISTS (
    SELECT 1 
    FROM Order1 o 
    WHERE o.Employee_ID = e.Employee_ID 
        AND o.Mark = 4
);

SELECT DISTINCT
    per.First_Name,
    per.Last_Name
FROM Person per
JOIN Employee e ON per.Person_ID = e.Person_ID
JOIN Order1 o ON e.Employee_ID = o.Employee_ID
WHERE o.Mark = 4;