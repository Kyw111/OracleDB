-- TOP-N
-- ������ ����
-- ��������, INLINE VIEW, ROWNUM Ȱ���ؼ� ó�� ����

-- ����߿��� �޿��� ���� ���� �޴� ����
SELECT EMPNO, ENAME, SAL FROM EMP ORDER BY SAL DESC;

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
-- ����Ŭ 12C �̻�(11G�� �������� ����)
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC
    FETCH FIRST 5 ROWS ONLY;
-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL ASC
    FETCH FIRST 5 ROWS ONLY;    

-- �߰� ���� 5���� �ǳʶٰ� ���� 5���� ���ڵ带 ����
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC
    OFFSET 5 ROWS            -- ���� 5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����
    
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL --(ASC)
    OFFSET 5 ROWS            -- ���� 5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����