-- ��������
-- ��Į�� ��������(SCALAR SUB-QUERY) : SELECT���� SELECT�� ���
-- SELECT�� �ϳ��� �� ������ ����� ���
-- ����: 
--  > SELECT�� ����ϴ� ���������� ����� �ϳ��� ���� �ش��ϴ� ���� ���;��Ѵ�.
--  > ������ ����� ������ �ȵȴ�.

-- �޿����
SELECT * FROM SALGRADE;
SELECT GRADE FROM SALGRADE;

-- ����� �޿� ���
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    ORDER BY 1;

SELECT E.EMPNO, E.ENAME, E.SAL, 
(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E               -- E.SAL���� LOSAL�� HISAL ����
    ORDER BY 1;

--������ ����� ������ �ȵȴ�
--����: "single-row subquery returns more than one row"
--SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE) AS SALGRADE FROM EMP E ORDER BY 1;

-- ����: ���� Į���� ������ �ȵȴ�.
--SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE, LOSAL, HISAL FROM SALGRADE
-- WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE FROM EMP E ORDER BY 1;

--�μ��ڵ�, �μ��̸�
SELECT E.EMPNO, E.ENAME, E.SAL, E.DEPTNO,
(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE,
(SELECT DNAME FROM DEPT WHERE E.DEPTNO = DEPT.DEPTNO) AS DNAME
    FROM EMP E
    ORDER BY 1;