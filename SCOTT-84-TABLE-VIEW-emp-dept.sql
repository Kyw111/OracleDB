-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����: 
--  1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 �ȴ����� �ֱ� ������ ���� ����)
--  2. ���ȼ�(������ ���̺��̳� ������ ����)

-- �Ź� �̷����ϸ� �����ϴϱ� VIEW�� ����
-- VIEW AS (SELECT ����ٰ� �־��ָ��)
SELECT E.EMPNO, E.ENAME, E.JOB, D.DEPTNO, D.DNAME, D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- �並 ������ ����:
-- �ɼ� : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT
    AS (SELECT E.EMPNO, E.ENAME, E.JOB, D.DEPTNO, D.DNAME, D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO);

SELECT * FROM USER_VIEWS;

SELECT * FROM EMP_DEPT;

-- �Է�(INSERT) : ���ο� ���� ������� ��� �Է��� �� �� ����.
-- ����: ���� �信 ���Ͽ� �ϳ� �̻��� �⺻ ���̺��� ������ �� �����ϴ�
INSERT INTO EMP_DEPT
    VALUES (9999, 'NINENINE', 'STUDENT', 30, 'SALES', 'CHICAGO');



