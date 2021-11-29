-- CASE
-- CASE �˻簪(Į��)
--      WHEN ����1 THEN ���1
--      WHEN ����2 THEN ���2
--      WHEN ����3 THEN ���3
--      ELSE ���N
-- END AS ALIAS

-- [CASE]
--��å�� MANAGER�� ���: �޿��� 10%�� ����
--��å�� SALESMAN�� ���: �޿��� 20%�� ����
--��å�� ANALYST�� ���: �޿��� 30%�� ����
--�������� �޿��� 5%�� ����
SELECT ENAME, SAL, JOB,
    CASE JOB 
        WHEN 'MANAGER' THEN SAL +(SAL * 0.1) --�Ŵ���
        WHEN 'SALESMAN' THEN SAL + (SAL*0.2)  -- �������
        WHEN 'ANLAYST' THEN SAL + (SAL * 0.3) --��θ���Ʈ
        ELSE SAL+(SAL*0.05)   -- �� ��
    END AS MONEY
    FROM EMP;

-- �˻簪(���ذ�)���� ���ǽĸ� ���
SELECT ENAME, SAL, JOB,
    CASE  
        WHEN JOB = 'MANAGER' THEN SAL +(SAL * 0.1) --�Ŵ���
        WHEN JOB = 'SALESMAN' THEN SAL + (SAL*0.2)  -- �������
        WHEN JOB = 'ANLAYST' THEN SAL + (SAL * 0.3) --��θ���Ʈ
        ELSE SAL+(SAL*0.05)   -- �� ��
    END AS MONEY
    FROM EMP;

-- ����
-- �پ��� ���ǿ� ���� ó��
-- �ڹ��� IF���� ����
SELECT ENAME, SAL, JOB, COMM,
    CASE
        WHEN COMM IS NULL THEN SAL + (SAL * 0.5)
        WHEN COMM = 0 THEN SAL + (SAL * 1.4)
        WHEN COMM > 0 THEN SAL + (SAL * COMM)
        ELSE SAL
    END AS UPSAL
    FROM EMP;