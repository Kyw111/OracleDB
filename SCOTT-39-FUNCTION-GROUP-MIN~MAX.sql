-- �׷��Լ�: ������ �Լ�
-- �ִ밪, �ּҰ�
-- MAX(COLUMN):�ִ밪
-- MIN(COLUMN):�ּҰ�

-- ���� �޿��� ���� �޴� ����� �޿�
SELECT MAX(SAL) FROM EMP;
-- ���� �޿��� ���� �޴� ����� �޿�
SELECT MIN(SAL) FROM EMP;
-- ���� �޿��� ���� �޴� ����� ���� ���� �޴� ����� �޿�
SELECT MIN(SAL), MAX(SAL) FROM EMP;
-- �Ի����� ���� ������ ����� ���� �ֱ��� ����� �Ի�����
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP WHERE DEPTNO = 20;