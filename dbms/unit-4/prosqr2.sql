--call prosqr2
set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
myans number;
begin
proadd1(n1,n2,myans);
dbms_output.put_line('answer='||myans);
end;
/