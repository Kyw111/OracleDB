-- ���̺��� ������ ����
-- ���������� ����� ����

SELECT * FROM EMPX;
SELECT * FROM DEPTX;

-- �������� Į���� ���������� �����Ͽ� ����
-- �μ��ڵ尡 12�� �μ��� �̸��� ��ġ�� 
-- �μ��ڵ尡 41�� �μ��� �̸��� ��ġ�� ����
UPDATE deptx
    SET (dname, loc) = (SELECT dname, loc FROM deptx WHERE deptno = 41)
    WHERE deptno = 12;
    
--�� Į������ �˻������� �ٸ���
--�� Į������ ���������� �����Ͽ� ����
UPDATE DEPTX
    SET DNAME = (SELECT DNAME FROM DEPTX WHERE DEPTNO = 13),
        LOC = (SELECT LOC FROM DEPTX WHERE DEPTNO = 44)
    WHERE DEPTNO IN (11,21,31,41);
    