-- The following example creates a simple procedure that displays
the string 'Hello World!' on the screen when executed. (pe1.sql)

set serveroutput on

create or replace procedure greetings as

begin
	dbms_output.put_line('hello mayank');

end;
/

