-- ���� �Լ�(Built-in Function)
-- 1. ������ �Լ�(Single-Row Function)
-- > �����Ͱ� �� �྿ �Էµǰ� �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 2. ������ �Լ�(Multiple-Row Function)
-- > �����Ͱ� ���� �࿡ �Էµǰ� �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- ������ �Լ�
-- �����Լ�(String)
-- 1. upper : �����͸� �빮�ڷ� ��ȯ
-- 2. lower : �����͸� �ҹ��ڷ� ��ȯ
-- 3. initcap : ù���ڴ� �빮��, �������� �ҹ��ڷ� ��ȯ
SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP;

SELECT ENAME, UPPER(ENAME) AS ENAME2, LOWER(ENAME) AS ENAME3, INITCAP(ENAME) AS ENAME4 FROM EMP;

--��ü �̸����� �˻�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = 'KING';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = 'king'; --king�� �ҹ��ڶ� ������� �ȳ���
SELECT EMPNO, ENAME FROM EMP WHERE ENAME = upper('king'); --upper �Լ��� ��°���

--�̸��� �Ϻ� ���ڷ� �˻�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like 'J%';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like 'j%'; -- �ҹ��ڶ� ������� �ȳ���
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like upper ('j%'); -- �빮�ڷ� ��ȯ�Ŀ� �˻�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME like upper ('%a%'); --��ҹ��� a�� �����ϴ� �̸��� ���� ��� ���

SELECT EMPNO, ENAME FROM EMP WHERE ENAME = lower('clark'); -- ����̸��� �빮�ڷ� ����Ǿ������Ƿ�, �ҹ��ڷ� �˻��� �ϸ� ��ã��.

--���̺� �����Ϳ� �˻��ϰ��� �ϴ� ������ ������ ��� �ҹ��ڷ� ��ȯ�ؼ� �˻�(������)
--���࿡ ename�� �ε����� �ɷ��ִٸ� �Լ��� �������� �� �ε����� ������ ����.(�ӵ��� ������)
SELECT EMPNO, ENAME FROM EMP WHERE lower(ENAME) = lower('clark');

SELECT EMPNO, ENAME FROM EMP WHERE initcap(ENAME) = initcap('clark');
