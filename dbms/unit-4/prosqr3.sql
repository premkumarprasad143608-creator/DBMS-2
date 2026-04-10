create or replace procedure prosq3(x in number,y in out number)
IS
begin
y := x * x;
end prosq3;
/