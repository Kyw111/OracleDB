-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����: 
--  1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 �ȴ����� �ֱ� ������ ���� ����)
--  2. ���ȼ�(������ ���̺��̳� ������ ����)


-- ���̺� ��
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO = 30);
    
-- ���̺�䰡 �ϳ��� ���̺�ó��
SELECT * FROM EMP_DEPT30;

INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES (1234, 'ABCDE', 'STUDENT', 30); 
-- VIEW�� ������ �� ����� �˻����ǿ� �ش����� �ʾƵ� ������ �Է��� ����
-- ������ �ݿ�
INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES (4321, 'EDCBA', 'STUDENT', 20); 

SELECT * FROM EMP;
-- �� ���̺� ����
-- �並 ���ؼ� �Է�(INSERT)�� �� ROLLBACK�� ���� �ʰ�
-- DROP TABLE VIEW�� �ϸ� ������ Ŀ��(COMMIT)�� �ȴ�.
DROP VIEW EMP_DEPT30;
ROLLBACK;
DELETE FROM EMP WHERE EMPNO IN ( 1234, 4321);
COMMIT;