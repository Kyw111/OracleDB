-- ��¥
-- SYSDATE : ���� ��¥
-- ADD_MONTH : ���� �ٷ�� �Լ�

-- ���� ��¥
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE AS TODAY, ENAME FROM EMP;
-- ���� ��¥
SELECT SYSDATE + 1 AS TOMORROW FROM DUAL;
-- ���� ��¥
SELECT SYSDATE - 1 AS YESTERDAY FROM DUAL;
-- ������ ���� ��¥
SELECT SYSDATE + 7 AS AFTERWEEK FROM DUAL;
----------------------------------------------------
-- ADD_MONTHS(��¥������, ���� ���� ��)

-- ���� ��(�� �� ��)
SELECT ADD_MONTHS(SYSDATE, 1) AS NEXTMONTH FROM DUAL;
-- ���� ��(�� �� ��)
SELECT ADD_MONTHS(SYSDATE, -1) AS LASTMONTH FROM DUAL;
-- ����ǥ �ٿ��ֱ�
SELECT ADD_MONTHS('20/08/11', -1) AS LASTMONTH FROM DUAL;
-------------------------------------------------------
-- �Ի� 10���� ��� ����
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 10 * 12) FROM EMP;
-- �Ի� 40���� �Ǵ� ��¥
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40 * 12) FROM EMP; 
-- �Ի� 40�� �̸��� �������
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40 * 12)
    FROM EMP WHERE ADD_MONTHS(HIREDATE, 40 * 12) > SYSDATE;
-- �Ի� 40�� �̻��� �������
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40 * 12)
    FROM EMP WHERE ADD_MONTHS(HIREDATE, 40 * 12) <= SYSDATE;
-- �Ի� 40�� �̻��� �������
-- �Ի� 40�� ���� ����� �ϼ� : ��¥������ - ��¥������
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40 * 12), TRUNC(SYSDATE - ADD_MONTHS(HIREDATE, 40 * 12)) AS PASSDATE
    FROM EMP WHERE ADD_MONTHS(HIREDATE, 40 * 12) <= SYSDATE;