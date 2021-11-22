-- ���ڿ� �Լ� : ���� �����
-- TRIM : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
--      : TRIM(�ɼ� ������ ���ڿ� FROM �������ڿ�), TRIM(STRING SRC, INT OPTION){}
--      : BOTH : ����
--      : LEADING : ����
--      : TRAILING : ������
-- LTRIM : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
--       : LTRIM(�������ڿ�, ������ ���ڿ�)
-- RTRIM : ���ڿ��� �����ʿ��� ������ ���ڿ��� ����
--       : RTRIM(�������ڿ�, ������ ���ڿ�)
-- ���ڿ��� ���� ������ ����
-- ���� ���ڿ��� �������� ������ ����
SELECT '[' ||TRIM('    ȫ�浿   ') || ']' FROM DUAL;
SELECT '[' ||TRIM(BOTH ' 'FROM '    ȫ�浿   ') || ']' FROM DUAL; -- ��������
SELECT '[' ||TRIM(BOTH '-'FROM '----ȫ�浿----') || ']' FROM DUAL; -- ������(-)����
SELECT '[' ||TRIM(BOTH '.'FROM '...ȫ�浿...') || ']' FROM DUAL; -- ��ħǥ(.)����

-- ���� ���ڿ� ���� ����
SELECT '[' ||LTRIM('    ȫ�浿   ') || ']' FROM DUAL;
SELECT '[' ||LTRIM('    ȫ�浿   ', ' ') || ']' FROM DUAL;  --���� ���ڿ��� ����
SELECT '[' ||TRIM(LEADING FROM '    ȫ�浿   ') || ']' FROM DUAL; --�������� ������ ����
SELECT '[' ||TRIM(LEADING ' ' FROM '    ȫ�浿   ') || ']' FROM DUAL; -- ��������
SELECT '[' ||TRIM(LEADING '-' FROM '----ȫ�浿----') || ']' FROM DUAL; -- ������(-) ����

-- ������ ���ڿ� ���� ����
SELECT '[' ||RTRIM('    ȫ�浿   ') || ']' FROM DUAL;
SELECT '[' ||RTRIM('    ȫ�浿   ', ' ') || ']' FROM DUAL; --���� ���ڿ��� ����
SELECT '[' ||RTRIM('....ȫ�浿....', '.') || ']' FROM DUAL; --���� ���ڿ��� ����
SELECT '[' ||TRIM(TRAILING FROM '    ȫ�浿   ') || ']' FROM DUAL; --�������� ������ ����
SELECT '[' ||TRIM(TRAILING ' ' FROM '    ȫ�浿   ') || ']' FROM DUAL; -- ��������
SELECT '[' ||TRIM(TRAILING '-' FROM '----ȫ�浿----') || ']' FROM DUAL; -- ������(-) ����