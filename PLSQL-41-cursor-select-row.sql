/* 커서 : 
    1.커서는 검색결과를 담고 있는 공간
    2.검색결과가 1개 이상이 도출되었을 때 처리 
    3.레코드의 위치, 행의 위치를 이동해서 찾아갈 수 있다.
--------------------*/

--------------------
-- 1. 커서선언(declaration)
-- 2. 커서열기(open)
-- 3. 커서읽기(fetch)
-- 4. 커서닫기(close)

 SET SERVEROUTPUT ON;
 
DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT
            WHERE DEPTNO = 40;
BEGIN
    OPEN C1; -- 커서열기
    
    FETCH C1 INTO V_DEPT_ROW;
        
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);
    
    CLOSE C1;  -- 커서닫기
END;
/
SELECT * FROM DEPT;
    