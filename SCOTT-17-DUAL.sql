-- DUAL : ����Ŭ���� �����ϴ� Ư���� ���̺�
-- ����(DUMMY) ���̺� : DUMMY    VARCHAR2(1)
DESC DUAL;
SELECT DUMMY FROM DUAL;

--character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

--  DUAL : ����Ŭ���� �����ϴ� Ư���� ���̺�
SELECT '�ѱ�' AS HANGEUL, LENGTH('�ѱ�') HANLEN, LENGTHB('�ѱ�') AS HANLENB FROM DUAL;

-- ���ó�¥
SELECT SYSDATE FROM DUAL;

SELECT * FROM EMP;
SELECT UPPER('ABC') AS ABC FROM DUAL;

SELECT * FROM EMP WHERE ENAME = (SELECT UPPER('james') AS ABC FROM DUAL);