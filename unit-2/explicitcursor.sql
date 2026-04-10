--print all records using explicit cursor

SET SERVEROUTPUT ON

DECLARE
    CURSOR c2 IS 
        SELECT ename, job FROM emp1;

    v_ename emp1.ename%TYPE;
    v_job   emp1.job%TYPE;

BEGIN
    OPEN c2;

    LOOP
        FETCH c2 INTO v_ename, v_job;

        EXIT WHEN c2%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_ename);
        DBMS_OUTPUT.PUT_LINE('Job: ' || v_job);
    END LOOP;

    CLOSE c2;
END;
/
