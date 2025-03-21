-- List all properties in London priced under £400,000
SELECT * FROM PROPERTY
WHERE PLOCATION = 'London' AND PASKING_PRICE < 400000;

-- Find all properties managed by a specific branch
SELECT P.*
FROM PROPERTY P
JOIN MANAGED_P MP ON P.PID = MP.PROPERTY
WHERE MP.BRANCH = 'B001';

-- Count how many properties each customer has viewed
SELECT CUSTOMER, COUNT(*) AS NUM_VIEWINGS
FROM VIEWING
GROUP BY CUSTOMER;

-- Show details of properties that have been sold
SELECT P.PID, P.PADDRESS, S.SELLING_PRICE, S.SOLD_TO
FROM PROPERTY P
JOIN SOLD S ON P.PID = S.SOLD_PROPERTY;

-- List staff names and the branches they work at
SELECT S.SNAME, B.BCODE
FROM STAFF S
JOIN EMPLOYMENT E ON S.SID = E.STAFF
JOIN BRANCH B ON E.BRANCH = B.BCODE;
