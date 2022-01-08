
-- one JOIN
SELECT Company..orders.*,
       Company..accounts.*
FROM Company..orders 
JOIN Company..accounts
ON Company..orders.account_id = Company..accounts.id;


-- TOW JOIN 
SELECT *
FROM Company..web_events
JOIN Company..accounts
ON Company..web_events.account_id = Company..accounts.id
JOIN Company..orders
ON Company..accounts.id = Company..orders.account_id


-- one JOIN use  Alias  
SELECT O.*,A.*
FROM Company..orders  O 
JOIN Company..accounts  A 
ON O.account_id = A.id;


SELECT r.name region, a.name account, 
    o.total_amt_usd/(o.total + 0.01) unit_price
FROM Company..region  r
JOIN Company..sales_reps  s
ON s.region_id = r.id
JOIN Company..accounts  a
ON a.sales_rep_id = s.id
JOIN Company..orders  o
ON o.account_id = a.id;


--LEFT and RIGHT JOINs
SELECT a.id, a.name, o.total
FROM Company..orders  O 
LEFT JOIN Company..accounts  a
ON o.account_id = a.id;


--LEFT and RIGHT JOINs
SELECT a.id, a.name, o.total
FROM Company..orders  O 
RIGHT JOIN Company..accounts  a
ON o.account_id = a.id;

SELECT a.id, a.name, o.total
FROM Company..orders  O 
LEFT OUTER JOIN Company..accounts  a
ON o.account_id = a.id;

SELECT a.id, a.name, o.total
FROM Company..orders  O 
RIGHT OUTER JOIN Company..accounts  a
ON o.account_id = a.id;


SELECT O.*, a.*
FROM Company..orders  O 
LEFT  JOIN Company..accounts  a
ON o.account_id = a.id
WHERE a.sales_rep_id = 321500 ;


SELECT O.*, a.*
FROM Company..orders  O 
LEFT JOIN Company..accounts  a
ON o.account_id = a.id
AND a.sales_rep_id = 321500 ;