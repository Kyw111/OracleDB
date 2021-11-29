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
INSERT INTO DEPTR VALUES (90, 'APG', 'SEOUL');
INSERT INTO DEPTR VALUES (99, 'DBA', 'SEONGNAM');

-- 2. �ڷ����
UPDATE DEPTR SET LOC = 'DAEJEON' WHERE DEPTNO = 90;

-- 3. �ڷ� ����
DELETE FROM DEPTR WHERE DEPTNO = 99;

-- 4. �۾� ���
ROLLBACK;

-- 5. �۾� �Ϸ�
-- �ٽ� 1������ 3������ ó���ϰ�
-- 4�� �۾��� �ǳʶ��
-- 5�� �۾����� �̵�
-- 1������ 3���۾��� ������ �ݿ�
COMMIT;  -- Ʈ����� �Ϸ�
SELECT * FROM DEPTR;