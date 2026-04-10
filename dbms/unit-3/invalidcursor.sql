--program to demonstrate the use of invalid_cursor

SET SERVEROUTPUT ON;

DECLARE
    CURSOR a1 IS SELECT * FROM student2;
    d student2%ROWTYPE;
BEGIN
    OPEN a1;

    LOOP
        FETCH a1 INTO d;
        EXIT WHEN a1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Rollno:' || d.rlno ||
            ' Grno:' || d.grno ||
            ' Name:' || d.name ||
            ' Stream:' || d.stream
        );
    END LOOP;

    CLOSE a1;

EXCEPTION
    WHEN INVALID_CURSOR THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is not opened properly');
END;
/