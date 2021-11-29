-- DECODE
-- IF, SWITCH~CASE���� ����
-- DECOD(�˻簪, ����1, ���1, ����2, ���2, ... ���N)
-- �˻簪�� ����1�� �����ϸ� ���1 ����
-- �˻簪�� ����2�� �����ϸ� ���2 ����
-- �˻簪�� �����ϴ� ������ ������ ���N�� ����

-- ������ NULL�� �ƴϸ� �޿� + ���� = �ѱ޿�
SELECT ENAME, SAL, COMM, DECODE(COMM, NULL, SAL, SAL + COMM) FROM EMP;
                             --�˻簪, ����1, TRUE, FALSE (���׿����ڶ� ���)
--��å�� MANAGER�� ���: �޿��� 10%�� ����
--��å�� SALESMAN�� ���: �޿��� 20%�� ����
--��å�� ANALYST�� ���: �޿��� 30%�� ����
--�������� �޿��� 5%�� ����
SELECT ENAME, SAL, JOB,
    DECODE (JOB, 
    'MANAGER', SAL +(SAL * 0.1), --�Ŵ���
    'SALESMAN', SAL+(SAL*0.2),  -- �������
    'ANLAYST', SAL + (SAL * 0.3), --��θ���Ʈ
    SAL+(SAL*0.05)) AS MONEY  -- �� ��
    FROM EMP; 