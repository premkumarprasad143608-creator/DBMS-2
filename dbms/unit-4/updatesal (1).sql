-- Write a simple procedure without any parameter that updates the values in the EMP table

set serveroutput on

create or replace procedure emp_sal is

begin
	update emp set sal = sal+(sal*0.10);
end;
/
