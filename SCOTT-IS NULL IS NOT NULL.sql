-- NULL 처리
-- 데이터의 값이 비어있는 상태
-- 데이터의 값이 존재하지 않는 상태
-- (중요)NULL은 산술연산을 하면 NULL이 된다.

-- 연급여 : sal * 12
SELECT ename, sal, sal*12 as annsal, comm FROM emp;

-- 연총소득 : sal * 12 + comm
SELECT ename, sal, sal*12 as annsal, comm, sal*12+comm FROM emp;
SELECT ename, sal, sal*12 as annsal, comm, sal*12+nvl(comm,0) as annual FROM emp;

--comm이 null인 경우
SELECT * FROM emp WHERE comm = NULL; -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm = null; -- 자료가 검색되지 않음
--comm이 null이 아닌 경우
SELECT * FROM emp WHERE comm != NULL; -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm <> NULL; -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm ^= NULL; -- 자료가 검색되지 않음

-- IS NULL
-- IS NOT NULL
SELECT * FROM emp WHERE comm IS NULL; --NULL인 것들이 출력됨
SELECT * FROM emp WHERE comm IS NOT NULL; --NULL이 아닌것들이 출력됨
--NULL을 비교할 수 없다
SELECT * FROM emp WHERE comm IS NULL AND sal > NULL; -- NULL은 비교도 불가능

--논리연산 : NULL
-- true AND NULL :
-- NULL AND NULL :
SELECT * FROM emp WHERE sal > 3000 AND comm = NULL;
SELECT * FROM emp WHERE sal + comm > 3000 AND comm = NULL;

-- true OR NULL : TRUE
-- false OR NULL : NULL
-- NULL OR false : NULL
-- NULL OR NULL : NULL
SELECT * FROM emp WHERE sal > 3000 OR comm = NULL; -- TRUE AND NULL -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm = NULL; -- FALSE AND NULL -> NULL
SELECT * FROM emp WHERE comm = NULL OR sal > 5000; -- NULL OR FALSE -> NULL

SELECT * FROM emp WHERE sal > 3000 OR comm IS NULL; -- TRUE AND TRUE -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm IS NULL; -- FALSE AND TRUE -> TRUE
SELECT * FROM emp WHERE comm IS NULL OR sal > 5000; -- TRUE OR FALSE -> NULL
