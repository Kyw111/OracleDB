-- 학생 테이블에서 학과 테이블을 외부키로 참조
-- 1. 테이블의 생성 순서 subject -> student
-- 2. 데이터를 넣는 순서 : subject -> student
-- 3. 삭제되는 순서 : student -> subject
----------------------------------------------------------------------------
-- 참조되는 테이블의 데이터를 삭제할 때 참조하고 있는 데이터도 함께 삭제
-- CONSTRANT 제약조건이름 REFERENCES 참조테이블(칼럼) ON DELETE CASCADE
----------------------------------------------------------------------------

-- 학과 테이블
CREATE TABLE SUBJECT (
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,         --학과번호
    SUBNAME VARCHAR2(20)                                                -- 학과명
);

-- 학생 테이블
-- ON DELETE CASCADE 
CREATE TABLE STUDENT (
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,               -- 학번
    SNAME VARCHAR2(20),                                                 -- 이름
    --SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT -- 학과
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO) ON DELETE CASCADE
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
--[삭제]
------------------------------------------------------------------------
-- 2. 학과 테이블
-- 학과만 지웠을 뿐인데 '경제학과' 학생들의 데이터가 자동으로 삭제 됨( 양날의 칼 )
DELETE FROM SUBJECT WHERE SUBNO = '2021-0004';  -- 경제학과
SELECT * FROM STUDENT;