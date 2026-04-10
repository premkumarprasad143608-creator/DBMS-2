--find total using explicit cursor

SET SERVEROUTPUT ON;

DECLARE
    CURSOR cur_total IS
        SELECT rollno, name, m1, m2, m3 FROM mark;

    mydata mark%ROWTYPE;

    total NUMBER;
    per   NUMBER(4,2);

BEGIN
    OPEN cur_total;

    LOOP
        FETCH cur_total INTO mydata;
        EXIT WHEN cur_total%NOTFOUND;

        total := mydata.m1 + mydata.m2 + mydata.m3;
        per   := total / 3;

        DBMS_OUTPUT.PUT_LINE('Roll Number : ' || mydata.rollno);
        DBMS_OUTPUT.PUT_LINE('Name : ' || mydata.name);
        DBMS_OUTPUT.PUT_LINE('Mark 1 : ' || mydata.m1);
        DBMS_OUTPUT.PUT_LINE('Mark 2 : ' || mydata.m2);
        DBMS_OUTPUT.PUT_LINE('Mark 3 : ' || mydata.m3);

        DBMS_OUTPUT.PUT_LINE('Total Marks : ' || total);
        DBMS_OUTPUT.PUT_LINE('Percentage : ' || per);
        DBMS_OUTPUT.PUT_LINE('---------------------');

    END LOOP;

    CLOSE cur_total;
END;
/