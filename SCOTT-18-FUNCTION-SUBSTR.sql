-- 문자열 함수 : 문자열 추출 함수
-- substr(데이터, 시작위치, 추출길이)
-- 시작위치 : 1부터, 마이너스(minus)이면 마지막 위치부터 시작
-- 추출길이 : 생략하면 문자열의 끝까지
-- 추출결과 : 
--  >없으면 NULL
--  > 추출길이보다 작으면 문자열의 끝까지

--1번째부터 2개의 문자를 추출
SELECT JOB, SUBSTR(JOB,1,2) FROM EMP;
--6번째 위치에서 3개의 문자를 추출
SELECT JOB, SUBSTR(JOB,6,3) FROM EMP;
--5번째 위치에서 끝까지(생략)
SELECT JOB, SUBSTR(JOB,5) FROM EMP;
--1번째 위치에서 4자리 추출
SELECT JOB, SUBSTR(JOB,2,4) FROM EMP;
--시작위치를 마이너스(MINUS)로 지정
--문자열의 끝에서부터 앞으로 3자리를 이동하여 3자리 추출
SELECT JOB, SUBSTR(JOB,-3,3) FROM EMP;

--시작위치를 마이너스로 지정했는데 그 위치가 LENGTH보다 작으면?
--결과는? NULL
SELECT JOB, SUBSTR(JOB,-30,3) FROM EMP;

--시작위치를 플러스로 해서 전체 길이와 문자열을 추출?
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,1, LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,1) FROM EMP;
--시작위치를 마이너스로 해서 전체 길이와 문자열을 추출?
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB), LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB) * -1) FROM EMP;

SELECT JOB, LENGTH(JOB), LENGTH(JOB) * -1 FROM EMP;