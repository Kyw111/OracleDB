/*
컬렉션(Collection) : 복합 자료형
1. 특정 자료형을 여러개 저장
2. 여러 종류의 데이터를 하나로 묶어 사용
---------------------------------------------------------------
연관배열:
TYPE 배열이름 IS TABLE OF 자료형 INDEX BY 인덱스형
---------------------------------------------------------------
인덱스형: 키로 사용할 인덱스의 자료형
1. BINARY_INTEGER
2. PLS_INTEGER(정수형)
3. VARCHAR2(문자형)
---------------------------------------------------------------
레코드를 활용한 연관 배열
---------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- 부서정보 레코드
        DEPTNO DEPT.DEPTNO%TYPE,
        DNAME  DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF REC_DEPT INDEX BY PLS_INTEGER;   --부서정보 레코드를 담고있는 배열
    
    DEPT_LISTS DEPTLISTS;
    IDX PLS_INTEGER := 0;
    
BEGIN
    FOR DEPT IN (SELECT DEPTNO, DNAME FROM DEPT) LOOP
        IDX := IDX + 1;
        DEPT_LISTS(IDX).DEPTNO := DEPT.DEPTNO;
        DEPT_LISTS(IDX).DNAME := DEPT.DNAME;
    END LOOP;
    
    FOR CNT IN 1..IDX LOOP
        DBMS_OUTPUT.PUT_LINE('IDX[' || CNT || '] '|| DEPT_LISTS(CNT).DEPTNO || ' : ' || DEPT_LISTS(CNT).DNAME);
    END LOOP;
    
END;
/
    