--[과제] 저장 함수 생성
--사원명으로 검색하여 해당 사원의 직급을 얻어 오는 저장 함수를 
--SEL_EMPNAME02라는 이름으로 작성하라.(실습파일: CH21_QUIZ_02.SQL)
--[정답]

CREATE OR REPLACE FUNCTION SEL_EMPNAME02







END;
/

VARIABLE VAR_JOB VARCHAR2(9);
EXECUTE :VAR_JOB := SEL_EMPNAME02('SCOTT');
PRINT VAR_JOB
