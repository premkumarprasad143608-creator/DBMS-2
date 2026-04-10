--program to calculate totalbill and disc

set serveroutput on

DECLARE

    v_proid      product2.proid%TYPE := &proid; 
    v_totalbill  product2.totalbill%TYPE;
    v_disc       product2.dics%TYPE;

BEGIN

    SELECT qty * price
    INTO v_totalbill
    FROM product2
    WHERE proid = v_proid;

    IF v_totalbill < 5000 THEN
        v_disc := 0;
    ELSIF v_totalbill >= 5000 AND v_totalbill < 8000 THEN
        v_disc := v_totalbill * 0.05;
    ELSIF v_totalbill >= 8000 AND v_totalbill < 15000 THEN
        v_disc := v_totalbill * 0.10;
    ELSE
        v_disc := v_totalbill * 0.15;
    END IF;

    UPDATE product2
    SET totalbill = v_totalbill,
        dics      = v_disc
    WHERE proid = v_proid;

    COMMIT;
END;
/
 
	