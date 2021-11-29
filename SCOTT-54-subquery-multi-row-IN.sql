-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN, ANY, SOME, ALL, EXISTS

--[IN]
-- ���������� ��ȯ�� ���� ��� �߿���
-- ���������� ���ǽİ� �ϳ��� ������
-- �������� ���ǽ��� TRUE�� ��ȯ

-- ����߿��� �μ��ڵ尡 10 �̰ų�(OR) 20�� ���
SELECT * FROM EMP WHERE DEPTNO IN(10,20) ORDER BY DEPTNO;
-- �μ��� �ְ� �޿���
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- �μ��� �ְ� �޿����� �޴� �������
SELECT * FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
-- �μ��� ���� �޿����� �޴� �������
SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO;
SELECT * FROM EMP WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO)
ORDER BY DEPTNO;
----------------------------------------------------------------------------
-- ������� �Ҽӵ� �μ�
SELECT * FROM DEPT
    WHERE DEPTNO IN (SELECT DISTINCT DEPTNO FROM EMP);
-- ����� ������ ���� ���� �μ�
SELECT * FROM DEPT
    WHERE DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM EMP);
    
SELECT * FROM dept 
    WHERE deptno NOT IN(SELECT deptno FROM emp GROUP by deptno);