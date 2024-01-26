DROP TABLE customers cascade constraints;
DROP TABLE products cascade constraints;
DROP TABLE orders cascade constraints;
DROP TABLE order_details cascade constraints;

CREATE TABLE customers(
custNo   NUMBER(5),
FName VARCHAR2(50),
LName VARCHAR2(50),
businessName VARCHAR2(50),
street  VARCHAR2(20),
suburb VARCHAR2(20), 
postCode NUMBER(5),
phone NUMBER(8),
PRIMARY KEY (custNo));

CREATE TABLE products(
prodCode  VARCHAR2(6),
description VARCHAR2(25), 
category VARCHAR2(20), 
listPrice  NUMBER(6,2), 
stock NUMBER(4),
PRIMARY KEY (prodCode));

CREATE TABLE orders(
orderNo NUMBER(4),
orderDate DATE, 
custNo NUMBER(5),
PRIMARY KEY (orderNo),
FOREIGN KEY (custNo) 
REFERENCES customers (custNo));

CREATE TABLE order_details(
orderNo NUMBER(2), 
prodCode VARCHAR2(6), 
orderQty NUMBER(5), 
pricePerUnit NUMBER(6,2),
PRIMARY KEY (orderNo, prodCode),
FOREIGN KEY (orderNo) 
REFERENCES orders (orderNo),
FOREIGN KEY(prodCode) 
REFERENCES products (prodCode));

COMMIT;