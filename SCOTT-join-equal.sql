-- 조인(JOIN)
SELECT * FROM emp; -- 12개행
SELECT * FROM dept; -- 4개행
--카티시안 프로덕션, 크로스 조인, 교차 조인
SELECT * FROM emp, dept; -- 48개 행 : 12 * 4 = 48
SELECT * FROM emp e, dept d ORDER BY e.empno, e.deptno, d.deptno;
-- 등가조인(equal join), 동등조인, 내부조인, 단순조인
SELECT * FROM emp e, dept d WHERE e.deptno = d.deptno ORDER BY e.empno;

SELECT emp.empno, emp.ename, emp.deptno, dept.dname, dept.loc
    FROM emp, dept
    WHERE emp.deptno = dept.deptno ORDER BY emp.empno;
    
SELECT e.empno, e.ename, e.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno ORDER BY e.empno;
    
--[문제]
--급여가 3000미만이면서 수당이 없는 사원
--사원정보, 부서정보(부서코드, 부서이름, 부서위치)
--사원정보(emp테이블), 부서정보(dept테이블)
--급여sal, 수당comm
SELECT e.empno, e.ename, e.sal, e.comm, e.deptno, d.dname,d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno -- 부서정보
    AND sal < 3000 -- 급여가 3000미만
    AND (comm IS NULL OR e.comm = 0) -- 수당없음 (괄호처리 안하면 다른결과)
    ORDER BY 1; -- 사번(SELECT 옆에 칼럼들 순서임)
