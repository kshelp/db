SELECT ENAME, DEPTNO,
    CASE WHEN DEPTNO=10 THEN 'ACCOUNTING'
         WHEN DEPTNO=20 THEN 'RESEARCH'
         WHEN DEPTNO=30 THEN 'SALES'
         WHEN DEPTNO=40 THEN 'OPERATIONS'
         END AS DNAME
FROM EMP;

SELECT * FROM EMP;

-- sub query: 메인 SQL문에 SQL문이 포함된 경우
SELECT * FROM EMP
WHERE MGR = (SELECT MGR FROM EMP
WHERE ENAME = 'ALLEN');



--1. 사원테이블(EMP)에서 입사일(HIREDATE)을 4자리 연도로 출력되도록 
-- SQL문을 작성하세요? (ex. 1980/01/01)
--<정답>
SELECT TO_CHAR(HIREDATE, 'YYYY/MM/DD') FROM EMP;

--2. 사원테이블(EMP)에서 MGR컬럼의 값이 null 인 데이터의 
--MGR의 값을 CEO로 출력하는 SQL문을 작성 하세요?
--<정답>

SELECT ENAME, NVL(TO_CHAR(MGR,'9999'),'CEO') AS MANAGER FROM EMP 
WHERE MGR IS NULL;

SELECT REPLACE( NVL( MGR, -1 ), -1, 'CEO' ) "MGR"
FROM EMP;
--류동균
SELECT NVL(TO_CHAR(MGR),'CEO') FROM EMP;
--김산성
SELECT MGR, TO_CHAR ('CEO')  FROM EMP WHERE MGR IS NULL;
--김혜진
SELECT MGR AS BEFORE_MGR,
    DECODE(MGR, NULL, 'CEO' ,
            MGR)
    AS AFTER_MGR
FROM EMP;

--3. 사원 테이블(EMP)에서 가장 최근에 입사한 사원명을 출력하는 
--SQL문을 작성 하세요?
--<정답> 
SELECT ENAME, HIREDATE FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);

--4. 사원 테이블(EMP)에서 최대 급여를 받는 사원명과 최대급여금액을 
--출력하는 SQL문을 작성하세요?
--<정답>
SELECT ENAME, SAL FROM EMP 
WHERE SAL = (SELECT MAX(SAL) FROM EMP);








