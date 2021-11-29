-- DECODE
-- IF, SWITCH~CASE문과 유사
-- DECOD(검사값, 조건1, 결과1, 조건2, 결과2, ... 결과N)
-- 검사값이 조건1을 만족하면 결과1 리턴
-- 검사값이 조건2을 만족하면 결과2 리턴
-- 검사값과 만족하는 조건이 없으면 결과N을 리턴

-- 수당이 NULL이 아니면 급여 + 수당 = 총급여
SELECT ENAME, SAL, COMM, DECODE(COMM, NULL, SAL, SAL + COMM) FROM EMP;
                             --검사값, 조건1, TRUE, FALSE (삼항연산자랑 비슷)
--직책이 MANAGER인 사람: 급여의 10%를 더함
--직책이 SALESMAN인 사람: 급여의 20%를 더함
--직책이 ANALYST인 사람: 급여의 30%를 더함
--나머지는 급여의 5%를 더함
SELECT ENAME, SAL, JOB,
    DECODE (JOB, 
    'MANAGER', SAL +(SAL * 0.1), --매니저
    'SALESMAN', SAL+(SAL*0.2),  -- 세일즈맨
    'ANLAYST', SAL + (SAL * 0.3), --어널리스트
    SAL+(SAL*0.05)) AS MONEY  -- 그 외
    FROM EMP; 