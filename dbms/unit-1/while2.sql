--write a program for squre and cube in data

SET SERVEROUTPUT ON

DECLARE
    i NUMBER := 1;
    n NUMBER := &n;
BEGIN
    WHILE i <= n LOOP
        INSERT INTO data
        VALUES (i, i*i, i*i*i);

        i := i + 1;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Data Inserted Successfully');
END;
/
