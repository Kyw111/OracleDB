-- ��ȸ : WHERE

-- ��ȸ ���ǽľ��� ��� ���̺��� ������ �˻�
SELECT * FROM emp;

-- ���ǰ˻�: �μ��ڵ尡 30�� �������
SELECT * FROM emp WHERE deptno = 30;

-- �μ��ڵ尡 30�̰� ��å�� SALESMAN�� ���?
SELECT * FROM emp WHERE deptno = 30 AND job = 'SALESMAN';

-- �μ��ڵ尡 30�̰ų� ��å�� SALESMAN�� ���?
SELECT * FROM emp WHERE deptno = 30 OR job = 'SALESMAN';

-- ��������ڸ� �˻� ���ǿ� �ֱ�
-- ���ҵ� SAL * 12 36000
-- ����(=), ũ��(>), ũ�ų� ����(>=), �۴�(<), �۰ų� ����(<=)
SELECT * FROM emp WHERE (sal * 12) = 36000; -- ����(=)
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) > 36000; -- ��
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) >= 36000; --
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) < 36000; -- 
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <= 36000; -- 

-- ���� �ʴ� : !=, <>, ^=
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) != 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <> 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) ^= 36000;

-- ������: NOT
SELECT * FROM emp WHERE sal = 3000;

-- sal = 3000�� ���� ����
-- sal�� 3000�� �ƴ� ��� ������
SELECT * FROM emp WHERE sal != 3000;
SELECT * FROM emp WHERE NOT sal = 3000;

--OR
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
-- NOT OR
-- ��å�� MANAGER�� �ƴѵ� SALESMAN�̰ų� CLERK�� ���
SELECT * FROM emp
    WHERE NOT job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
--NOT OR
-- ��å�� MANAGER�� �ƴϰ� SALESMAN�� �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp
    WHERE NOT (job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK');
    
--AND
-- ���� NOT OR ������ AND �������� �ٲٸ�
-- ��å�� MANAGER�� �ƴϰ� SALESMAN�� �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp 
    WHERE job != 'MANAGER'
    AND job != 'SALESMAN'
    AND job != 'CLERK';
    
-- OR
-- ��å�� MANAGER�̰ų� SALESMAN�̰ų� CLERK�� ���
SELECT * FROM emp 
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
--IN
--��å�� MANAGER�̰ų� SALESMAN �̰ų� CLERK�� ���
--�����ʹ� ��ҹ��ڸ� �����Ѵ�.
SELECT * FROM emp
    WHERE job IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
--NOT IN : 
--���� : ��å�� MANAGER�� �ƴϰ� SALESMAN�� �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp WHERE job != 'MANAGER' AND job != 'SALESMAN' AND job != 'CLERK';

SELECT * FROM emp
    WHERE job NOT IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
--IN
-- �μ��� 10, 20�� ���
SELECT * FROM emp WHERE deptno IN ('10', '20') ORDER BY deptno;
--IN
-- �μ��� 10�� �ƴϰ� 20�� �ƴ� ���
SELECT * FROM emp WHERE deptno NOT IN('10', '20') ORDER BY deptno;

--�μ��� 10�� �ƴϰ� 20�� �ƴ� ����߿� ��å�� SALESMAN�� ���
--��������� �μ��� ���
--�����ȣ�� �������� ����(sort), ����̸����� �������� ����
SELECT empno, ename, job, deptno FROM emp 
WHERE deptno NOT IN('10', '20') AND job = 'SALESMAN'
ORDER BY deptno desc,
ename;

--�μ�����
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno NOT IN (10, 20)
    AND e.job = 'SALESMAN'
    AND e.deptno = d.deptno
    ORDER BY e.empno desc, e.ename asc;

--BETWEEN x AND y
--sal ���� 2000���� 3000 ������ ���� �˻�
SELECT * FROM emp WHERE sal >= 2000 AND sal <= 3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

-- NOT BETWEEN x AND y
-- sal ���� 2000���� 3000 ������ ���� �ƴ� ������
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;
SELECT * FROM emp WHERE sal < 2000 OR sal > 3000;

-- LIKE : ���ڿ��� �˻�
-- ������� �̸��߿��� ù��° ���ڰ� 'j'�� �����ϴ� ����� ã�ƶ�
-- ã�� ���� �ڿ� %�� �־�� ��
SELECT * FROM emp WHERE ename LIKE 'J%'; --�̸��� J�� ����
SELECT * FROM emp WHERE ename LIKE 'B%'; --�̸��� B�� ����

-- ������ ���ڿ� ��ġ
-- Underscore(_)
SELECT * FROM emp WHERE ename LIKE '_L%'; --ù���� �ڿ� L�� �̸�
SELECT * FROM emp WHERE ename LIKE '__L%'; --�α��� �ڿ� L�� �̸�
SELECT * FROM emp WHERE ename LIKE '___D%'; --������ �ڿ� D�� �̸�

--�����ڿ��� MAN���� ������ ��å
SELECT * FROM emp WHERE job LIKE '%MAN';

-- ���ڿ� �߰��� 'AM'�� �����ϰ� �ִ� ���
SELECT * FROM emp WHERE ename LIKE '%AM%';

-- �����ڰ� R�� ������ �̸�
SELECT * FROM emp WHERE ename LIKE '%R';
-- �ױ��� ���ڸ� ���� �̸�
SELECT * FROM emp WHERE ename LIKE '____'; -- ����� 4��
