-- ���ڿ� �Լ� : �����͸� ����(����) �Լ�
-- CONCAT(���ڿ�1, ���ڿ�2) : ���ڿ�1 + ���ڿ�2, �� ���� ���ڿ��� �ϳ��� ����

-- �̸��� ����� ����
SELECT EMPNO, ENAME, CONCAT(ENAME, EMPNO) FROM EMP; -- �̸��� ����� ����
SELECT EMPNO, ENAME, CONCAT(EMPNO, ENAME) FROM EMP; -- ����� �̸��� ����

-- ��� + '-' + �̸�
SELECT EMPNO, ENAME, CONCAT(EMPNO, CONCAT('-', ENAME)) FROM EMP; 

-- �̸� + '(' + ��� + ')'
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('(', EMPNO)), ')')FROM EMP;

SELECT CONCAT('[', EMPNO)FROM EMP;
SELECT CONCAT(ENAME,CONCAT('[', EMPNO)) FROM EMP;
SELECT CONCAT(CONCAT(ENAME,CONCAT('[', EMPNO)), ']') FROM EMP;