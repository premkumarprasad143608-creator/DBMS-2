--A procedure that takes input (IN) and returns result using OUT parameter.

create or replace procedure prosq1(x in number,y in number,ans OUT number)

IS
begin
	ans := x * x;

end prosq1;
/