-- �ڷ��� ��ȯ : ��¥�� ���ڸ� ���ڷ� ��ȯ
-- TO_CHAR(������, ����)

--��¥�� ��Ʈ�� �������� ����(�����)
SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY.MM.DD') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YY/MM/DD') FROM DUAL;

-- ����(CC) : 21����
SELECT TO_CHAR(SYSDATE, 'CC')FROM DUAL;
-- ����
SELECT TO_CHAR(SYSDATE, 'YY') FROM DUAL; --2�ڸ�
SELECT TO_CHAR(SYSDATE, 'YYYY') FROM DUAL; --4�ڸ�
-- ��
SELECT TO_CHAR(SYSDATE, 'MM') FROM DUAL; -- 2�ڸ�
SELECT TO_CHAR(SYSDATE, 'MON') FROM DUAL; -- 2�ڸ� + ��(�� ���̸�����)
SELECT TO_CHAR(SYSDATE, 'MONTH') FROM DUAL; -- 2�ڸ� + ��(�� ���̸���ü)
-- ��
SELECT TO_CHAR(SYSDATE, 'DD') FROM DUAL; --2�ڸ�(2�ڸ� ����)
SELECT TO_CHAR(SYSDATE, 'DDD') FROM DUAL; --3�ڸ�(1���߿� ���°��, 1~366)
--����
SELECT TO_CHAR(SYSDATE, 'DY') FROM DUAL; -- �� ���� ����
SELECT TO_CHAR(SYSDATE, 'DAY') FROM DUAL; -- �� ���� ��ü
SELECT TO_CHAR(SYSDATE, 'W') FROM DUAL; -- ���� ���° ��, 1~5
SELECT TO_CHAR(SYSDATE, 'WW') FROM DUAL; -- 1���� �� ��° ��, 1~53

-- �ð� ����
-- �ð�: HH, HH12, HH24 
-- ��:MI 
-- ��:SS
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') FROM DUAL;       -- 24�ð����� ��:��:��
SELECT TO_CHAR(SYSDATE, 'HH12:MI:SS') FROM DUAL;       -- 12�ð� ���� ��:��:��
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') FROM DUAL;         -- 12�ð� ���� ��:��:��
SELECT TO_CHAR(SYSDATE, 'AM HH12:MI:SS') FROM DUAL;    -- ����/����
SELECT TO_CHAR(SYSDATE, 'PM HH12:MI:SS') FROM DUAL;    -- ����/����
SELECT TO_CHAR(SYSDATE, 'A.M. HH12:MI:SS') FROM DUAL;  -- ����/����
SELECT TO_CHAR(SYSDATE, 'P.M. HH12:MI:SS') FROM DUAL;  -- ����/����
SELECT TO_CHAR(SYSDATE, 'HH12:MI:SS AM') FROM DUAL;    -- 12�ð� ����, ��:��:��