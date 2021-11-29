-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점: 
--  1. 편리성(이미 작성된 쿼리에 의해서 뷰가 믄덜어져 있기 때문에 재사용 가능)
--  2. 보안성(기존의 테이블이나 쿼리를 감춤)

CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

-- 뷰가 없으면 생성하고 뷰가 있으면 변경하라.
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 20);

-- 변경: 새로운 쿼리로 변경 가능

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_DEPT30; 

-- 이름변경
RENAME EMP_DEPT30 TO EMP_DEPT20;

--뷰 삭제
DROP VIEW EMP_DEPT30;
DROP VIEW EMP_DEPT20;

DELETE FROM EMP WHERE EMPNO IN ( 1234, 4321);
COMMIT;