-- ���ڿ� �Լ� : ���ڿ� ���� �Լ�
-- substr(������, ������ġ, �������)
-- ������ġ : 1����, ���̳ʽ�(minus)�̸� ������ ��ġ���� ����
-- ������� : �����ϸ� ���ڿ��� ������
-- ������ : 
--  >������ NULL
--  > ������̺��� ������ ���ڿ��� ������

--1��°���� 2���� ���ڸ� ����
SELECT JOB, SUBSTR(JOB,1,2) FROM EMP;
--6��° ��ġ���� 3���� ���ڸ� ����
SELECT JOB, SUBSTR(JOB,6,3) FROM EMP;
--5��° ��ġ���� ������(����)
SELECT JOB, SUBSTR(JOB,5) FROM EMP;
--1��° ��ġ���� 4�ڸ� ����
SELECT JOB, SUBSTR(JOB,2,4) FROM EMP;
--������ġ�� ���̳ʽ�(MINUS)�� ����
--���ڿ��� ���������� ������ 3�ڸ��� �̵��Ͽ� 3�ڸ� ����
SELECT JOB, SUBSTR(JOB,-3,3) FROM EMP;

--������ġ�� ���̳ʽ��� �����ߴµ� �� ��ġ�� LENGTH���� ������?
--�����? NULL
SELECT JOB, SUBSTR(JOB,-30,3) FROM EMP;

--������ġ�� �÷����� �ؼ� ��ü ���̿� ���ڿ��� ����?
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,1, LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,1) FROM EMP;
--������ġ�� ���̳ʽ��� �ؼ� ��ü ���̿� ���ڿ��� ����?
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB), LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB)) FROM EMP;
SELECT EMPNO, ENAME, JOB, SUBSTR(JOB,-LENGTH(JOB) * -1) FROM EMP;

SELECT JOB, LENGTH(JOB), LENGTH(JOB) * -1 FROM EMP;