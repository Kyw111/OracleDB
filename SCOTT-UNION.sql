--���տ�����
--UNION(������)
--�÷��� ������ ��ġ�ϰ� �ڷ����� ��ġ
--�ߺ��Ǵ� �����ʹ� �ϳ��� ���õ�

SELECT * FROM emp WHERE deptno = 10;
SELECT * FROM emp WHERE deptno = 20;

SELECT * FROM emp WHERE deptno IN(10, 20);

--UNION �ߺ��Ǵ� �����ʹ� �ϳ��� �������
SELECT * FROM emp WHERE deptno = 10
UNION
SELECT * FROM emp WHERE deptno = 20;

--���̺� �̸��̳� ������ �������.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10
UNION --���Ʒ� Į���� ������ ��ġ�ؾ��� (printfó��)
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- �ߺ��Ǵ� �μ�(deptno 20)�� �ϳ��� �ุ ����(�ߺ��� ��������)
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20)
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- Į���� �̸��� ��ġ�� �ʿ�� ����.
-- �ڷ����� ��ġ�ϸ� �ȴ�.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20) --6���� ��
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 30; -- 3���� ��

-- ���ο� ���̺� ���� : ������ ���̺��� �̿�
CREATE TABLE emp2
    AS SELECT empno, ename, sal, sal * 12 as annual FROM emp;
--���̺� ���� Ȯ��
DESC emp2;
SELECT * FROM emp2;

SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20)
UNION 
SELECT * FROM emp2 ORDER BY empno, ename;

--���̺� ���� emp -> emp3
CREATE TABLE emp3 AS SELECT * FROM emp;
DESC emp3;
SELECT * FROM emp3;

--�ߺ����ڵ�� �ϳ��� ����
SELECT * FROM emp UNION SELECT * FROM emp3;

--UNION ALL : �ߺ��� ������ ��� ���ڵ� ����
SELECT * FROM emp -- 12���ڵ�
UNION ALL 
SELECT * FROM emp3; --12���ڵ�