-- NULL ó��
-- �������� ���� ����ִ� ����
-- �������� ���� �������� �ʴ� ����
-- (�߿�)NULL�� ��������� �ϸ� NULL�� �ȴ�.

-- ���޿� : sal * 12
SELECT ename, sal, sal*12 as annsal, comm FROM emp;

-- ���Ѽҵ� : sal * 12 + comm
SELECT ename, sal, sal*12 as annsal, comm, sal*12+comm FROM emp;
SELECT ename, sal, sal*12 as annsal, comm, sal*12+nvl(comm,0) as annual FROM emp;

--comm�� null�� ���
SELECT * FROM emp WHERE comm = NULL; -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm = null; -- �ڷᰡ �˻����� ����
--comm�� null�� �ƴ� ���
SELECT * FROM emp WHERE comm != NULL; -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm <> NULL; -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm ^= NULL; -- �ڷᰡ �˻����� ����

-- IS NULL
-- IS NOT NULL
SELECT * FROM emp WHERE comm IS NULL; --NULL�� �͵��� ��µ�
SELECT * FROM emp WHERE comm IS NOT NULL; --NULL�� �ƴѰ͵��� ��µ�
--NULL�� ���� �� ����
SELECT * FROM emp WHERE comm IS NULL AND sal > NULL; -- NULL�� �񱳵� �Ұ���

--������ : NULL
-- true AND NULL :
-- NULL AND NULL :
SELECT * FROM emp WHERE sal > 3000 AND comm = NULL;
SELECT * FROM emp WHERE sal + comm > 3000 AND comm = NULL;

-- true OR NULL : TRUE
-- false OR NULL : NULL
-- NULL OR false : NULL
-- NULL OR NULL : NULL
SELECT * FROM emp WHERE sal > 3000 OR comm = NULL; -- TRUE AND NULL -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm = NULL; -- FALSE AND NULL -> NULL
SELECT * FROM emp WHERE comm = NULL OR sal > 5000; -- NULL OR FALSE -> NULL

SELECT * FROM emp WHERE sal > 3000 OR comm IS NULL; -- TRUE AND TRUE -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm IS NULL; -- FALSE AND TRUE -> TRUE
SELECT * FROM emp WHERE comm IS NULL OR sal > 5000; -- TRUE OR FALSE -> NULL
