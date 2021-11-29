-- �׷��Լ�
-- GROUP BY ROLLUP
-- �׷��Լ��� ������ Į�� �ܰ躰 ����(�߰��ܰ�, ��ü)
-- �߰��ܰ� : ������ Į���� ����ŭ ����
-- ��ü���� : �� ������ ���� ���

--(�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿�
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
--ROLLUP : �� �׷캰 ����
-- 1�ܰ�: DEPTNO ����
-- 2�ܰ�: ��ü ����
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY ROLLUP(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- GROUP BY DEPTNO, ROLLUP(JOB)
-- �μ��ڵ�� �׷�ȭ�� �� ��, ��å���� ����
-- ��å(JOB) ������ ����
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, ROLLUP(JOB)
    ORDER BY DEPTNO, JOB;