INSERT INTO customers VALUES (100, 'Michael', 'Smith','RMIT University', '394 Swanston Street', 'Melbourne', 3000, 99250000);
INSERT INTO customers VALUES (101, 'Justine', 'Chen', 'RMIT University', '52 Preston Road', 'Bundoora', 3083, 99251234);
INSERT INTO customers VALUES (102, 'Nirav', 'Patel', null, '123 Franklin St', 'Mill Park', 3082, 92349874);
INSERT INTO customers VALUES (103, 'Ken', 'Follett', 'Victoria University', '100 Ballarat Road', 'Footscray', 3011, 91894294);
INSERT INTO customers VALUES (207, 'Mary', 'Smith', null, '12 Elizabeth St', 'Ballarat', 3350, 83194361);
INSERT INTO customers VALUES (456, 'Kevin', 'Nguyen', 'Preston Accounting', '9 High Street', 'Preston', 3072, 92114365);

INSERT INTO products VALUES ('COMP1', 'Core i7 System', 'Home and Office PC', 2000, 80);
INSERT INTO products VALUES ('COMP2', 'Ryzen Pro System', 'Home and Office PC', 2500, 12);
INSERT INTO products VALUES ('COMP3', 'Super Gaming PC', 'Gaming PC', 3500, 4);
INSERT INTO products VALUES ('TABL1', 'Tablet 256GB Wi-Fi', 'Tablet', 800, 15);
INSERT INTO products VALUES ('NETW1', 'Router', 'Networking', 250, 5);
INSERT INTO products VALUES ('NETW2', 'Gateway', 'Networking', 189, 10);
INSERT INTO products VALUES ('PART1', 'DDR4 32GB', 'RAM', 230, 50);
INSERT INTO products VALUES ('PART2', '2TB HDD', 'Hard Drive', 100, 20);
INSERT INTO products VALUES ('PART3', '1TB SSD', 'Hard Drive', 220, 25);
INSERT INTO products VALUES ('PRIN1', 'Inkjet', 'Printer', 75, 18);

INSERT INTO orders VALUES (1, '12/NOV/20', 100);
INSERT INTO orders VALUES (2, '07/DEC/20', 456);
INSERT INTO orders VALUES (3, '18/JAN/21', 102);
INSERT INTO orders VALUES (4, '02/FEB/21', 101);
INSERT INTO orders VALUES (5, '16/FEB/21', 101);
INSERT INTO orders VALUES (6, '03/MAR/21', 103);

INSERT INTO order_details VALUES (1, 'COMP1', 15, 1900);
INSERT INTO order_details VALUES (1, 'NETW1', 2, 250);
INSERT INTO order_details VALUES (2, 'PART1', 4, 220);
INSERT INTO order_details VALUES (3, 'COMP2', 1, 2500);
INSERT INTO order_details VALUES (4, 'COMP1', 10, 1900);
INSERT INTO order_details VALUES (4, 'PART3', 10, 200);
INSERT INTO order_details VALUES (5, 'NETW1', 1, 250);
INSERT INTO order_details VALUES (6, 'PART3', 1, 220);
INSERT INTO order_details VALUES (6, 'PRIN1', 1, 75);

COMMIT;