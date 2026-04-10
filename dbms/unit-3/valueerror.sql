--value error exception

set serveroutput on

declare
	n1 number:=100;
	city char(10):='100AB';
	n2 number;
begin
	dbms_output.put_line('value of first:'||n1);
	dbms_output.put_line('Value of city:'||city);
	n2:=city;
	dbms_output.put_line(n2);

EXCEPTION
	WHEN VALUE_ERROR THEN
	dbms_output.put_line('you cant store string into number');
end;
/