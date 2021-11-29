-- ������(Sequence)
-- ���� : ���������� ����Ǵ� �Ϸù�ȣ
/*
CREATE SEQUENCE �������̸�
    INCREMENT BY N      -- ������(�⺻�� 1)
    START WITH N        -- ���۰�(�⺻�� 1)
    MAXVALUE N          -- �ִ밪
    MINVALUE N          -- �ּҰ�(CYCLE�� ��� MAXVALUE�� ���� �� ���۰�)
    CYCLE | NOCYCLE     -- �ִ밪�� �������� �� ���۰����� �ٽ� ������ ������ ����
    CACHE N | NOCACHE   -- ������ ��ȣ�� �޸𸮿� �̸� �Ҵ��� ���� ���� �������� ����(�⺻���� 20)
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

-- ���� ��ȣ ���� : ������ �ѹ��� ������ �ؾ� �Ѵ�.
-- ��ȣ�� ����Ǹ鼭 ����
-- MAXVALUE�� ������ �Ŀ� �ٽ� �����ϸ� ����
-- ������ HELLO_SEQ.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�
SELECT HELLO_SEQ.NEXTVAL FROM DUAL;
--���� ��ȣ ��ȸ
SELECT HELLO_SEQ.CURRVAL FROM DUAL;

CREATE TABLE DEPTSEQ AS SELECT * FROM DEPT WHERE 1 <> 1;
SELECT * FROM DEPTSEQ;

INSERT INTO DEPTSEQ VALUES (HELLO_SEQ.NEXTVAL, 'EZ' || HELLO_SEQ.CURRVAL, 'SEONGNAM');
COMMIT;