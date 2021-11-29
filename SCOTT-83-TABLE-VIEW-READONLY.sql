-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����: 
--  1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 �ȴ����� �ֱ� ������ ���� ����)
--  2. ���ȼ�(������ ���̺��̳� ������ ����)

-- �並 ������ ����:
-- �ɼ� : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30) WITH READ ONLY;

CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

SELECT * FROM USER_VIEWS;

-- �Է�(INSERT)
-- ����: "cannot perform a DML operation on a read-only view"
INSERT INTO EMP_DEPT30
    VALUES (9999, 'NINENINE', 'STUDENT', NULL, NULL, 1000, 500, 10);

SELECT * FROM EMP_DEPT30; 

--�� ����
DROP VIEW EMP_DEPT30;
