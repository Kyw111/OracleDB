-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL 이다
-- 호출 : PL/SQL에서 호출

CREATE OR REPLACE PROCEDURE PROC_EMP_NAME_IN_OUT
(
    IN_EMPNO IN EMP.EMPNO%TYPE,
    OUT_ENAME OUT EMP.ENAME%TYPE
)
IS
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;
/
