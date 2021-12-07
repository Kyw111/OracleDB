-- 명시적 커서 선언 (Declaration)
-- FOR ... LOOP
-- FOR 변수 IN 커서이름 LOOP
-- 자동으로 커서(OPEN, FETCH, CLOSE 됨)

 SET SERVEROUTPUT ON;
 
DECLARE
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN 
    -- 커서 FOR LOOP 시작 ( 자동 OPEN, FETCH, CLOSE)
    FOR C1_DEPT IN C1 LOOP
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || C1_DEPT.DEPTNO 
                        || ', DNAME : ' || C1_DEPT.DNAME
                        || ', LOC : ' || C1_DEPT.LOC);
    END LOOP;

END;
/
SELECT * FROM DEPT;
    