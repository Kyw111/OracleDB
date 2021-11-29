-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점: 
--  1. 편리성(이미 작성된 쿼리에 의해서 뷰가 믄덜어져 있기 때문에 재사용 가능)
--  2. 보안성(기존의 테이블이나 쿼리를 감춤)

-- 매번 이렇게하면 불편하니까 VIEW로 만듬
-- VIEW AS (SELECT 여기다가 넣어주면됨)
SELECT E.EMPNO, E.ENAME, E.JOB, D.DEPTNO, D.DNAME, D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- 뷰를 열람만 가능:
-- 옵션 : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT
    AS (SELECT E.EMPNO, E.ENAME, E.JOB, D.DEPTNO, D.DNAME, D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO);

SELECT * FROM USER_VIEWS;

SELECT * FROM EMP_DEPT;

-- 입력(INSERT) : 조인에 의해 만들어진 뷰는 입력을 할 수 없다.
-- 오류: 조인 뷰에 의하여 하나 이상의 기본 테이블을 수정할 수 없습니다
INSERT INTO EMP_DEPT
    VALUES (9999, 'NINENINE', 'STUDENT', 30, 'SALES', 'CHICAGO');



