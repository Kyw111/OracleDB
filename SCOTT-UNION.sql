--집합연산자
--UNION(합집합)
--컬럼의 갯수가 일치하고 자료형이 일치
--중복되는 데이터는 하나만 선택됨

SELECT * FROM emp WHERE deptno = 10;
SELECT * FROM emp WHERE deptno = 20;

SELECT * FROM emp WHERE deptno IN(10, 20);

--UNION 중복되는 데이터는 하나만 출력해줌
SELECT * FROM emp WHERE deptno = 10
UNION
SELECT * FROM emp WHERE deptno = 20;

--테이블 이름이나 조건은 관계없다.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10
UNION --위아래 칼럼의 갯수가 일치해야함 (printf처럼)
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- 중복되는 부서(deptno 20)는 하나의 행만 선택(중복을 제거해줌)
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20)
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- 칼럼들 이름이 일치할 필요는 없다.
-- 자료형이 일치하면 된다.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20) --6개의 행
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 30; -- 3개의 행

-- 새로운 테이블 생성 : 기존의 테이블을 이용
CREATE TABLE emp2
    AS SELECT empno, ename, sal, sal * 12 as annual FROM emp;
--테이블 정보 확인
DESC emp2;
SELECT * FROM emp2;

SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20)
UNION 
SELECT * FROM emp2 ORDER BY empno, ename;

--테이블 복제 emp -> emp3
CREATE TABLE emp3 AS SELECT * FROM emp;
DESC emp3;
SELECT * FROM emp3;

--중복레코드는 하나만 선택
SELECT * FROM emp UNION SELECT * FROM emp3;

--UNION ALL : 중복을 포함한 모든 레코드 선택
SELECT * FROM emp -- 12레코드
UNION ALL 
SELECT * FROM emp3; --12레코드