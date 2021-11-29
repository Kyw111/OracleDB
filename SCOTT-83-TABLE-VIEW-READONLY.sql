-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점: 
--  1. 편리성(이미 작성된 쿼리에 의해서 뷰가 믄덜어져 있기 때문에 재사용 가능)
--  2. 보안성(기존의 테이블이나 쿼리를 감춤)

-- 뷰를 열람만 가능:
-- 옵션 : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30) WITH READ ONLY;

CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

SELECT * FROM USER_VIEWS;

-- 입력(INSERT)
-- 오류: "cannot perform a DML operation on a read-only view"
INSERT INTO EMP_DEPT30
    VALUES (9999, 'NINENINE', 'STUDENT', NULL, NULL, 1000, 500, 10);

SELECT * FROM EMP_DEPT30; 

--뷰 삭제
DROP VIEW EMP_DEPT30;
