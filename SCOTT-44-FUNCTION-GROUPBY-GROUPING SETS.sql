-- �׷��Լ�
-- GROUPING SETS : �� Į���� �׷�
-- ���� ������ �׷�ȭ Į���� ���� ���� ��
-- ���� ���� �������� ���

-- �μ��� ����Ѽ�
SELECT DEPTNO, COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO;

-- ��å�� ����Ѽ�
SELECT JOB, COUNT(JOB) FROM EMP GROUP BY JOB;

-- �ܰ躰(�μ���, ��å��)
SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO, JOB;

-- �� �μ��� �����, ��å�� �����
SELECT DEPTNO, JOB, COUNT(*)
    FROM EMP
    GROUP BY GROUPING SETS(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;