-- ��¥ �Լ�

-- �ش� ���� ������ ��¥�� ���ϴ� �Լ�(��: 11���� ������ ��¥)
-- LAST_DAY(��¥������)
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;

-- 2021�� 10���� ������ ��¥? (����ǥ �ٿ��ֱ�)
SELECT LAST_DAY('21/10/01') FROM DUAL;
SELECT LAST_DAY('2021/10/01') FROM DUAL;
