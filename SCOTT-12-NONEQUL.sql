-- 비등가 조인, 세타조인

-- 사원정보
SELECT * FROM emp;

-- 급여등급
SELECT * FROM salgrade;

-- 사원 급여의 등급
SELECT *
    FROM emp e, salgrade s
    WHERE e.sal >= s.losal AND e.sal <= s.hisal;

SELECT *
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;