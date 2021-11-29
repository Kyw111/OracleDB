-- 숫자 데이터 : 반올림
-- round : 반올림
-- trunc : 버림
-- ceil : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- floor : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- mod : 나머지 값을 반환

--[CEIL]
-- ceil(숫자) : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- 소숫점이 있는 실수에서 그 값보다는 큰 근접한 가장 큰 정수(올림)
SELECT CEIL(1.456) FROM DUAL; -- 1.456 < 2
SELECT CEIL(0.123) FROM DUAL; -- 0.123 < 1
SELECT CEIL(-1.456) FROM DUAL; -- -1.456 < -1

-- 부동소숫점인 경우에만 의미가 있으며 정수는 그 정수값을 그대로 반환
SELECT CEIL(345) FROM DUAL; -- 345
SELECT CEIL(-345) FROM DUAL; -- -345

--[FLOOR]
-- FLOOR(숫자) : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- 소숫점이 있는 실수에서 그 값보다는 큰 근접한 가장 작은 정수(내림)
SELECT FLOOR(1.456) FROM DUAL; -- 1.456 < 1
SELECT FLOOR(0.123) FROM DUAL; -- 0.123 < 0
SELECT FLOOR(-1.456) FROM DUAL; -- -1.456 < -2

-- 부동소숫점인 경우에만 의미가 있으며 정수는 그 정수값을 그대로 반환
SELECT FLOOR(345) FROM DUAL; -- 345
SELECT FLOOR(-345) FROM DUAL; -- -345