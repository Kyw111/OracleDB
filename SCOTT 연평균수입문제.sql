DESC emp;

SELECT * FROM emp;
--[����3]
-- sal : ���޿�
-- comm : �����
-- ��� ���� �� �޿�
-- ��� ���� �� �ҵ�
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual
FROM emp
ORDER BY sal2;

-- �� ��� ����
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual,
(sal*12 + nvl(comm, 0)) / 12 as avg
FROM emp
ORDER BY avg;