-- TOP-N
-- ������ ����
-- ��������, INLINE VIEW, ROWNUM Ȱ���ؼ� ó�� ����
-- ����Ŭ 11g

-- ����߿��� �޿��� ���� ���� �޴� ����
SELECT EMPNO, ENAME, SAL FROM EMP ORDER BY SAL DESC;

-- ROWNUM : ������ ���ڵ� ��ȣ
SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP;
SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP ORDER BY EMPNO;


-- ROWNUM : ������ ���ڵ� ��ȣ
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM EMP
    ORDER BY SAL DESC;

-- ���������� �ϰԵǸ� ���ο� ROWNUM�� �ο��ȴ�.
-- ���� �ο��� ROWNUM�� ������ ������ ��ġ
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL ASC);

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM <= 5;
    
-- �߰����� �˻�: 5���� �ǳʶٰ�
-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
-- �ι��� ����( �����ͷ��� ���ٸ� ���� ��������. ȿ�� ������)
SELECT * 
    FROM (SELECT ROWNUM rnum, EMPNO, ENAME, SAL
    FROM(SELECT * FROM EMP ORDER BY SAL DESC))
    WHERE rnum BETWEEN 6 AND 10;

SELECT * 
    FROM (SELECT ROWNUM numrow, aa.* 
    FROM(SELECT * FROM EMP ORDER BY SAL DESC) aa) 
    WHERE numrow > 5 AND numrow <= 10;

-- ���� �˻��� ������ �ڷḦ �������� ���ο� �˻� ������ �����Ͽ� 
-- �˻� ������ ��ҽ��Ѽ� ȿ���� ����
-- 5��° sal(2450)
SELECT ROWNUM, e.EMPNO, e.ENAME, e.SAL 
    FROM (SELECT * FROM EMP WHERE SAL < 2450 ORDER BY SAL DESC) e
    WHERE ROWNUM <= 5;