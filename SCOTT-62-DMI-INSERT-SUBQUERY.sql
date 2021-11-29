-- ���������� �̿��� �Է�
-- ���������� �̿��Ͽ� INSERT�� �ϴ� ���� VALUES ������ ����
-- ����:
--  > 1. Į���� ������ ��ġ
--  > 2. Į���� �ڷ����� ��ġ

-- ��ü ����� �޿����
SELECT E.*, S.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
-- ��ü ����� �޿������ 1����� ���
SELECT E.*, S.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;
    
-- ��ü ����� �޿������ 4����� ��� ���̺�
CREATE TABLE EMP4 AS SELECT * FROM EMP WHERE 1 <> 1; -- �����̺�
-- ��ü ����� �޿������ 4����� ��� ���̺� �Է�
INSERT INTO EMP4 
    SELECT E.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;
--��ü ����� �޿������ 4����� ��� ���̺� �Է�
-- ���� Į��: COMM, DEPTNO
INSERT INTO EMP4 (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
    SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, SYSDATE, E.SAL, NULL
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 2;
