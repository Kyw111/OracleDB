-- Ʈ�����(Transaction)
-- �ϳ��� ������ �۾��� ó���ϱ� ���� ���� �����ǰ� ���ӵ� �����ͺ��̽� ��ɾ�(DML)�� ����
-- TCL(Transaction Control Language)
-- 1. �ϳ��� ������ �۾� ����
-- 2. �ϳ��� �۾� �Ǵ� �����ϰ� �����Ǿ� �ִ� �۾� ������ ���� ���� �� ���� �ּ� ���� ����
-- 3. �ϳ��� Ʈ������� ���� DML ������� �̷�� ����.
-- 4. Ŀ��(COMMIT)�� ���ؼ� Ʈ������� �Ϸ�ȴ�.
-- 5. ���(ROLLBACK)�� ���ؼ� ����� SQL(DML)���� ��� ó���ȴ�.

CREATE TABLE DEPTR AS SELECT * FROM DEPT;
SELECT * FROM DEPTR;
-- [Ʈ����� 1]
-- 1. �ű��߰�
INSERT INTO DEPTR VALUES (80, 'APG', 'SEOUL');
INSERT INTO DEPTR VALUES (89, 'DBA', 'SEONGNAM');

-- 2. �ڷ����
UPDATE DEPTR SET LOC = 'DAEJEON' WHERE DEPTNO = 80;

-- 3. SAVEPOINT
SAVEPOINT TR1;

-- 4. �ڷ� ����
DELETE FROM DEPTR WHERE DEPTNO = 89;

-- 4. �۾� ���
ROLLBACK; -- ��ü�۾� ���
ROLLBACK TO TR1; -- ������ ���̺�����Ʈ������ �۾� ���
COMMIT;