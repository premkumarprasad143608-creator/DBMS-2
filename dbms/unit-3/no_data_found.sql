--example of no data found exception in student11 table

set serveroutput on

declare
    v_sid number(4) := &v_sid;
    v_name varchar2(20);
    v_course varchar2(20);
    v_marks number(3);

begin
    select sname, course, marks
    into v_name, v_course, v_marks
    from student11
    where sid = v_sid;

    dbms_output.put_line('Student Name: ' || v_name);
    dbms_output.put_line('Course: ' || v_course);
    dbms_output.put_line('Marks: ' || v_marks);

exception
    when NO_DATA_FOUND then
        dbms_output.put_line('Student ID not found in student11 table');

end;
/