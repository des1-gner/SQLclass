INSERT INTO branch values(10, 'MyBank - City', 'Carlton', 0391234567);
INSERT INTO branch values(20, 'MyBank - West', 'Sunshine', 0398967453);
INSERT INTO branch values(30, 'MyBank - North', 'Coburg', 0398967411);

INSERT INTO bankcustomers values(345678, 'Ann','Grisham','100 Preston Street','Melbourne', 3000, 04212344321, 10);
INSERT INTO bankcustomers values(345677, 'Ron','Weasley','2 Ballarat Road', 'Melbourne', 3010, 04211119999, 10);
INSERT INTO bankcustomers values(345676, 'Sidney','Tolkien','17 Caroline Walk', 'Taylors Hill', 3124, 04299991111, 20);
INSERT INTO bankcustomers values(345675, 'Eragon','Paolini','12 Narnia Close', 'Caroline Springs', 3023, 04221349876, 20);
INSERT INTO bankcustomers values(345674, 'Frodo','Baggins','3 Mount Doom Road', 'Bag End', 3100, 04229384756, 20);
INSERT INTO bankcustomers values(345673, 'Bilbo','Baggins','3 Mount Doom Road', 'Bag End', 3100, 04213456789, 20);
INSERT INTO bankcustomers values(345672, 'Dan','Follett','120 Long Road', 'Ballarat', 3185, 02496127654, 10);
INSERT INTO bankcustomers values(345671, 'Peter','Higgins','12 Noidea Street', 'Coburg', 3058, 04277778888, 30);
INSERT INTO bankcustomers values(345670, 'Mia','Sheldon','12 Noidea Street', 'Coburg', 3058, 04261328945, 30);

INSERT INTO accounts values(111, 'Savings', 53000.00, NULL, '1998-1-12');
INSERT INTO accounts values(112, 'Savings', 32000.00, NULL, '2009-3-18');
INSERT INTO accounts values(113, 'Savings', 5000.00, NULL, '2011-10-11');
INSERT INTO accounts values(114, 'Savings', 8000.00, NULL, '2017-12-05');
INSERT INTO accounts values(115, 'Savings', 24500.00, NULL, '2018-10-10'); 
INSERT INTO accounts values(201, 'Credit', 2500.00, 7500.00, '2017-2-19');
INSERT INTO accounts values(202, 'Credit', 1400.00, 5000.00, '2019-2-03');
INSERT INTO accounts values(203, 'Credit', 1000.00, 2000.00, '2011-9-05');
INSERT INTO accounts values(204, 'Credit', 1200.00, 7500.00, '2012-11-10');
INSERT INTO accounts values(205, 'Credit', 3000.00, 5000.00, '2019-3-08'); 

INSERT INTO loans values(9000, 'HomeLoan', 400000.00, 25, 3.5, 250000.00, '2001-2-01',345678);
INSERT INTO loans values(9001, 'HomeLoan', 200000.00, 20, 3.5, 50000.00, '2005-3-01',345677);
INSERT INTO loans values(9002, 'HomeLoan', 300000.00, 20, 3.5, 250000.00, '2016-5-15',345676);
INSERT INTO loans values(9003, 'HomeLoan', 500000.00, 15, 3.5, 450000.00, '2004-3-03',345675);
INSERT INTO loans values(9004, 'PersonalLoan', 10000.00, 3, 6.5, 7000.00, '2018-5-18',345678);
INSERT INTO loans values(9005, 'PersonalLoan', 20000.00, 4, 6.5, 16000.00, '2018-5-12',345677);
INSERT INTO loans values(9006, 'PersonalLoan', 10000.00, 3, 6.5, 9500.00, '2019-1-11',345674);
INSERT INTO loans values(9007, 'CarLoan', 50000.00, 5, 8.5, 48000.00, '2018-12-05',345674);
INSERT INTO loans values(9008, 'CarLoan', 50000.00, 5, 8.5, 50000.00, '2019-8-06',345673);

INSERT INTO customer_account values(345674, 111);
INSERT INTO customer_account values(345673, 111);
INSERT INTO customer_account values(345674, 201);
INSERT INTO customer_account values(345673, 201);
INSERT INTO customer_account values(345678, 112);
INSERT INTO customer_account values(345677, 113);
INSERT INTO customer_account values(345676, 114);
INSERT INTO customer_account values(345675, 202);
INSERT INTO customer_account values(345674, 203);
INSERT INTO customer_account values(345673, 204);
INSERT INTO customer_account values(345672, 205);
INSERT INTO customer_account values(345671, 115);
INSERT INTO customer_account values(345670, 115);

commit;


