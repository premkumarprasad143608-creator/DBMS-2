--program to demonstrate the use of too_many_Rows

SET SERVEROUTPUT ON

declare
	enm char(15);
	dno char(2);
	sal number(8);
begin
	SELECT ENAME,DEPTNO,BASICSAL into
	enm,dno,sal FROM EMP5 WHERE DEPTNO=30;
	dbms_output.put_line('Ename:'||enm||'
	Department:'||dno||' Salary:'||sal);

EXCEPTION
	WHEN TOO_MANY_ROWS THEN
	dbms_output.put_line('more than 1 row
	return by select');
end;
/