--calculate sal of deptno 10 from emp3.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR sal_cal IS SELECT ename, deptno, basicsal FROM emp3 WHERE deptno = 10;

    xename   emp3.ename%TYPE;
    xdeptno  emp3.deptno%TYPE;
    xsal     emp3.basicsal%TYPE;

    da       NUMBER;
    hra      NUMBER(10) := 1000;
    pf       NUMBER;
    fsalary  NUMBER;

BEGIN
    OPEN sal_cal;

    LOOP
        FETCH sal_cal INTO xename, xdeptno, xsal;
        EXIT WHEN sal_cal%NOTFOUND;

        da := xsal * 0.10;
        pf := xsal * 0.12;
        fsalary := (xsal + da + hra) - pf;

        DBMS_OUTPUT.PUT_LINE('Employee Name : ' || xename);
        DBMS_OUTPUT.PUT_LINE('Department No : ' || xdeptno);
        DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || xsal);
        DBMS_OUTPUT.PUT_LINE('DA : ' || da);
        DBMS_OUTPUT.PUT_LINE('HRA : ' || hra);
        DBMS_OUTPUT.PUT_LINE('PF : ' || pf);
        DBMS_OUTPUT.PUT_LINE('Final Salary : ' || fsalary);
        DBMS_OUTPUT.PUT_LINE('-----------------------');

    END LOOP;

    CLOSE sal_cal;
END;
/