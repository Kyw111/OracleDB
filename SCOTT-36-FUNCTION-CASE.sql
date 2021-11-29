-- CASE
-- CASE 검사값(칼럼)
--      WHEN 조건1 THEN 결과1
--      WHEN 조건2 THEN 결과2
--      WHEN 조건3 THEN 결과3
--      ELSE 결과N
-- END AS ALIAS

-- [CASE]
--직책이 MANAGER인 사람: 급여의 10%를 더함
--직책이 SALESMAN인 사람: 급여의 20%를 더함
--직책이 ANALYST인 사람: 급여의 30%를 더함
--나머지는 급여의 5%를 더함
SELECT ENAME, SAL, JOB,
    CASE JOB 
        WHEN 'MANAGER' THEN SAL +(SAL * 0.1) --매니저
        WHEN 'SALESMAN' THEN SAL + (SAL*0.2)  -- 세일즈맨
        WHEN 'ANLAYST' THEN SAL + (SAL * 0.3) --어널리스트
        ELSE SAL+(SAL*0.05)   -- 그 외
    END AS MONEY
    FROM EMP;

-- 검사값(기준값)없이 조건식만 사용
SELECT ENAME, SAL, JOB,
    CASE  
        WHEN JOB = 'MANAGER' THEN SAL +(SAL * 0.1) --매니저
        WHEN JOB = 'SALESMAN' THEN SAL + (SAL*0.2)  -- 세일즈맨
        WHEN JOB = 'ANLAYST' THEN SAL + (SAL * 0.3) --어널리스트
        ELSE SAL+(SAL*0.05)   -- 그 외
    END AS MONEY
    FROM EMP;

-- 수당
-- 다양한 조건에 따라서 처리
-- 자바의 IF문과 유사
SELECT ENAME, SAL, JOB, COMM,
    CASE
        WHEN COMM IS NULL THEN SAL + (SAL * 0.5)
        WHEN COMM = 0 THEN SAL + (SAL * 1.4)
        WHEN COMM > 0 THEN SAL + (SAL * COMM)
        ELSE SAL
    END AS UPSAL
    FROM EMP;