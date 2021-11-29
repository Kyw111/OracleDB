-- DML( DATA MANIPULATION LANGUAGE)
-- 입력(INSERT), 조회(SELECT), 수정(UPDATE), 삭제(DELETE)

--입력
--테이블에 데이터를 추가
--INSERT INTO 테이블이름 (칼럼1, 칼럼2,...) VALUES(데이터1, 데이터2, ...);
--칼럼명을 명시하지 않으면 테이블의 모든 칼럼에 해당하는 데이터를 VALUES절에 기술
-- 칼럼명을 명시하면 명시된 칼럼에 대응하는 자료형에 맞게 VALUES절에 같은 갯수만큼 기술되어야 한다.


CREATE TABLE DEPTX AS SELECT * FROM DEPT WHERE 1 <> 1;
SELECT * FROM DEPTX;

--INSERT : 칼렴명을 명시하지 않음
INSERT INTO DEPTX VALUES (11, '교육부', '성남');
--INSERT : 칼럼명을 명시
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES(12, '마케팅');
--INSERT : 순서를 바꿔도 된다(DNAME, DEPTNO)
INSERT INTO DEPTX (DNAME, DEPTNO) VALUES('영업부', 13);
-- 오류 : 칼럼에 해당하는 자료형이 일치하지않음
--INSERT INTO DEPTX (DNAME, DEPTNO) VALUES(14, '자재부');

-- INSERT : 모든 칼럼명을 명시
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(21, '회계부', '서울');
-- INSERT : 숫자칼럼(NUMBER)에 문자열을 넣으면?
-- 숫자로 변환이 가능한 문자열은 변환없이 지정가능
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES('22', '총무부', '서울');
--숫자(NUMBER)형에 숫자로 변환이 불가능한 문자열을 지정할 수 없다
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES('SS', '연구부', '강원');

-- 숫자변환이 가능한 문자열을 명시적으로 TO_NUMBER 함수를 사용
-- TO_NUMBER(문자열, 숫자포맷) : 문자열을 숫자로 변환
SELECT TO_NUMBER('31','99') FROM DUAL;
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(TO_NUMBER('31', '99'), '연구부', '강원');
--오류
-- 문자열 'XY'는 숫자로 변환할 수 없다.
--SELECT TO_NUMBER('XY', '99') FROM DUAL;
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(TO_NUMBER('XY', '99'), '구매부', '대전');

--명시된 칼럼의 갯수와 VALUES절에 기술된 갯수가 일치하지 않으면?
-- 칼럼3개, VALUES 2개
--오류 : NOT ENOUGH VALUES 
--INSERT INTO DEPTX(DEPTNOO, DNAME, LOC) VALUES (41, '무역부');
INSERT INTO DEPTX(DEPTNO, DNAME) VALUES (41, '무역부');
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (42, '무역부2', NULL);
--''은 NULL로 처리
-- LENGTH(LOC) : NULL, ZERO(0)이 아님
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (43, '무역부3', ''); 
SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO = 43;
-- DNAME을 NULL로 처리
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (44, NULL, '부산');
-- 공백문자(SPACE)는 보이지 않지만 1개의 문자로 처리
-- LENGTH(LOC) : ' ', 1 
-- 공백문자 확인을 위해서 LENGTH로 확인하는것도 좋은 방법임.
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (45, '무역부5', ' '); 
SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO = 45;
--칼럼의 지정된 크기를 넘어선 경우
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (123, '부서123', '지역123'); -- 부서코드의 크기 잘못
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (51, 'ABCDEFGHIJKLMNO', 'LOC513'); -- 부서명의 크기 잘못
-- 값이 한글이나 다국어인 경우 LENGTHB(?) 바이트 크기로 확인
SELECT '제품개발부', LENGTH('제품개발부'), LENGTHB('제품개발부') FROM DUAL; -- LENGTH(5), LENGTHB(15)
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (52, '제품개발부', 'LOC513'); -- 부서명의 크기 잘못