-- 커서에 파라미터 사용

 SET SERVEROUTPUT ON;
 
DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언(DECLARATION)
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE)IS 
        SELECT DEPTNO, DNAME, LOC 
        FROM DEPT
        WHERE DEPTNO = P_DEPTNO;
BEGIN 
    OPEN C1(30);
        LOOP
            FETCH C1 INTO V_DEPT_ROW;
            EXIT WHEN C1%NOTFOUND;
              DBMS_OUTPUT.PUT_LINE('30번 부서 DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
     END LOOP;
    CLOSE C1;
END;
/
SELECT * FROM DEPT;
    