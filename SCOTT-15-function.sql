-- 내장 함수(Built-in Function)
-- 1. 단일행 함수(Single-Row Function)
-- > 데이터가 한 행씩 입력되고 입력된 한 행당 결과가 하나씩 나오는 함수
-- 2. 다중행 함수(Multiple-Row Function)
-- > 데이터가 여러 행에 입력되고 하나의 행으로 결과가 반환되는 함수

-- 단일행 함수
-- 문자함수(String)
-- 1. upper : 데이터를 대문자로 변환
-- 2. lower : 데이터를 소문자로 변환
-- 3. initcap : 첫글자는 대문자, 나머지는 소문자로 변환
SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP;

SELECT ENAME, UPPER(ENAME) AS ENAME2, LOWER(ENAME) AS ENAME3, INITCAP(ENAME) AS ENAME4 FROM EMP;

--전체 이름으로 검색
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = 'KING';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = 'king'; --king이 소문자라서 결과값이 안나옴
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = upper('king'); --upper 함수로 출력가능

--이름의 일부 문자로 검색
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like 'J%';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like 'j%'; -- 소문자라서 결과값이 안나옴
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like upper ('j%'); -- 대문자로 변환후에 검색
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like upper ('%a%'); --대소문자 a를 포함하는 이름을 가진 모든 사원

SELECT EMPNO, ENAME FROM EMP WHERE ENAME = lower('clark'); -- 사원이름이 대문자로 저장되어있으므로, 소문자로 검색을 하면 못찾음.

--테이블 데이터와 검색하고자 하는 데이터 양쪽을 모두 소문자로 변환해서 검색(안전함)
--만약에 ename이 인덱스가 걸려있다면 함수를 적용했을 때 인덱스가 사용되지 않음.(속도가 느려짐)
SELECT EMPNO, ENAME FROM EMP WHERE lower(ENAME) = lower('clark');

SELECT EMPNO, ENAME FROM EMP WHERE initcap(ENAME) = initcap('clark');
