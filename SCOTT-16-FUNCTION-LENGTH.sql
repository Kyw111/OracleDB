--length : ���ڿ� ���̸� ���ϴ� �Լ�
--length(column) : Į�� ���ڿ��� ���̸� ����
-- ���ڿ� ���̴� ������ ����, ����Ʈ ������ �ƴ�
-- "abc" : 3�ڸ�
-- "�ȳ��ϼ���" : 5�ڸ�
-------------------------------------------------------------
--lengthb : ���ڿ� ���̸� ����Ʈ ������ ���ϴ� �Լ�
--lengthb(column) : Į�� ���ڿ��� ���̸� ����Ʈ ������ ����
-- ������ �����Ͱ� ����� ũ�⸦ ����Ʈ ������ ����

SELECT ENAME, LENGTH(ENAME) FROM EMP;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME) = 4; --���ڿ��� ���̰� 4�� ���
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME) >= 4; --���ڿ��� ���̰� 4���� ũ�ų� ���� ���
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME) < 6; --���ڿ��� ���̰� 6���� ���� ���

-- �̸��� �ѱ��� ���
SELECT ENAME, LENGTH(ENAME), LENGTHB(ENAME), job, LENGTH(JOB), LENGTHB(JOB) FROM EMP3;
--character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';