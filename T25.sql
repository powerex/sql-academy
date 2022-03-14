SELECT good_name FROM Goods
WHERE NOT EXISTS
(SELECT good FROM Payments 
WHERE good = good_id
AND date >= '2005-01-01T00:00:00.000Z'
AND date < '2006-01-01T00:00:00.000Z');