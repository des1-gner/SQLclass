DROP TABLE if exists customers;
DROP TABLE if exists products;
DROP TABLE if exists orders;
DROP TABLE if exists order_details;

CREATE TABLE customers(
	custNo numeric(5),
	FName varchar(50),
	LName varchar(50),
	businessName varchar(50),
	street varchar(20),
	suburb varchar(20), 
	postCode numeric(5),
	phone numeric(8),
	PRIMARY KEY (custNo)
);

CREATE TABLE products(
	prodCode varchar(6),
	description varchar(25), 
	category varchar(20), 
	listPrice numeric(6,2), 
	stock numeric(4),
	PRIMARY KEY (prodCode)
);

CREATE TABLE orders(
	orderNo numeric(4),
	orderDate DATE, 
	custNo numeric(5),
	PRIMARY KEY (orderNo),
	FOREIGN KEY (custNo) REFERENCES customers (custNo)
);

CREATE TABLE order_details(
	orderNo numeric(4), 
	prodCode varchar(6), 
	orderQty numeric(5), 
	pricePerUnit numeric(6,2),
	PRIMARY KEY (orderNo, prodCode),
	FOREIGN KEY (orderNo) REFERENCES orders (orderNo),
	FOREIGN KEY (prodCode) REFERENCES products (prodCode)
);

COMMIT;