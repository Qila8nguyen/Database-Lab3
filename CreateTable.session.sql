CREATE TABLE IF NOT EXISTS Employee (
  Fname NVARCHAR(255) NOT NULL,
  Minit NVARCHAR(255) NOT NULL,
  Lname NVARCHAR(255) NOT NULL,
  SSN INT PRIMARY KEY,
  Bdate DATE NOT NULL,
  Addre NVARCHAR(255) NOT NULL,
  Sex CHAR,
  Constraint ch_sex CHECK (Sex IN ('F', 'M')),
  Salary INT NOT NULL,
  Super_SSN INT,
  DNO INT NOT NULL
);
CREATE TABLE IF NOT EXISTS Department (
  Dname NVARCHAR(255) NOT NULL,
  Dnumber INT PRIMARY KEY,
  Mgr_ssn INT,
  Mgr_start_date DATE
);
CREATE TABLE IF NOT EXISTS Dept_Location (
  Dnumber INT,
  FOREIGN KEY (Dnumber) REFERENCES Department(Dnumber),
  DLocation NVARCHAR(255),
  PRIMARY KEY (Dnumber, DLocation)
);
CREATE TABLE IF NOT EXISTS Project (
  Pname NVARCHAR(255),
  Pnumber INT PRIMARY KEY,
  Plocation NVARCHAR(255),
  Dnum INT,
  FOREIGN KEY (Dnum) REFERENCES Department(Dnumber)
);
CREATE TABLE IF NOT EXISTS Dependents (
  ESSN INT,
  FOREIGN KEY (ESSN) REFERENCES Employee (SSN),
  Dependent_name NVARCHAR (255),
  PRIMARY KEY (ESSN, Dependent_name),
  Sex CHAR,
  Constraint check_sex CHECK (Sex IN ('F', 'M')),
  Bdate DATE NOT NULL,
  Relationship NVARCHAR(255)
);
CREATE TABLE IF NOT EXISTS WORKS_ON(
  ESSN INT,
  FOREIGN KEY (ESSN) REFERENCES Employee (SSN),
  Pno INT,
  FOREIGN KEY (Pno) REFERENCES Project(Pnumber),
  Hours_value Float
);