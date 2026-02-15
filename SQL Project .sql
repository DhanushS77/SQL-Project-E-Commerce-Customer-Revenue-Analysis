/* ===============================
   DATABASE : APN
   PROJECT  : E-Commerce Customer & Revenue Analysis
   =============================== */ 
   
CREATE SCHEMA APN;
USE APN;

CREATE TABLE CUSTOMERS (
  CUSTOMER_ID INT PRIMARY KEY,
  CUSTOMER_NAME VARCHAR(50),
  CITY VARCHAR(30),
  JOIN_DATE DATE
);

INSERT INTO CUSTOMERS VALUES
(1,'Ravi Kumar','Chennai','2023-01-10'),
(2,'Anand Raj','Bangalore','2023-01-12'),
(3,'Suresh Babu','Hyderabad','2023-01-15'),
(4,'Karthik Raj','Coimbatore','2023-01-18'),
(5,'Arun Kumar','Chennai','2023-01-20'),
(6,'Vijay Prakash','Madurai','2023-01-22'),
(7,'Praveen Kumar','Salem','2023-01-25'),
(8,'Manoj Kumar','Trichy','2023-01-28'),
(9,'Sathish Kumar','Erode','2023-02-01'),
(10,'Dinesh Kumar','Vellore','2023-02-03'),
(11,'Priya Sharma','Delhi','2023-02-05'),
(12,'Anitha Devi','Chennai','2023-02-07'),
(13,'Kavitha R','Bangalore','2023-02-10'),
(14,'Divya Lakshmi','Madurai','2023-02-12'),
(15,'Meena Kumari','Coimbatore','2023-02-15'),
(16,'Nithya R','Salem','2023-02-18'),
(17,'Pooja Singh','Delhi','2023-02-20'),
(18,'Sneha Patel','Ahmedabad','2023-02-22'),
(19,'Aishwarya N','Chennai','2023-02-25'),
(20,'Keerthana S','Trichy','2023-02-28'),
(21,'Rahul Verma','Mumbai','2023-03-01'),
(22,'Amit Shah','Surat','2023-03-03'),
(23,'Rohit Gupta','Pune','2023-03-05'),
(24,'Vikram Singh','Jaipur','2023-03-07'),
(25,'Sanjay Mehta','Indore','2023-03-10'),
(26,'Neha Agarwal','Noida','2023-03-12'),
(27,'Swathi Reddy','Hyderabad','2023-03-15'),
(28,'Lakshmi Narayan','Chennai','2023-03-18'),
(29,'Balaji M','Coimbatore','2023-03-20'),
(30,'Harishankar','Madurai','2023-03-22'),
(31,'Deepak Joshi','Udaipur','2023-03-25'),
(32,'Ramesh Iyer','Trichy','2023-03-27'),
(33,'Ganesh Prasad','Bangalore','2023-03-28'),
(34,'Mohan Lal','Bikaner','2023-03-29'),
(35,'Sunil Chawla','Delhi','2023-03-30'),
(36,'Ajay Malhotra','Chandigarh','2023-04-01'),
(37,'Shalini Gupta','Noida','2023-04-03'),
(38,'Preethi S','Salem','2023-04-05'),
(39,'Naveen Kumar','Erode','2023-04-07'),
(40,'Siva Prakash','Tirunelveli','2023-04-10');

SELECT * FROM PRODUCTS; 


CREATE TABLE PRODUCTS (
  PRODUCT_ID INT PRIMARY KEY,
  PRODUCT_NAME VARCHAR(50),
  CATEGORY VARCHAR(30),
  PRICE INT
);
INSERT INTO PRODUCTS VALUES
(1,'Laptop','Electronics',55000),
(2,'Mobile','Electronics',30000),
(3,'Headphones','Electronics',3000),
(4,'Smart Watch','Electronics',8000),
(5,'Tablet','Electronics',20000),
(6,'Office Chair','Furniture',4500),
(7,'Study Table','Furniture',7000),
(8,'Sofa','Furniture',25000),
(9,'Bed','Furniture',30000),
(10,'Cupboard','Furniture',18000),
(11,'Shoes','Fashion',2500),
(12,'T-Shirt','Fashion',1200),
(13,'Jeans','Fashion',2200),
(14,'Jacket','Fashion',4500),
(15,'Watch','Fashion',6000),
(16,'Mixer Grinder','Home Appliances',5000),
(17,'Microwave','Home Appliances',15000),
(18,'Refrigerator','Home Appliances',32000),
(19,'Washing Machine','Home Appliances',28000),
(20,'Iron Box','Home Appliances',2500),
(21,'Book','Stationery',500),
(22,'Pen','Stationery',50),
(23,'Notebook','Stationery',150),
(24,'Backpack','Stationery',1800),
(25,'Calculator','Stationery',900),
(26,'Cricket Bat','Sports',3500),
(27,'Football','Sports',1200),
(28,'Badminton Racket','Sports',1800),
(29,'Tennis Ball','Sports',600),
(30,'Yoga Mat','Sports',900),
(31,'Face Cream','Personal Care',400),
(32,'Shampoo','Personal Care',350),
(33,'Perfume','Personal Care',2500),
(34,'Hair Dryer','Personal Care',3000),
(35,'Trimmer','Personal Care',1800),
(36,'Camera','Electronics',45000),
(37,'Printer','Electronics',12000),
(38,'Router','Electronics',3500),
(39,'Power Bank','Electronics',2000),
(40,'Bluetooth Speaker','Electronics',5000);
SELECT * FROM PRODUCTS;
CREATE TABLE ORDERS (
  ORDER_ID INT PRIMARY KEY,
  CUSTOMER_ID INT,
  ORDER_DATE DATE,
  STATUS VARCHAR(20)
);
INSERT INTO ORDERS VALUES
(1,1,'2024-01-05','DELIVERED'),
(2,2,'2024-01-06','DELIVERED'),
(3,3,'2024-01-07','CANCELLED'),
(4,4,'2024-01-08','DELIVERED'),
(5,5,'2024-01-09','DELIVERED'),
(6,6,'2024-01-10','DELIVERED'),
(7,7,'2024-01-11','DELIVERED'),
(8,8,'2024-01-12','CANCELLED'),
(9,9,'2024-01-13','DELIVERED'),
(10,10,'2024-01-14','DELIVERED'),
(11,11,'2024-01-15','DELIVERED'),
(12,12,'2024-01-16','DELIVERED'),
(13,13,'2024-01-17','DELIVERED'),
(14,14,'2024-01-18','CANCELLED'),
(15,15,'2024-01-19','DELIVERED'),
(16,16,'2024-01-20','DELIVERED'),
(17,17,'2024-01-21','DELIVERED'),
(18,18,'2024-01-22','DELIVERED'),
(19,19,'2024-01-23','CANCELLED'),
(20,20,'2024-01-24','DELIVERED'),
(21,21,'2024-01-25','DELIVERED'),
(22,22,'2024-01-26','DELIVERED'),
(23,23,'2024-01-27','DELIVERED'),
(24,24,'2024-01-28','CANCELLED'),
(25,25,'2024-01-29','DELIVERED'),
(26,26,'2024-01-30','DELIVERED'),
(27,27,'2024-01-31','DELIVERED'),
(28,28,'2024-02-01','DELIVERED'),
(29,29,'2024-02-02','DELIVERED'),
(30,30,'2024-02-03','CANCELLED'),
(31,31,'2024-02-04','DELIVERED'),
(32,32,'2024-02-05','DELIVERED'),
(33,33,'2024-02-06','DELIVERED'),
(34,34,'2024-02-07','DELIVERED'),
(35,35,'2024-02-08','CANCELLED'),
(36,36,'2024-02-09','DELIVERED'),
(37,37,'2024-02-10','DELIVERED'),
(38,38,'2024-02-11','DELIVERED'),
(39,39,'2024-02-12','DELIVERED'),
(40,40,'2024-02-13','DELIVERED');
SELECT * FROM ORDERS;

CREATE TABLE ORDER_ITEMS (
  ORDER_ITEM_ID INT PRIMARY KEY,
  ORDER_ID INT,
  PRODUCT_ID INT,
  QUANTITY INT
);

INSERT INTO ORDER_ITEMS VALUES
(1,1,2,1),(2,2,5,1),(3,3,1,1),(4,4,6,2),(5,5,3,2),
(6,6,10,1),(7,7,8,1),(8,8,12,3),(9,9,4,1),(10,10,7,1),
(11,11,15,1),(12,12,18,1),(13,13,20,2),(14,14,9,1),(15,15,11,2),
(16,16,16,1),(17,17,19,1),(18,18,14,1),(19,19,25,2),(20,20,13,1),
(21,21,21,3),(22,22,22,5),(23,23,23,4),(24,24,24,1),(25,25,26,1),
(26,26,27,2),(27,27,28,1),(28,28,29,3),(29,29,30,2),(30,30,31,2),
(31,31,32,3),(32,32,33,1),(33,33,34,1),(34,34,35,1),(35,35,36,1),
(36,36,37,1),(37,37,38,2),(38,38,39,2),(39,39,40,1),(40,40,1,1);




/* Q1: List all products available in the store */
SELECT * FROM PRODUCTS;


/* Q2: Find the total number of customers */
SELECT COUNT(*) AS TOTAL_CUSTOMERS FROM CUSTOMERS;


/* Q3: Find the total number of products */
SELECT COUNT(*) AS TOTAL_PRODUCTS FROM PRODUCTS;


/* Q4: Find the total number of orders */
SELECT COUNT(*) AS TOTAL_ORDERS FROM ORDERS;


/* Q5: Find the total number of order items */
SELECT COUNT(*) AS TOTAL_ORDER_ITEMS FROM ORDER_ITEMS;


/* Q6: Find the average price of products in Electronics and Furniture categories */
SELECT CATEGORY, AVG(PRICE) AS AVG_PRICE
FROM PRODUCTS
WHERE CATEGORY IN ('Electronics','Furniture')
GROUP BY CATEGORY;


/* Q7: List products whose price is between 20,000 and 40,000 */
SELECT *
FROM PRODUCTS
WHERE PRICE BETWEEN 20000 AND 40000
ORDER BY PRODUCT_ID;


/* Q8: Find products with missing product ID */
SELECT *
FROM PRODUCTS
WHERE PRODUCT_ID IS NULL;


/* Q9: List customers who joined on or before 28-Jan-2023 */
SELECT *
FROM CUSTOMERS
WHERE JOIN_DATE <= '2023-01-28';


/* Q10: Find products named Laptop OR product with ID 10 and price less than 5000 */
SELECT *
FROM PRODUCTS
WHERE PRODUCT_NAME = 'Laptop'
   OR (PRODUCT_ID = 10 AND PRICE < 5000);


/* Q11: Display name, city, and join date of customers with ID 10 and 11 */
SELECT CUSTOMER_NAME, CITY, JOIN_DATE
FROM CUSTOMERS
WHERE CUSTOMER_ID IN (10,11);


/* Q12: List products priced between 5,000 and 20,000 ordered by price descending */
SELECT *
FROM PRODUCTS
WHERE PRICE > 5000
  AND PRICE < 20000
ORDER BY PRICE DESC;


/* Q13: Find products whose average price is less than 25,000 */
SELECT PRODUCT_NAME,
       COUNT(*) AS PRODUCT_COUNT,
       AVG(PRICE) AS AVG_PRICE
FROM PRODUCTS
GROUP BY PRODUCT_NAME
HAVING AVG(PRICE) < 25000;


/* Q14: Count products whose product ID is between 10 and 30 */
SELECT PRODUCT_NAME,
       COUNT(*) AS PRODUCT_COUNT
FROM PRODUCTS
WHERE PRODUCT_ID > 10
  AND PRODUCT_ID < 30
GROUP BY PRODUCT_NAME;


/* Q15: Mask customer phone numbers except last 4 digits */
SELECT CUSTOMER_ID,
       CUSTOMER_NAME,
       CONCAT('XXXXX', RIGHT(PHONE_NUM,4)) AS MASKED_PHONE
FROM CUSTOMERS;


/* Q16: List customers who have placed at least one order with status = 'DELIVERED' */
SELECT *
FROM CUSTOMERS
WHERE CUSTOMER_ID IN (
    SELECT CUSTOMER_ID
    FROM ORDERS
    WHERE STATUS = 'DELIVERED'
);


/* Q17: Find products that are priced above the average product price */
SELECT *
FROM PRODUCTS
WHERE PRICE > (
    SELECT AVG(PRICE) FROM PRODUCTS
);


/* Q18: Find the most expensive product */
SELECT *
FROM PRODUCTS
WHERE PRICE = (
    SELECT MAX(PRICE) FROM PRODUCTS
);


/* Q19: Find customers who purchased the cheapest product */
WITH PRODUCTSS AS (
    SELECT PRODUCT_ID, PRICE
    FROM PRODUCTS
),
ORDER_ITEMSS AS (
    SELECT ORDER_ID, PRODUCT_ID
    FROM ORDER_ITEMS
),
ORDERSS AS (
    SELECT ORDER_ID, CUSTOMER_ID
    FROM ORDERS
),
CUSTOMERSSS AS (
    SELECT CUSTOMER_ID, CUSTOMER_NAME, CITY
    FROM CUSTOMERS
)
SELECT *
FROM CUSTOMERSSS
WHERE CUSTOMER_ID IN (
    SELECT CUSTOMER_ID
    FROM ORDERSS
    WHERE ORDER_ID IN (
        SELECT ORDER_ID
        FROM ORDER_ITEMSS
        WHERE PRODUCT_ID IN (
            SELECT PRODUCT_ID
            FROM PRODUCTSS
            WHERE PRICE = (SELECT MIN(PRICE) FROM PRODUCTSS)
        )
    )
);


/* Q20: Generate all possible customer–product combinations using CROSS JOIN */
SELECT P.PRODUCT_ID,
       C.CUSTOMER_ID
FROM PRODUCTS P
CROSS JOIN CUSTOMERS C;


/* Q21: Create a stored procedure to generate customer order summary within a date range */
DELIMITER $$

CREATE PROCEDURE CUSTOMER_ORDER_SUMMARY (
    IN P_CUSTOMER_ID INT,
    IN P_START_DATE DATE,
    IN P_END_DATE DATE
)
BEGIN
    SELECT 
        C.CUSTOMER_ID,
        C.CUSTOMER_NAME,
        COUNT(DISTINCT O.ORDER_ID) AS TOTAL_ORDERS,
        SUM(OI.QUANTITY * P.PRICE) AS TOTAL_PRICE,
        SUM(OI.QUANTITY * P.PRICE) / COUNT(DISTINCT O.ORDER_ID) AS AVG_ORDER_VALUE
    FROM CUSTOMERS C
    JOIN ORDERS O
        ON C.CUSTOMER_ID = O.CUSTOMER_ID
    JOIN ORDER_ITEMS OI
        ON O.ORDER_ID = OI.ORDER_ID
    JOIN PRODUCTS P
        ON OI.PRODUCT_ID = P.PRODUCT_ID
    WHERE C.CUSTOMER_ID = P_CUSTOMER_ID
      AND O.ORDER_DATE BETWEEN P_START_DATE AND P_END_DATE
    GROUP BY C.CUSTOMER_ID, C.CUSTOMER_NAME;
END $$

DELIMITER ;


/* Q22: Execute the customer order summary stored procedure */
CALL CUSTOMER_ORDER_SUMMARY(2,'2024-01-01','2024-12-31');
