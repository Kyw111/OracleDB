-- �л� ���̺��� �а� ���̺��� �ܺ�Ű�� ����
-- 1. ���̺��� ���� ���� subject -> student
-- 2. �����͸� �ִ� ���� : subject -> student
-- 3. �����Ǵ� ���� : student -> subject
----------------------------------------------------------------------------
-- �����Ǵ� ���̺��� �����͸� ������ �� �����ϰ� �ִ� �����͸� NULL�� ����
-- CONSTRANT ���������̸� REFERENCES �������̺�(Į��) ON DELETE SET NULL
----------------------------------------------------------------------------

-- �а� ���̺�
CREATE TABLE SUBJECT (
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,         --�а���ȣ
    SUBNAME VARCHAR2(20)                                                -- �а���
);

-- �л� ���̺�
-- ON DELETE SET NULL 
CREATE TABLE STUDENT (
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,                -- �й�
    SNAME VARCHAR2(20),                                                 -- �̸�
    --SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT -- �а�
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO) ON DELETE SET NULL
);

DROP TABLE STUDENT;
DROP TABLE SUBJECT;
------------------------------------------------------------------------
--[�ԷµǴ� ����]
------------------------------------------------------------------------
-- 1. �а� ���̺�
INSERT INTO SUBJECT VALUES( '2021-0001', '���а�');
INSERT INTO SUBJECT VALUES( '2021-0002', '������');
INSERT INTO SUBJECT VALUES( '2021-0003', '������');
INSERT INTO SUBJECT VALUES( '2021-0004', '�����а�');
INSERT INTO SUBJECT VALUES( '2021-0005', '��ǻ���а�');
--INSERT INTO SUBJECT VALUES( '2021-0007', '�ΰ������а�');

SELECT * FROM SUBJECT;
SELECT * FROM STUDENT;

-- 2. �л� ���̺�
-- SUBJECT.SUBNO�� �Է��ϴ� �����Ͱ� �����ؾ� �Ѵ�.
INSERT INTO STUDENT VALUES ( 10000, 'ȫ�浿', '2021-0001');
INSERT INTO STUDENT VALUES ( 20000, '���мҳ�', '2021-0002');
INSERT INTO STUDENT VALUES ( 30000, '�ܹ���', '2021-0003');
INSERT INTO STUDENT VALUES ( 40000, '��Ƽ��', '2021-0004');
INSERT INTO STUDENT VALUES ( 50000, '��������', '2021-0004');
INSERT INTO STUDENT VALUES ( 60000, '�輺��', '2021-0005');

-- ����
SELECT S.SNO, S.SNAME, S.SUBNO, J.SUBNO, J.SUBNAME
    FROM STUDENT S, SUBJECT J
    WHERE S.SUBNO = J.SUBNO;
------------------------------------------------------------------------
--[����]
------------------------------------------------------------------------
-- 2. �а� ���̺�
-- '�����а�' �л����� �����Ͱ� NULL�� �����( �糯�� Į )
DELETE FROM SUBJECT WHERE SUBNO = '2021-0004';  -- �����а�
SELECT * FROM STUDENT;
-- �����Ǵ� Į���� �����Ͱ� ������ �Է��� ���� ����.
-- ���Ἲ ��������(SOLUSER.FK_SUBJECT_SUBNO)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�
INSERT INTO STUDENT VALUES(70000, '�迵��', '2021-0007'); --�ΰ������а�
-- NULL�� �ӽ÷� ���� �� �ִ�.
INSERT INTO STUDENT VALUES(70000, '�迵��', NULL);