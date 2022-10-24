ALTER TABLE Dept_Location DROP PRIMARY KEY;
ALTER TABLE Dept_Location
ADD PRIMARY KEY (DLocation, Dnumber);
--Dependents
ALTER TABLE Dependents DROP PRIMARY KEY;
ALTER TABLE Dependents
ADD PRIMARY KEY (ESSN, Dependent_name)