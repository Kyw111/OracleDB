-- �׷��Լ�: ������ �Լ�
-- �������� ��
-- SUM(COLUMN)

-- ��ü ����� �޿� �Ѿ�
SELECT SUM(SAL) FROM EMP;

SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 30;

SELECT '10' AS DEPT, COUNT(SAL), SUM(SAL), TRUNC(AVG(SAL),1) FROM EMP WHERE DEPTNO = 10
UNION ALL --10�� �μ���, 3���� �ְ�, �޿��Ѿ�, ��ձ޿�
SELECT '20' AS DEPT, COUNT(SAL), SUM(SAL), TRUNC(AVG(SAL),1) FROM EMP WHERE DEPTNO = 20
UNION ALL --20�� �μ���, 3���� �ְ�, �޿��Ѿ�, ��ձ޿�
SELECT '30' AS DEPT, COUNT(SAL), SUM(SAL), TRUNC(AVG(SAL),1) FROM EMP WHERE DEPTNO = 30;
          --30�� �μ���, 3���� �ְ�, �޿��Ѿ�, ��ձ޿�