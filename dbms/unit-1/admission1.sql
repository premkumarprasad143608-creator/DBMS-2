--program for insert data into admission1 table
set serveroutput on
declare
	srno number(5):=&srno;
	studnm char(20):='&studnm';
	stream varchar(10):='&stream';
	adm_date date:=&date;
	fees number(6):=&fees;
begin
	insert into admission1 values(srno,studnm,stream,adm_date,fees);
	dbms_output.put_line('data inserted into admission1 table');
end;
/