-- DML( DATA MANIPULATION LANGUAGE)
-- �Է�(INSERT), ��ȸ(SELECT), ����(UPDATE), ����(DELETE)

--�Է�
--���̺� �����͸� �߰�
--INSERT INTO ���̺��̸� (Į��1, Į��2,...) VALUES(������1, ������2, ...);
--Į������ ������� ������ ���̺��� ��� Į���� �ش��ϴ� �����͸� VALUES���� ���
-- Į������ ����ϸ� ��õ� Į���� �����ϴ� �ڷ����� �°� VALUES���� ���� ������ŭ ����Ǿ�� �Ѵ�.


CREATE TABLE DEPTX AS SELECT * FROM DEPT WHERE 1 <> 1;
SELECT * FROM DEPTX;

--INSERT : Į�Ÿ��� ������� ����
INSERT INTO DEPTX VALUES (11, '������', '����');
--INSERT : Į������ ���
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES(12, '������');
--INSERT : ������ �ٲ㵵 �ȴ�(DNAME, DEPTNO)
INSERT INTO DEPTX (DNAME, DEPTNO) VALUES('������', 13);
-- ���� : Į���� �ش��ϴ� �ڷ����� ��ġ��������
--INSERT INTO DEPTX (DNAME, DEPTNO) VALUES(14, '�����');

-- INSERT : ��� Į������ ���
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(21, 'ȸ���', '����');
-- INSERT : ����Į��(NUMBER)�� ���ڿ��� ������?
-- ���ڷ� ��ȯ�� ������ ���ڿ��� ��ȯ���� ��������
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES('22', '�ѹ���', '����');
--����(NUMBER)���� ���ڷ� ��ȯ�� �Ұ����� ���ڿ��� ������ �� ����
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES('SS', '������', '����');

-- ���ں�ȯ�� ������ ���ڿ��� ��������� TO_NUMBER �Լ��� ���
-- TO_NUMBER(���ڿ�, ��������) : ���ڿ��� ���ڷ� ��ȯ
SELECT TO_NUMBER('31','99') FROM DUAL;
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(TO_NUMBER('31', '99'), '������', '����');
--����
-- ���ڿ� 'XY'�� ���ڷ� ��ȯ�� �� ����.
--SELECT TO_NUMBER('XY', '99') FROM DUAL;
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES(TO_NUMBER('XY', '99'), '���ź�', '����');

--��õ� Į���� ������ VALUES���� ����� ������ ��ġ���� ������?
-- Į��3��, VALUES 2��
--���� : NOT ENOUGH VALUES 
--INSERT INTO DEPTX(DEPTNOO, DNAME, LOC) VALUES (41, '������');
INSERT INTO DEPTX(DEPTNO, DNAME) VALUES (41, '������');
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (42, '������2', NULL);
--''�� NULL�� ó��
-- LENGTH(LOC) : NULL, ZERO(0)�� �ƴ�
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (43, '������3', ''); 
SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO = 43;
-- DNAME�� NULL�� ó��
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (44, NULL, '�λ�');
-- ���鹮��(SPACE)�� ������ ������ 1���� ���ڷ� ó��
-- LENGTH(LOC) : ' ', 1 
-- ���鹮�� Ȯ���� ���ؼ� LENGTH�� Ȯ���ϴ°͵� ���� �����.
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (45, '������5', ' '); 
SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO = 45;
--Į���� ������ ũ�⸦ �Ѿ ���
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (123, '�μ�123', '����123'); -- �μ��ڵ��� ũ�� �߸�
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (51, 'ABCDEFGHIJKLMNO', 'LOC513'); -- �μ����� ũ�� �߸�
-- ���� �ѱ��̳� �ٱ����� ��� LENGTHB(?) ����Ʈ ũ��� Ȯ��
SELECT '��ǰ���ߺ�', LENGTH('��ǰ���ߺ�'), LENGTHB('��ǰ���ߺ�') FROM DUAL; -- LENGTH(5), LENGTHB(15)
INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (52, '��ǰ���ߺ�', 'LOC513'); -- �μ����� ũ�� �߸�