-- ���߿� ��������(MULTIPLE COLUMN SUBQUERY)
--�˻� Į���� �������� ���, �������� ��������

-- �μ��� �ְ� �޿���
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;

--���߿� ��������
SELECT * 
    FROM EMP
    WHERE (DEPTNO, SAL) IN(SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO);
        -- 1��,    2��,            1��,   2��     ¦ ���缭
-- ���������� ����
SELECT * 
    FROM EMP
    WHERE DEPTNO IN(SELECT DEPTNO FROM EMP GROUP BY DEPTNO)
    AND SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
    
SELECT * FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);