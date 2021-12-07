/*
���� ���: CASE ~ WHEN
CASE �񱳱���
    WHEN ���ǽ�1 THEN
        ��ɹ�;
    WHEN ���ǽ�2 THEN
        ��ɹ�;
    ELSE 
        ��ɹ�;
END CASE;
-------------------------------------------
SELECT ENAME, SAL, JOB,
    CASE JOB
        WHEN 'MANAGER' THEN SAL * 0.1
        WHEN 'SALESMAN' THEN SAL * 0.2
        WHEN 'ANALYST' THEN SAL * 0.3
        ELSE SAL * 0.05
    END AS upsal
    FROM EMP;
-------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE/ 10 : ' || V_SCORE/10);
    DBMS_OUTPUT.PUT_LINE('TRUNC : ' || TRUNC(V_SCORE/10));
    
    CASE 
        WHEN V_SCORE >= 95 THEN
            V_GRADE := 'A';
        WHEN V_SCORE >= 90 THEN
            V_GRADE := 'B';
        WHEN V_SCORE >= 80 THEN
            V_GRADE := 'C';
        WHEN  V_SCORE >= 70 THEN
            V_GRADE := 'D';
        WHEN  V_SCORE >= 60 THEN
            V_GRADE := 'E';
        ELSE
            V_GRADE := 'F';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��)' || V_GRADE || '�����Դϴ�.');
END;

/