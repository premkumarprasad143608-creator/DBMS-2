-- for demo2 (reverse loop)

set serveroutput on

declare
	i number:=0;
begin
	for i in REVERSE 0..100
	loop
	dbms_output.put_line(i);

end loop;

end;
/