-- �׷��Լ�: ������ �Լ�
-- ��հ��� ���ϴ� �Լ�
-- AVG(column)

-- ��ü ����� ��� �޿�
SELECT AVG(SAL) FROM EMP;
SELECT TRUNC(AVG(SAL)) FROM EMP; --�Ҽ��� ����

-- �μ��� 30�� ������� ��� �޿�
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 30;    -- �Ҽ��� ���� ����
SELECT TRUNC(AVG(SAL), 2) FROM EMP WHERE DEPTNO = 30; -- �Ҽ��� ���ڸ����� ������ ���
SELECT ROUND(AVG(SAL), 2) FROM EMP WHERE DEPTNO = 30; -- �Ҽ��� ���ڸ����� �ݿø�

-- �ɼ�: DISTINCT, ALL
SELECT ENAME, SAL FROM EMP WHERE DEPTNO = 30;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVG(SAL), AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;