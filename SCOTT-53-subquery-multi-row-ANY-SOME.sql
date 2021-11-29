-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN, ANY, SOME, ALL, EXISTS

--[ANY, SOME]
-- ���������� ��ȯ�� ���� ��� �߿���
-- ���������� ���ǽİ� �ϳ��� ������
-- �������� ���ǽ��� TRUE�� ��ȯ

-- �� �μ��� �ְ� �޿���
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;

--[ANY]
--�� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM EMP
    WHERE SAL = ANY(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
    
--[SOME]
--�� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM EMP
    WHERE SAL = SOME(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
    
-- �μ��ڵ�(30)�� �ִ�޿��� �޴� ������� ���� �޿��� �޴� ��� �������
-- 30�μ� �ְ��޿� : 2850 ���� ���� �޿��� �޴� ���
SELECT * FROM EMP 
    WHERE SAL < ANY(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
    
SELECT * FROM EMP 
    WHERE SAL < SOME(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
--�׷��Լ�
-- MAX(SAL)���� ���� �޿��� �޴� ���
SELECT * FROM EMP
    WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;
--------------------------------------------------------------------
-- �μ��ڵ�(30)�� �����޿��� �޴� ������� ���� �޿��� �޴� ��� �������
-- 30�μ� �ְ��޿� : 950 ���� ���� �޿��� �޴� ���
SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30; -- 950
SELECT * FROM EMP
    WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL DESC, EMPNO;