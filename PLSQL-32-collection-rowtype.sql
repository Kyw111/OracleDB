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
%ROWTYPE(타입의 행) 활용한 연관 배열
---------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- 부서정보 레코드
        DEPTNO DEPT.DEPTNO%TYPE,
        DNAME  DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   --부서 테이블 %ROWTYPE 담고 있는 배열
    
    DEPT_LISTS DEPTLISTS;
    IDX PLS_INTEGER := 0;
    
BEGIN
    FOR DEPT IN (SELECT * FROM DEPT) LOOP
        IDX := IDX + 1;
        DEPT_LISTS(IDX).DEPTNO  := DEPT.DEPTNO;
        DEPT_LISTS(IDX).DNAME   := DEPT.DNAME;
        DEPT_LISTS(IDX).LOC     := DEPT.LOC;
    END LOOP;
    
    FOR CNT IN 1..IDX LOOP
        DBMS_OUTPUT.PUT_LINE('IDX[' || CNT || '] '||
        DEPT_LISTS(CNT).DEPTNO || ' , ' || 
        DEPT_LISTS(CNT).DNAME || ', ' ||
        DEPT_LISTS(CNT).LOC);
    END LOOP;
    
END;
/
    