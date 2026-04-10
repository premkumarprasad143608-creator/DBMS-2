--program to demonstrate the use of cursor_already_open

SET SERVEROUTPUT ON

declare
	cursor a1 IS select * from student2;
	d student2%ROWTYPE;

begin
open a1;
loop
	open a1;
	fetch a1 INTO d;
	EXIT WHEN a1%NOTFOUND;
	dbms_output.put_line('Rollno:'||d.RLNO||'
	Grno:'||d.grno||' Student Name:'||d.name||'
	Stream:'||d.stream);
end loop;
open a1;
close a1;

EXCEPTION
	WHEN CURSOR_ALREADY_OPEN THEN
	dbms_output.put_line('cursor opened
	multiple times');
end;
/