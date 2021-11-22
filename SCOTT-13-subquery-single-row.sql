--��������(Sub-Query)
-- SELECT�� �ȿ� SELECT�� �ִ� ���
-- ��������: ���������� ����� ������ ����
-- ��������: ���������� ���
--  1. ���������� ���
--  2. ���������� ���������� �ڷ����� Į�� ������ ���ƾ� �Ѵ�.
--  3. ����� �� ���� ���������� ������ ������ ȣȯ �����ؾ� �Ѵ�.
--      (����� ������, ������)


SELECT * FROM emp;

SELECT ename, sal as "�޿�" FROM emp WHERE empno = 7782; --�޿�:2450

-- CLARK�� �޿�(2450)���� �� ���� �޿��� �޴� ���
SELECT * FROM emp WHERE SAL > 2450; --��ȿ������
--���Ʒ� ����� ����.
SELECT * FROM emp 
    WHERE sal > ( --��������
    SELECT sal FROM emp WHERE empno = 7782 --��������
    ); --���������� ��� : ������� ���� Į��

--�Ի����� ������ ����
SELECT * FROM EMP ORDER BY HIREDATE;
--[����1] TURNER ���� ���� �Ի��� ���
SELECT * FROM EMP WHERE HIREDATE < '81/09/08'; --6��
SELECT * FROM emp WHERE to_date(HIREDATE, 'YY/MM/DD') < TO_DATE('81/09/08', 'YY/MM/DD');
SELECT * FROM EMP
    WHERE HIREDATE < (
    SELECT HIREDATE FROM EMP WHERE ENAME = 'TURNER');
--[����2] TURNER�� �����ؼ� TURNER ���� �ʰ� �Ի��� ���
SELECT * FROM EMP
    WHERE HIREDATE >= (
    SELECT HIREDATE FROM EMP WHERE ENAME = 'TURNER')
    ORDER BY HIREDATE;
--[����3] �μ��ڵ尡 20�� ���� ����߿���
--       TURNER���� ���� �޿��� �޴� ��������� �Ҽ� �μ� ������ ���
SELECT * FROM EMP E, DEPT D 
    WHERE E.DEPTNO = 20 --�μ��ڵ� 20�� ���� ���
    AND E.DEPTNO = D.DEPTNO
    AND E.SAL > (SELECT SAL FROM EMP WHERE EMPNO = 7844) --�ͳʺ��� �����޿�
    ORDER BY E.SAL;
    
--[����4] �μ��ڵ尡 10,20�� ���� ����߿���
--       ��ü ����� ��� �޿����� ���� �޿��� �޴� ��������� �Ҽ� �μ� ������ ���
SELECT AVG(SAL) FROM EMP; --��ձ޿�
SELECT * FROM EMP E, DEPT D 
    WHERE E.DEPTNO IN(10, 20) --�μ��ڵ� 20�� ���� ���
    AND E.DEPTNO = D.DEPTNO
    AND E.SAL > (SELECT AVG(SAL) FROM EMP) --��ձ޿����� ���� �޿��޴� ���
    ORDER BY E.SAL;
