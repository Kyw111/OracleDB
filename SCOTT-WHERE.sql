-- 조회 : WHERE

-- 조회 조건식없이 모든 테이블의 내용을 검색
SELECT * FROM emp;

-- 조건검색: 부서코드가 30인 사원정보
SELECT * FROM emp WHERE deptno = 30;

-- 부서코드가 30이고 직책이 SALESMAN인 사원?
SELECT * FROM emp WHERE deptno = 30 AND job = 'SALESMAN';

-- 부서코드가 30이거나 직책이 SALESMAN인 사원?
SELECT * FROM emp WHERE deptno = 30 OR job = 'SALESMAN';

-- 산술연산자를 검색 조건에 넣기
-- 연소득 SAL * 12 36000
-- 같다(=), 크다(>), 크거나 같다(>=), 작다(<), 작거나 같다(<=)
SELECT * FROM emp WHERE (sal * 12) = 36000; -- 같다(=)
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) > 36000; -- 다
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) >= 36000; --
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) < 36000; -- 
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <= 36000; -- 

-- 같지 않다 : !=, <>, ^=
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) != 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <> 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) ^= 36000;

-- 논리부정: NOT
SELECT * FROM emp WHERE sal = 3000;

-- sal = 3000에 대한 부정
-- sal이 3000이 아닌 모든 데이터
SELECT * FROM emp WHERE sal != 3000;
SELECT * FROM emp WHERE NOT sal = 3000;

--OR
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
-- NOT OR
-- 직책이 MANAGER는 아닌데 SALESMAN이거나 CLERK인 사원
SELECT * FROM emp
    WHERE NOT job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
--NOT OR
-- 직책이 MANAGER도 아니고 SALESMAN도 아니고 CLERK도 아닌 사원
SELECT * FROM emp
    WHERE NOT (job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK');
    
--AND
-- 위의 NOT OR 조건을 AND 조건으로 바꾸면
-- 직책이 MANAGER도 아니고 SALESMAN도 아니고 CLERK도 아닌 사원
SELECT * FROM emp 
    WHERE job != 'MANAGER'
    AND job != 'SALESMAN'
    AND job != 'CLERK';
    
-- OR
-- 직책이 MANAGER이거나 SALESMAN이거나 CLERK인 사원
SELECT * FROM emp 
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
--IN
--직책이 MANAGER이거나 SALESMAN 이거나 CLERK인 사원
--데이터는 대소문자를 구분한다.
SELECT * FROM emp
    WHERE job IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
--NOT IN : 
--조건 : 직책이 MANAGER도 아니고 SALESMAN도 아니고 CLERK도 아닌 사원
SELECT * FROM emp WHERE job != 'MANAGER' AND job != 'SALESMAN' AND job != 'CLERK';

SELECT * FROM emp
    WHERE job NOT IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
--IN
-- 부서가 10, 20인 사원
SELECT * FROM emp WHERE deptno IN ('10', '20') ORDER BY deptno;
--IN
-- 부서가 10도 아니고 20도 아닌 사원
SELECT * FROM emp WHERE deptno NOT IN('10', '20') ORDER BY deptno;

--부서가 10도 아니고 20도 아닌 사원중에 직책이 SALESMAN인 사원
--사원정보와 부서명도 출력
--사원번호로 내림차순 정렬(sort), 사원이름으로 오름차순 정렬
SELECT empno, ename, job, deptno FROM emp 
WHERE deptno NOT IN('10', '20') AND job = 'SALESMAN'
ORDER BY deptno desc,
ename;

--부서정보
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno NOT IN (10, 20)
    AND e.job = 'SALESMAN'
    AND e.deptno = d.deptno
    ORDER BY e.empno desc, e.ename asc;

--BETWEEN x AND y
--sal 값이 2000부터 3000 사이의 값을 검색
SELECT * FROM emp WHERE sal >= 2000 AND sal <= 3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

-- NOT BETWEEN x AND y
-- sal 값이 2000부터 3000 사이의 값이 아닌 데이터
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;
SELECT * FROM emp WHERE sal < 2000 OR sal > 3000;

-- LIKE : 문자열을 검색
-- 사원들의 이름중에서 첫번째 문자가 'j'로 시작하는 사원을 찾아라
-- 찾을 문자 뒤에 %를 넣어야 됨
SELECT * FROM emp WHERE ename LIKE 'J%'; --이름이 J로 시작
SELECT * FROM emp WHERE ename LIKE 'B%'; --이름이 B로 시작

-- 임의의 문자와 매치
-- Underscore(_)
SELECT * FROM emp WHERE ename LIKE '_L%'; --첫글자 뒤에 L인 이름
SELECT * FROM emp WHERE ename LIKE '__L%'; --두글자 뒤에 L인 이름
SELECT * FROM emp WHERE ename LIKE '___D%'; --세글자 뒤에 D인 이름

--끝문자열이 MAN으로 끝나는 직책
SELECT * FROM emp WHERE job LIKE '%MAN';

-- 문자열 중간에 'AM'을 포함하고 있는 사원
SELECT * FROM emp WHERE ename LIKE '%AM%';

-- 끝문자가 R로 끝나는 이름
SELECT * FROM emp WHERE ename LIKE '%R';
-- 네글자 문자를 가진 이름
SELECT * FROM emp WHERE ename LIKE '____'; -- 언더바 4개
