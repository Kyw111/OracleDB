-- �ڷ��� ��ȯ
-- TO_CHAR : ����, ��¥�����͸� ���ڷ� ��ȯ
-- TO_NUMBER : ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_DATE : ���� �����͸� ��¥ �����ͷ� ��ȯ

-- NUMBER + ���ڿ�(����) : �ڵ�����ȯ, ���ڷ� ��ȯ
-- �Ͻ��� �� ��ȯ(IMPLICIT TYPE CONVERSION)
SELECT EMPNO, ENAME, EMPNO + '11' FROM EMP;
SELECT ENAME, EMPNO, EMPNO + '11', EMPNO + 11 FROM EMP;
-- NUMBER + ���ڿ�(����) : "invalid number" ����
SELECT ENAME, EMPNO, EMPNO + 'JX' FROM EMP;
-- NUMBER + ���ڿ�(����) : "invalid number" ����
SELECT EMAME, EMPNO, ENAME + 'JX' FROM EMP;
-- ���ڿ�R + ���ڿ� : ||�� ������־�߸� ���ڿ�+���ڿ��� ������(�ڹٿ� ������)
SELECT ENAME, EMPNO, ENAME || '-JX' FROM EMP;

