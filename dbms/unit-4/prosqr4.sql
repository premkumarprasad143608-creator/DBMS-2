create or replace procedure proins(xrlno in number,xname in char,xper in number)
is
begin
insert into stud values(xrlno,xname,xper*xper);
commit;
end proins;
/