-- �� ��¥ ������ ���� ���� ���ϴ� �Լ�
-- MONTHS_BETWEEN(��¥������1, ��¥������2) : ����� ���� ��

--�Ի�� - ����� -> ���̳ʽ�
SELECT ENAME, HIREDATE, MONTHS_BETWEEN(HIREDATE, SYSDATE) FROM EMP;
--����� - �Ի�� -> �÷���
SELECT ENAME, HIREDATE, MONTHS_BETWEEN(SYSDATE, HIREDATE) FROM EMP;
--����� - �Ի�� -> �÷���
SELECT ENAME, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) || '����' FROM EMP;
-- �ٹ��� ���� ��, ���
SELECT ENAME, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) || '����',
    ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) / 12, 2) || '��'
    FROM EMP;