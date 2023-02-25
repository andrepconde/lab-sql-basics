USE bank;
#Query1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

#Query2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

# Query3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

# Query4
SELECT DISTINCT(status)
FROM loan
ORDER BY status ASC;

#Query5
SELECT *
FROM loan;

SELECT loan_id, payments
FROM loan
ORDER BY payments DESC
LIMIT 1;

# Query6

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

# Query7
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 1;

# Query8
SELECT DISTINCT(k_symbol)
FROM bank.order
ORDER BY k_symbol ASC;

# Query 9
SELECT order_id, account_id
FROM bank.order
WHERE account_id = 34;

# QUERY 10
SELECT DISTINCT (account_id)
FROM bank.order
WHERE order_id >= 29540 AND order_id <= 29560;

# Query 11
SELECT amount
FROM bank.order
WHERE account_to = 30067122;

# Query 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

# Query 13
SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id  < 10
GROUP BY district_id
ORDER BY district_id ASC;

# QUERY 14
SELECT type, COUNT(TYPE)
FROM card
GROUP BY type
ORDER BY COUNT(type) DESC;

# QUERY 15
SELECT account_id, amount
FROM loan
ORDER BY amount DESC
LIMIT 10;

# QUERY 16
SELECT date, COUNT(loan_id)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

# QUERY 17
SELECT date, duration, count(loan_id)
FROM loan
WHERE date BETWEEN 971201 and 971231
GROUP BY date, duration
ORDER BY date ASC;

USE bank;

# QUERY 18

SELECT *
FROM trans
WHERE account_id = 396;

SELECT account_id,type,  SUM(amount)
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;

# QUERY 19
SELECT account_id,
	CASE 
		WHEN type = "PRIJEM" THEN "INCOMING"
		WHEN type = "VYDAJ" THEN "OUTGOING"
		END as transaction_type,
FLOOR(SUM(amount)) AS Total
FROM trans
WHERE account_id = 396
GROUP BY type, account_id, transaction_type;

#STOPPED HERE AS INSTRUCTED BY THE BOSS

# QUERY 20
SELECT account_id, FLOOR(SUM(amount))
FROM trans
SUM(GROUP BY type);






# QUERY 21


