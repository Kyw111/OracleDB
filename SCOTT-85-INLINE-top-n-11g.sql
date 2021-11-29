-- TOP-N
-- 순위를 지정
-- 서브쿼리, INLINE VIEW, ROWNUM 활용해서 처리 가능
-- 오라클 11g

-- 사원중에서 급여를 가장 많이 받는 순서
SELECT EMPNO, ENAME, SAL FROM EMP ORDER BY SAL DESC;

-- ROWNUM : 고유한 레코드 번호
SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP;
SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP ORDER BY EMPNO;


-- ROWNUM : 고유한 레코드 번호
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM EMP
    ORDER BY SAL DESC;

-- 서브쿼리로 하게되면 새로운 ROWNUM이 부여된다.
-- 새로 부여된 ROWNUM은 정렬한 순서와 일치
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL ASC);

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM <= 5;
    
-- 중간부터 검색: 5명을 건너뛰고
-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
-- 두번의 쿼리( 데이터량이 많다면 많이 느려질것. 효율 떨어짐)
SELECT * 
    FROM (SELECT ROWNUM rnum, EMPNO, ENAME, SAL
    FROM(SELECT * FROM EMP ORDER BY SAL DESC))
    WHERE rnum BETWEEN 6 AND 10;

SELECT * 
    FROM (SELECT ROWNUM numrow, aa.* 
    FROM(SELECT * FROM EMP ORDER BY SAL DESC) aa) 
    WHERE numrow > 5 AND numrow <= 10;

-- 먼저 검색된 마지막 자료를 기준으로 새로운 검색 조건을 지정하여 
-- 검색 범위를 축소시켜서 효율을 높임
-- 5번째 sal(2450)
SELECT ROWNUM, e.EMPNO, e.ENAME, e.SAL 
    FROM (SELECT * FROM EMP WHERE SAL < 2450 ORDER BY SAL DESC) e
    WHERE ROWNUM <= 5;