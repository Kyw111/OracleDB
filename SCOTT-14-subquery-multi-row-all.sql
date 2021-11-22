-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN, ANY, SOME, ALL, EXISTS

--[ALL]
-- ���������� ��ȯ�� ���� �����
-- ���������� ���ǽ� ����� ����� ���(ALL) ������
-- �������� ���ǽ��� TRUE�� ��ȯ

-- �μ��ڵ尡 30�� ����� �޿�����
SELECT * FROM EMP WHERE DEPTNO = 30 ORDER BY SAL;

-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ��� ����
-- JAMES : 950
SELECT * FROM EMP 
    WHERE SAL < ALL(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;
    
-- �μ��ڵ尡 30�� ������� �ְ� �޿����� �� ���� �޿��� �޴� ��� ����
-- BLAKE : 2850
SELECT * FROM EMP 
    WHERE SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;

--�μ��ڵ尡 30�� ������ ������ �޿��� �޴� ���
--����: �� ����� �޿��� �����ϹǷ� ��� ������ ������ų �޿��� ���� ����� ����. 
--������������.
SELECT * FROM EMP 
    WHERE SAL = ALL(SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;

-- �޿��� 1300�޴� ���
-- ��� ���� �ϳ��� ��츦 �����ϴ� ���� ���� �� �ִ�.
-- ������������.
SELECT * FROM EMP 
    WHERE SAL = ALL(SELECT SAL FROM EMP WHERE SAL = 1300)
    ORDER BY SAL, EMPNO;
