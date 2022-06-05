
/*MS SQL SERVER*/
SELECT CONCAT(Name, "(", LEFT(Occupation,1),")") FROM OCCUPATIONS
ORDER BY Name

SELECT "There are a total of ",COUNT(occupation), CONCAT(LOWER(occupation), "s.") FROM OCCUPATIONS GROUP BY occupation
ORDER BY COUNT(occupation), occupation;