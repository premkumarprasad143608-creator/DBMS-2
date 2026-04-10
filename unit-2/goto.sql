-- program for goto statement

set serveroutput on 

declare
	i number:=1;
begin
<<mylable>>
dbms_output.put_line('stop');

while i<=10
loop
	dbms_output.put_line(i);
	i:=i + 1;
	if i = 5 then
		goto mylable;
	end if;
end loop;
end;
/