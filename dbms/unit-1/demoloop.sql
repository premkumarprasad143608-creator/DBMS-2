--print 1 to 5

set serveroutput on

declare
	i number:=1;
begin
Loop
	dbms_output.put_line(i);
	i:=i+1;
	Exit When i > 5;

End Loop;

end;
/