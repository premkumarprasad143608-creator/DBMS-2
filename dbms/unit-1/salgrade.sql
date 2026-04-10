--write a program for update comm of emp

set serveroutput on

declare
	v_empid salgrade.empid%type:=&empid;
	v_salary salgrade.salary%type;
	v_comm salgrade.comm%type;
begin
	select salary into v_salary from salgrade where empid = v_empid;
if v_salary < 25000
then 
	v_comm:= v_salary*0.10;
elsif v_salary >= 25000
then
	v_comm:=v_salary*0.20;
end if;

	update salgrade set comm = v_comm where empid = v_empid;

commit;

	dbms_output.put_line('commission updated successfully');
end;
/