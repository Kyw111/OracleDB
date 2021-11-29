-- 시퀀스(Sequence)
-- 순번 : 연속적으로 발행되는 일련번호
/*
CREATE SEQUENCE 시퀀스이름
    INCREMENT BY N      -- 증가값(기본값 1)
    START WITH N        -- 시작값(기본값 1)
    MAXVALUE N          -- 최대값
    MINVALUE N          -- 최소값(CYCLE인 경우 MAXVALUE에 도달 후 시작값)
    CYCLE | NOCYCLE     -- 최대값에 도달했을 때 시작값에서 다시 시작할 것인지 유무
    CACHE N | NOCACHE   -- 생성할 번호를 메모리에 미리 할당해 놓은 수를 지정할지 유무(기본값은 20)
*/

CREATE SEQUENCE HELLO_SEQ
    INCREMENT BY 10
    START WITH 10
    MAXVALUE 99
    MINVALUE 0
    --NOCYCLE
    CYCLE
    NOCACHE;
DROP SEQUENCE HELLO_SEQ;
SELECT * FROM USER_SEQUENCES;

-- 다음 번호 발행 : 최초의 한번은 시작을 해야 한다.
-- 번호가 발행되면서 증가
-- MAXVALUE에 도달한 후에 다시 실행하면 오류
-- 시퀀스 HELLO_SEQ.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다
SELECT HELLO_SEQ.NEXTVAL FROM DUAL;
--현재 번호 조회
SELECT HELLO_SEQ.CURRVAL FROM DUAL;

CREATE TABLE DEPTSEQ AS SELECT * FROM DEPT WHERE 1 <> 1;
SELECT * FROM DEPTSEQ;

INSERT INTO DEPTSEQ VALUES (HELLO_SEQ.NEXTVAL, 'EZ' || HELLO_SEQ.CURRVAL, 'SEONGNAM');
COMMIT;