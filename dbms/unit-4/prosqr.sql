--A procedure that takes input values and performs calculation (here, square of x) but does not return value directly.

create or replace procedure prosq(x in number,y in number)

is
ans number;

begin

	ans := x * x;

	dbms_output.put_line('square='||ans);

end prosq;
/