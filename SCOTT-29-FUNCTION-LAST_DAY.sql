-- 날짜 함수

-- 해당 달의 마지막 날짜를 구하는 함수(예: 11월의 마지막 날짜)
-- LAST_DAY(날짜데이터)
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;

-- 2021년 10월의 마지막 날짜? (따옴표 붙여주기)
SELECT LAST_DAY('21/10/01') FROM DUAL;
SELECT LAST_DAY('2021/10/01') FROM DUAL;
