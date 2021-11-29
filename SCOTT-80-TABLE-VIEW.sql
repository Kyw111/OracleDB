-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점: 
--  1. 편리성(이미 작성된 쿼리에 의해서 뷰가 믄덜어져 있기 때문에 재사용 가능)
--  2. 보안성(기존의 테이블이나 쿼리를 감춤)

-- 사원 테이블에서 부서코드가 30인 사원
SELECT * FROM EMP WHERE DEPTNO = 30;

-- 서브쿼리
SELECT EMP.* FROM
    (SELECT * FROM EMP WHERE DEPTNO = 30) EMP;
    
-- 테이블 뷰
GRANT CREATE VIEW TO SCOTT;
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);
-- 테이블뷰가 하나의 테이블처럼
SELECT * FROM EMP_DEPT30;
-- 현재 사용자가 가지고 있는 테이블 목록
SELECT * FROM TAB;

-- 사전(DICT)
SELECT * FROM USER_VIEWS;

-- 뷰 테이블 삭제
DROP VIEW EMP_DEPT30;