

-- select All
Select *
From TopPlayer..['top250-00-19$']
ORDER BY Market_value 
 
 --Select all and order
Select Name,Age
From TopPlayer..['top250-00-19$']
ORDER BY Age  DESC

-- order by DESC
SELECT  Market_value,Age
FROM TopPlayer..['top250-00-19$']
ORDER By Age DESC, Market_value

-- select * but use filter to data
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE Age = 20
ORDER By Age DESC, Market_value



SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name = 'Wallace'
ORDER By Age DESC, Market_value


SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name != 'United Technologies'
ORDER By Age DESC, Market_value

-- Derived Columns
SELECT name ,Age , Transfer_fee ,(Age+Transfer_fee) As total 
From TopPlayer..['top250-00-19$']


--All the player whose names start with 'C'.
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name LIKE 'C%';

--All player whose names contain the string 'one' somewhere in the name.
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name LIKE '%one%';

--All player whose names end with 's'.
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name LIKE '%s';



-- use IN 
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE Age IN (20,25);


SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name IN ('Francisco Farinós','Francis Jeffers','Pedro Munitis');


--All player whose names end with 's'.
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name NOT LIKE '%s';


SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE name NOT IN ('Francisco Farinós','Francis Jeffers','Pedro Munitis');


--AND and BETWEEN and OR 
SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE Age >= 20 AND Age <= 25


SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE  Age BETWEEN    20 AND 25

SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE Age = 20 OR Age = 21 OR Age = 22


SELECT  *
FROM TopPlayer..['top250-00-19$']
WHERE (Age = 20 OR Age = 21 OR Age = 22) AND name ='Nicolas Anelka'
