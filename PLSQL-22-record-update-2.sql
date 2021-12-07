/*
레코드(record) : 자료형이 다른 여러 자료형들의 모음
TYPE 레코드이름 IS RECORD (
    변수이름 자료형 NOT NULL := 값 또는 표현식
)
-----------------------------------------------------
레코드를 이용하여 테이블에 데이터 수정(UPDATE)
-----------------------------------------------------
*/

SET SERVEROUTPUT ON;

DESC DEPT;
SELECT * FROM DEPT;
DECLARE
    TYPE REC_DEPT IS RECORD( -- 사용자 자료형을 정의
        DEPTNO NUMBER(2) NOT NULL := 30,
        DNAME DEPT.DNAME%TYPE,
        LOC DEPT.LOC%TYPE
    );
   
    DEPT_REC REC_DEPT; -- 레코드형 변수 DEPT_REC 선언
BEGIN
    DEPT_REC.DEPTNO := 56;          -- 레코드형변수.속성에 값을 할당
    DEPT_REC.DNAME := 'EZ56';   
    DEPT_REC.LOC := 'DAEJEON';
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPT_REC.DEPTNO);   -- 참조 : 레코드형변수.속성에서 값을 참조
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || DEPT_REC.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || DEPT_REC.LOC);
    
    UPDATE DEPT -- PL/SQL 방식(ROW)
            SET ROW = DEPT_REC
            WHERE DEPTNO = 56;
END;
/