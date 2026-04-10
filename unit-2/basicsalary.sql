

set serveroutput on

declare
	cursor def3 IS select
	ename,DEPTNAME,basicsal from emp2 order by basicsal desc;

	nm emp2.ename%TYPE;
	dnm emp2.deptname%TYPE;
	sal emp2.basicsal%TYPE;
	n number;
begin

open def3;
loop
	fetch def3 into nm,dnm,sal;
	exit when def3%NOTFOUND;
	dbms_output.put_line('Name:'||nm);
	dbms_output.put_line('DepartmentName:'||dnm);
	dbms_output.put_line('basic salaray:'||sal);
	n:=def3%ROWCOUNT;
end loop;
close def3;
	dbms_output.put_line('total rows:'||n);
end;
/