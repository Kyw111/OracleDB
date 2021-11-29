-- ���̺� ����: ALTER TABLE 
--  1. ���̺��� ���� ����
--  2. ������ �ڷḦ ���������ϴ�
-----------------------------------------------------------------
-- ��� 
--  1. ADD      : ���̺��� Į���� �߰�
--      ALTER TABLE ���̺�� ADD Į���� �ڷ���;
--  2. RENAME   : ���̺��� Į�� �̸��� ����
--      ALTER TABLE ���̺�� RENAME COLUMN ����Į���� TO ��Į����;
--  3. MODIFY   : ���̺��� Į�� �ڷ����� ����
--      ALTER TABLE ���̺�� MODIFY Į���� �ڷ���
--  4. DROP     : ���̺��� Į���� ����
--      ALTER TABLE ���̺�� DROP DROP COLUMN Į����

DESC HELLOX;
SELECT * FROM HELLOX;

-- Į���߰� : �ּ�
ALTER TABLE HELLOX ADD ADDR VARCHAR2(50);
-- Į���̸� ���� : ADDR -> LOC�� �̸� ����
ALTER TABLE HELLOX RENAME COLUMN ADDR TO LOC;
-- Į���� �ڷ��� ���� : LOC(50) -> LOC(100)
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(100);
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(50);  

-- ũ�⸦ ���� �� �����Ͱ� NULL�̰ų�
-- �̹� ������ִ� �������� ũ�⺸�� Ŀ�� �Ѵ�.
INSERT INTO HELLOX VALUES ( '20000', 2000, 'HELLO', NULL, NULL, NULL); 
ALTER TABLE HELLOX MODIFY NAME VARCHAR2(10);

-- Į�� ���� : LOC
ALTER TABLE HELLOX DROP COLUMN LOC;