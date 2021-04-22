-- PL/SQL의 구조
-- 예
SET SERVEROUTPUT ON -- 출력해 주는 내용을 화면에 보여주도록 설정한다.
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World!');
END;
/

SELECT * FROM EMP;
SELECT ENAME, JOB FROM EMP;

SELECT LPAD('Oracle', 20, '#')
FROM DUAL;
SELECT RPAD('Oracle', 20, '#')
FROM DUAL;

SELECT * FROM EMP
WHERE ENAME='SCOTT';