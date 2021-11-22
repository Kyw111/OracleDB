-- 문자열 함수 : 문자 지우기
-- TRIM : 문자열의 양쪽에서 지정된 문자열을 지움
--      : TRIM(옵션 삭제할 문자열 FROM 원본문자열), TRIM(STRING SRC, INT OPTION){}
--      : BOTH : 양쪽
--      : LEADING : 왼쪽
--      : TRAILING : 오른쪽
-- LTRIM : 문자열의 왼쪽에서 지정된 문자열을 지움
--       : LTRIM(원본문자열, 삭제할 문자열)
-- RTRIM : 문자열의 오른쪽에서 지정된 문자열을 지움
--       : RTRIM(원본문자열, 삭제할 문자열)
-- 문자열의 양쪽 공백을 제거
-- 지울 문자열을 지정하지 않으면 공백
SELECT '[' ||TRIM('    홍길동   ') || ']' FROM DUAL;
SELECT '[' ||TRIM(BOTH ' 'FROM '    홍길동   ') || ']' FROM DUAL; -- 공백제거
SELECT '[' ||TRIM(BOTH '-'FROM '----홍길동----') || ']' FROM DUAL; -- 하이픈(-)제거
SELECT '[' ||TRIM(BOTH '.'FROM '...홍길동...') || ']' FROM DUAL; -- 마침표(.)제거

-- 왼쪽 문자열 공백 지움
SELECT '[' ||LTRIM('    홍길동   ') || ']' FROM DUAL;
SELECT '[' ||LTRIM('    홍길동   ', ' ') || ']' FROM DUAL;  --지울 문자열을 지정
SELECT '[' ||TRIM(LEADING FROM '    홍길동   ') || ']' FROM DUAL; --지정하지 않으면 공백
SELECT '[' ||TRIM(LEADING ' ' FROM '    홍길동   ') || ']' FROM DUAL; -- 공백지정
SELECT '[' ||TRIM(LEADING '-' FROM '----홍길동----') || ']' FROM DUAL; -- 하이픈(-) 제거

-- 오른쪽 문자열 공백 지움
SELECT '[' ||RTRIM('    홍길동   ') || ']' FROM DUAL;
SELECT '[' ||RTRIM('    홍길동   ', ' ') || ']' FROM DUAL; --지울 문자열을 지정
SELECT '[' ||RTRIM('....홍길동....', '.') || ']' FROM DUAL; --지울 문자열을 지정
SELECT '[' ||TRIM(TRAILING FROM '    홍길동   ') || ']' FROM DUAL; --지정하지 않으면 공백
SELECT '[' ||TRIM(TRAILING ' ' FROM '    홍길동   ') || ']' FROM DUAL; -- 공백지정
SELECT '[' ||TRIM(TRAILING '-' FROM '----홍길동----') || ']' FROM DUAL; -- 하이픈(-) 제거