drop table branch cascade constraints;
drop table bankcustomers cascade constraints;
drop table accounts cascade constraints;
drop table loans cascade constraints;
drop table customer_account cascade constraints;

CREATE TABLE branch (
  BranchNo           NUMBER(3),
  BName              VARCHAR2(30),
  Location           VARCHAR2(30),
  BPhone             NUMBER(10),
  CONSTRAINT pk_branch PRIMARY KEY (BranchNo));
  
CREATE TABLE bankcustomers (
  CustID             NUMBER(6),
  FName              VARCHAR2(30),
  LName              VARCHAR2(30),
  Address            VARCHAR2(30),
  Suburb             VARCHAR2(30),
  PostCode           NUMBER(4),
  CPhone             NUMBER(10),
  BranchNo           NUMBER(3),
  CONSTRAINT pk_bcustomers PRIMARY KEY (CustID),
  CONSTRAINT fk_bcustomers FOREIGN KEY (BranchNo) 
  REFERENCES branch (BranchNo));
  
CREATE TABLE accounts (
  AccID              NUMBER(3),
  AccType            VARCHAR2(10),
  ABalance           NUMBER (10,2),
  Limit              NUMBER (10,2),
  ADateCreated       DATE,
  CONSTRAINT pk_acc PRIMARY KEY (AccID));
  
CREATE TABLE loans (
  LoanID             NUMBER(4),
  LoanType           VARCHAR2(12),
  Amount             NUMBER (10,2),
  Term               NUMBER (3),
  Percent            NUMBER (3,1),
  LBalance           NUMBER (10,2),
  LDateCreated       DATE,
  CustID             NUMBER(6),
  CONSTRAINT pk_loan1 PRIMARY KEY (LoanID),
  CONSTRAINT fk_loan1 FOREIGN KEY (CustID) 
  REFERENCES bankcustomers (CustID));
  
 CREATE TABLE customer_account(
  CustID             NUMBER(6),
  AccID              NUMBER(10),
  CONSTRAINT pk_ca PRIMARY KEY (CustID,AccID),
  CONSTRAINT fk_ca1 FOREIGN KEY (CustID) 
  REFERENCES bankcustomers (CustID),
  CONSTRAINT fk_ca2 FOREIGN KEY (AccID) 
  REFERENCES accounts (AccID)); 
  
  commit;
