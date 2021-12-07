-- 커서(cursor) 
-- 다중 행 조회

 SET SERVEROUTPUT ON;
 
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
    
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN
    OPEN C1; 
    
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND; -- FETCH를 해서 더이상 읽을 레코드가 없으면 TRUE가 되어 LOOP를 탈출
        
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                        || ', DNAME : ' || V_DEPT_ROW.DNAME
                        || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
    CLOSE C1;  -- 커서닫기
END;
/
SELECT * FROM DEPT;
    