-- [과제] 과제-10-01.TXT
-- SQL> CONN ORA_USER/HONG 로 접속하여 SQL문을 작성하세요.	

-- 1. ex3_6란 테이블을 만들고, 사원테이블(employees)에서 관리자사번이 124번이고 급여가 2000에서 3000 사이에 있는 사원의 사번, 사원명, 급여, 관리자사번을 입력하는 INSERT문을 작성하라.
-- <정답>

-- 2. 다음 문장을 실행해보자. 
CREATE TABLE EX3_3 (
       EMPLOYEE_ID NUMBER, 
       BONUS_AMT   NUMBER DEFAULT 0);
INSERT INTO EX3_3 (EMPLOYEE_ID)
SELECT E.EMPLOYEE_ID 
  FROM EMPLOYEES E, SALES S
 WHERE E.EMPLOYEE_ID = S.EMPLOYEE_ID
   AND S.SALES_MONTH BETWEEN '200010' AND '200012'
 GROUP BY E.EMPLOYEE_ID;
SELECT * 
  FROM EX3_3 
 ORDER BY EMPLOYEE_ID;
DELETE EX3_3;
INSERT INTO EX3_3 (EMPLOYEE_ID)
SELECT E.EMPLOYEE_ID 
  FROM EMPLOYEES E, SALES S
 WHERE E.EMPLOYEE_ID = S.EMPLOYEE_ID
   AND S.SALES_MONTH BETWEEN '200010' AND '200012'
 GROUP BY E.EMPLOYEE_ID;
COMMIT;

--관리자사번(manager_id)이 145번인 사원을 찾아 위 테이블에 있는 사원의 사번과 일치하면 보너스 금액(bonus_amt)에 자신의 급여의 1%를 보너스로 갱신하고, ex3_3 테이블에 있는 사원의 사번과 일치하지 않는 사원을 신규 입력 (이때 보너스 금액은 급여의 0.5%로 한다) 하는 MERGE 문을 작성해 보자.

--<정답>
