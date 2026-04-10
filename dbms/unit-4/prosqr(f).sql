-- 1. Procedure without parameter
create or replace procedure promsg
IS
BEGIN
dbms_output.put_line('welcome, square program');
END promsg;
/

-- 2. IN parameter (square of x)
create or replace procedure prosq(x in number,y in number)
is
ans number;
begin
ans := x * x;
dbms_output.put_line('square='||ans);
end prosq;
/

-- 3. IN + OUT parameter
create or replace procedure prosq1(x in number,y in number,ans OUT number)
IS
begin
ans := x * x;
end prosq1;
/

-- 4. IN OUT parameter
create or replace procedure prosq3(x in number,y in out number)
IS
begin
y := x * x;
end prosq3;
/

-- 5. Insert procedure (store square)
create or replace procedure proins(xrlno in number,xname in char,xper in number)
is
begin
insert into stud values(xrlno,xname,xper*xper);
commit;
end proins;
/