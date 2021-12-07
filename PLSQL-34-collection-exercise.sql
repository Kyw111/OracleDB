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
컬렉션 메소드
[문제] DEPT_LISTS에 담긴 데이터를 모두 출력하라.
---------------------------------------------------------------
*/
DESC DEPT;

SET SERVEROUTPUT ON;

DECLARE
    
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   --부서 테이블 %ROWTYPE 담고 있는 배열
    
    DEPT_LISTS DEPTLISTS;
    
    DEPTNO DEPT.DEPTNO%TYPE;
BEGIN
    FOR DEPT IN (SELECT * FROM DEPT) LOOP
        DEPT_LISTS(DEPT.DEPTNO).DEPTNO  := DEPT.DEPTNO;
        DEPT_LISTS(DEPT.DEPTNO).DNAME   := DEPT.DNAME;
        DEPT_LISTS(DEPT.DEPTNO).LOC     := DEPT.LOC;
        
        DBMS_OUTPUT.PUT_LINE(DEPT.DEPTNO || ',' || DEPT.DNAME || ', ' || DEPT.LOC);
    END LOOP;
    
     DBMS_OUTPUT.PUT_LINE('* count : ' || DEPT_LISTS.COUNT);
     DBMS_OUTPUT.PUT_LINE('* FIRST : ' || DEPT_LISTS.FIRST);
     DBMS_OUTPUT.PUT_LINE('* LAST : ' || DEPT_LISTS.LAST);
     DBMS_OUTPUT.PUT_LINE('* PRIOR(5) : ' || DEPT_LISTS.PRIOR(5)); --() 전
     DBMS_OUTPUT.PUT_LINE('* NEXT(5) : ' || DEPT_LISTS.NEXT(5));  --() 후
     
    FOR ONE_DEPT IN (SELECT * FROM DEPT) LOOP
        DBMS_OUTPUT.PUT_LINE(DEPT_LISTS(ONE_DEPT.DEPTNO).DEPTNO || ', ' ||
        DEPT_LISTS(ONE_DEPT.DEPTNO).DNAME || ', ' ||
        DEPT_LISTS(ONE_DEPT.DEPTNO).LOC);
    END LOOP;
    
END;
/
    