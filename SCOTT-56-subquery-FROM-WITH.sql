-- �������� : FROM���� ����ϴ� �������� 
-- �ζ��� ��(INLINE VIEW)
-- ���̺� ��ü�� �ƴ϶� SELECT���� ���� �Ϻ� �����͸� �����ؼ� ���
-- WITH: ���������� �̸� �����Ͽ� SELECT���� ���

SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME
    FROM (SELECT * FROM EMP WHERE DEPTNO = 10) E,
         (SELECT * FROM DEPT WHERE DEPTNO = 10) D
    WHERE E.DEPTNO = D.DEPTNO;

-- WITH
-- ���������� �̸� �����Ͽ� SELECT���� ���
WITH
E AS (SELECT * FROM EMP WHERE DEPTNO = 10),
D AS (SELECT * FROM DEPT WHERE DEPTNO = 10)
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM E, D   --WITH���� ������ ��Ī�� ���
    WHERE E.DEPTNO = D.DEPTNO;