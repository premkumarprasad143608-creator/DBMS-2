--program to declare variable
set serveroutput on
declare
	stream char(10):='bsc.ds';
	sem number(1):=2;
	div char(1):='a';
begin
	dbms_output.put_line('stream is '||stream);
	dbms_output.put_line('current sem is '||sem);
	dbms_output.put_line('div is '||div);
end;
/