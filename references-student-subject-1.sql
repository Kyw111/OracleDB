-- 학생 테이블에서 학과 테이블을 외부키로 참조
-- 1. 테이블의 생성 순서 subject -> student
-- 2. 데이터를 넣는 순서 : subject -> student
-- 3. 삭제되는 순서 : student -> subject

-- 학과 테이블
CREATE TABLE SUBJECT (
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,         --학과번호
    SUBNAME VARCHAR2(20)                                                -- 학과명
);

-- 학생 테이블
-- 학과 코드 : SUBJECT.SUBNO 참조
-- 참조테이블만 명시하면 참조하는 칼럼명과 참조되는 칼럼명이 같아야 한다.(SUBNO)
-- 참조 되는 칼럼을 명시하면 칼럼명이 같을 필요는 없다.
-- 참조되는 테이블의 참조 칼럼은 메인키(PRIMARY KEY)로 제약조건이 되어야 한다.
CREATE TABLE STUDENT (
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,               -- 학번
    SNAME VARCHAR2(20),                                                 -- 이름
    --SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT -- 학과
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO)
);

DROP TABLE STUDENT;
DROP TABLE SUBJECT;
------------------------------------------------------------------------
--[입력되는 순서]
------------------------------------------------------------------------
-- 1. 학과 테이블
INSERT INTO SUBJECT VALUES( '2021-0001', '수학과');
INSERT INTO SUBJECT VALUES( '2021-0002', '국문과');
INSERT INTO SUBJECT VALUES( '2021-0003', '영문과');
INSERT INTO SUBJECT VALUES( '2021-0004', '경제학과');
INSERT INTO SUBJECT VALUES( '2021-0005', '컴퓨터학과');

SELECT * FROM SUBJECT;
SELECT * FROM STUDENT;

-- 2. 학생 테이블
-- SUBJECT.SUBNO에 입력하는 데이터가 존재해야 한다.
INSERT INTO STUDENT VALUES ( 10000, '홍길동', '2021-0001');
INSERT INTO STUDENT VALUES ( 20000, '문학소녀', '2021-0002');
INSERT INTO STUDENT VALUES ( 30000, '외무부', '2021-0003');
INSERT INTO STUDENT VALUES ( 40000, '스티브', '2021-0004');
INSERT INTO STUDENT VALUES ( 50000, '워런버핏', '2021-0004');
INSERT INTO STUDENT VALUES ( 60000, '김성현', '2021-0005');

-- 조인
SELECT S.SNO, S.SNAME, S.SUBNO, J.SUBNO, J.SUBNAME
    FROM STUDENT S, SUBJECT J
    WHERE S.SUBNO = J.SUBNO;
------------------------------------------------------------------------
--[삭제되는 순서]
------------------------------------------------------------------------
-- 1. 학생 테이블
DELETE FROM STUDENT WHERE SNO = 10000;
-- 2. 학과 테이블
DELETE FROM SUBJECT WHERE SUBNO = '2021-0001';