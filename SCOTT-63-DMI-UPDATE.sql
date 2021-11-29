-- ���̺��� ������ ����
/*
    UPDATE ���̺��
        SET Į��1 = ������1,
            Į��2 = ������2,
            Į��3 = ������3,
            ...
            Į��N = ������N
        [ WHERE ���ǽ� ]
*/

SELECT * FROM EMPX;
SELECT * FROM DEPTX;
-- �μ� ���̺��� ��� �μ���ġ�� 'SEOUL'�� ����
-- WHERE���� ���� ������ ���̺��� ��� �����Ͱ� ����
UPDATE DEPTX SET LOC = 'SEOUL';

-- �μ��̸��� '������'�� �μ� ��ġ�� 'SEONGNAM'���� ����
UPDATE DEPTX SET LOC = 'SEONGNAM' 
    WHERE DNAME LIKE '������%';
-- �μ��̸��� ���� �μ��� �̸��� '������'�� �����ϰ�
-- �μ���ġ�� '����'�� ����
UPDATE DEPTX 
    SET DNAME = '������',
        LOC = '����'
    --WHERE DNAME = NULL; �̷����ϸ� ����Ŭ�� ��ã��.
    WHERE DNAME IS NULL;
    
--[����] 
-- �ӽ� ��� ���̺�(EMPX)���� �޿��� 2000������ �����
-- ������ 500 �߰��϶�.

INSERT INTO EMPX SELECT * FROM EMP;
SELECT * FROM EMPX ORDER BY COMM;
SELECT * FROM EMPX WHERE SAL <= 2000;

UPDATE EMPX SET COMM = COMM + 500
    WHERE SAL <= 2000;

-- COMM�� NULL�̸� 500�� �����ϰ�
-- COMM�� NULL�� �ƴϸ� COMM + 500�� ����
-- NVL2(COL, COL�� NULL�� �ƴϸ�, COL�� NULL�̸�)
UPDATE EMPX
    SET COMM = NVL2(COMM, COMM + 500, 500)
    WHERE SAL <= 2000;
    
-- Ȯ��
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO;
    
--[����] ����?
-- EMPX.COMM - EMP.COMM -> 500���� ū ���� ������ ������ �߸��� ������
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM, NVL2(E2.COMM, E2.COMM, 0) - NVL2(E1.COMM, E1.COMM, 0) AS COMMX
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO
    AND (NVL2(E2.COMM, E2.COMM, 0) - NVL2(E1.COMM, E1.COMM, 0)) > 500;
