-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����: 
--  1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 �ȴ����� �ֱ� ������ ���� ����)
--  2. ���ȼ�(������ ���̺��̳� ������ ����)

-- ��� ���̺��� �μ��ڵ尡 30�� ���
SELECT * FROM EMP WHERE DEPTNO = 30;

-- ��������
SELECT EMP.* FROM
    (SELECT * FROM EMP WHERE DEPTNO = 30) EMP;
    
-- ���̺� ��
GRANT CREATE VIEW TO SCOTT;
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);
-- ���̺�䰡 �ϳ��� ���̺�ó��
SELECT * FROM EMP_DEPT30;
-- ���� ����ڰ� ������ �ִ� ���̺� ���
SELECT * FROM TAB;

-- ����(DICT)
SELECT * FROM USER_VIEWS;

-- �� ���̺� ����
DROP VIEW EMP_DEPT30;