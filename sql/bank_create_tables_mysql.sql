
drop table if exists customer_account cascade;
drop table if exists loans cascade;
drop table if exists accounts cascade;
drop table if exists bankcustomers cascade;
drop table if exists branch cascade;

CREATE TABLE branch (
  BranchNo          integer(3),
  BName             varchar(30),
  Location          varchar(30),
  BPhone            integer(10),
  PRIMARY KEY (BranchNo)
);
  
CREATE TABLE bankcustomers (
  CustID             integer(6),
  FName              varchar(30),
  LName              varchar(30),
  Address            varchar(30),
  Suburb             varchar(30),
  PostCode           integer(4),
  CPhone             numeric(10),
  BranchNo           integer(3),
  PRIMARY KEY (CustID)
  , FOREIGN KEY (BranchNo) REFERENCES branch (BranchNo)
);

CREATE TABLE accounts (
  AccID              integer(3),
  AccType            varchar(10),
  ABalance           decimal (10,2),
  LimitAmount        decimal (10,2), -- limit is an oracle reserved word
  ADateCreated       DATE,
  PRIMARY KEY (AccID)
);
 

CREATE TABLE loans (
  LoanID             integer(4),
  LoanType           varchar(12),
  Amount             decimal (10,2),
  Term               integer (3),
  Percent            decimal (3,1),
  LBalance           decimal (10,2),
  LDateCreated       DATE,
  CustID             integer(6),
  PRIMARY KEY (LoanID),
  FOREIGN KEY (CustID) REFERENCES bankcustomers (CustID)
);


CREATE TABLE customer_account(
  CustID             integer(6),
  AccID              integer(10),
  PRIMARY KEY (CustID,AccID),
  FOREIGN KEY (CustID) REFERENCES bankcustomers (CustID),
  FOREIGN KEY (AccID) REFERENCES accounts (AccID)
);
  
commit;
