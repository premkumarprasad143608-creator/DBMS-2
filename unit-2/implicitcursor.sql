--Write a PL/SQL block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of employees by 10% that are working in department number 10 and also display the appropriate message based on the existence to the record in the EMP table. (Use Implicit Cursor)

SET SERVEROUTPUT ON

BEGIN

UPDATE EMP4 SET BASICSAL = BASICSAL + (BASICSAL*0.10) WHERE DEPTNO = 10;

DBMS_OUTPUT.PUT_LINE('Salary Updated..');

IF SQL%FOUND THEN
	DBMS_OUTPUT.PUT_LINE('Total records updated are: '||SQL%ROWCOUNT);
END IF;

END;
/