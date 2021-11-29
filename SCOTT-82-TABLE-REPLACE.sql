-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����: 
--  1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 �ȴ����� �ֱ� ������ ���� ����)
--  2. ���ȼ�(������ ���̺��̳� ������ ����)

CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

-- �䰡 ������ �����ϰ� �䰡 ������ �����϶�.
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);

CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 20);

-- ����: ���ο� ������ ���� ����

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_DEPT30; 

-- �̸�����
RENAME EMP_DEPT30 TO EMP_DEPT20;

--�� ����
DROP VIEW EMP_DEPT30;
DROP VIEW EMP_DEPT20;

DELETE FROM EMP WHERE EMPNO IN ( 1234, 4321);
COMMIT;