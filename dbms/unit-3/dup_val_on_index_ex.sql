--Example of dup_val_on_index

set serveroutput on

declare
    pid number(3) := &pid;
    pronm varchar2(20) := '&pronm';
    q number(5) := &q;
    cost number(5) := &cost;

begin
    insert into product4 values(pid, pronm, q, cost);
    commit;

exception
    when DUP_VAL_ON_INDEX then
        dbms_output.put_line('Product ID already exists. Enter new ID');

end;
/