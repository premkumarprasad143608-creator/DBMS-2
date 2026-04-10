SET SERVEROUTPUT ON

DECLARE
    CURSOR empcur1 IS 
        SELECT ename, deptname, basicsal FROM emp2;

    rec empcur1%ROWTYPE;   -- using %ROWTYPE

BEGIN
    OPEN empcur1;

    IF empcur1%ISOPEN THEN
        LOOP
            FETCH empcur1 INTO rec;
            EXIT WHEN empcur1%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE('Name: ' || rec.ename);
            DBMS_OUTPUT.PUT_LINE('Department Name: ' || rec.deptname);
            DBMS_OUTPUT.PUT_LINE('Salary: ' || rec.basicsal);
            
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cursor is not open');
    END IF;

    CLOSE empcur1;
END;
/