-- 숫자 데이터 : 반올림
-- round : 반올림
-- trunc : 버림
-- ceil : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- floor : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- mod : 나머지 값을 반환

-- MOD(나누어질 숫자, 나눌 숫자)

SELECT MOD(10, 3) FROM DUAL;    -- 나머지 : 1
SELECT MOD(10, 2) FROM DUAL;    -- 나머지 : 0

-- 홀수 : 2로 나누너 나머지가 있으면 홀수
SELECT MOD(7, 2) FROM DUAL;    -- 나머지 값이 있으면 홀수 : 나머지 1
-- 짝수 : 2로 나누너 나머지가 없으면 짝수
SELECT MOD(8, 2) FROM DUAL;    -- 나머지 값이 있으면 짝수 : 나머지 0