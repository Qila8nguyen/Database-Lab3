SELECT *
FROM DEPARTMENT
  Inner join EMPLOYEE ON DEPARTMENT.DNUMBER = EMPLOYEE.DNO
WHERE (DNAME = 'Administrator');