-- 커서에 파라미터 사용

 SET SERVEROUTPUT ON;
 
DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언(DECLARATION) ////// 하나의 커서로 재활용 (아래 파라미터2개)
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE)IS 
        SELECT DEPTNO, DNAME, LOC 
        FROM DEPT
        WHERE DEPTNO = P_DEPTNO;
BEGIN 
    
    FOR V_DEPT_ROW IN C1(10) LOOP
    DBMS_OUTPUT.PUT_LINE('10번 부서 DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
     FOR V_DEPT_ROW IN C1(20) LOOP
    DBMS_OUTPUT.PUT_LINE('20번 부서 DEPTNO : ' || V_DEPT_ROW.DEPTNO 
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
END;
/
SELECT * FROM DEPT;
    