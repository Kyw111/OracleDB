-- �׷��Լ�
-- GROUP BY CUBE
-- �׷��Լ��� ������ Į�� �ܰ躰 ����(�߰��ܰ�, ��ü)
-- �߰��ܰ� : ������ Į���� ����ŭ ����
-- ��ü���� : �� ������ ���� ���

--(�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿�
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
--CUBE : �� �׷캰 ����
-- 1�ܰ�: DEPTNO ����
-- 2�ܰ�: JOB�� ����(ROLLUP�� ����)
-- 3�ܰ�: ��ü ����
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY CUBE(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- GROUP BY DEPTNO, ROLLUP(JOB)
-- GROUP BY DEPTNO, CUBE(JOB)
-- �μ��ڵ�� �׷�ȭ�� �� ��, ��å���� ����
-- ROLLUP, CUBE�� ������ ���
-- ��å(JOB) ������ ����
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    --GROUP BY DEPTNO, ROLLUP(JOB)
    GROUP BY DEPTNO, CUBE(JOB)
    ORDER BY DEPTNO, JOB;