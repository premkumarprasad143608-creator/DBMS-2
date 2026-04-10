--program to insert data in course table
set serveroutput on

declare 
	cid number(5):=&cid;
	subject char(15):='&subject';
	scode varchar(15):='&scode';
begin
	insert into course values(cid,subject,scode);
	dbms_output.put_line('data inserted in course table');
end;
/