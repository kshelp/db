-- PL/SQL�� ����
-- ��
SET SERVEROUTPUT ON -- ����� �ִ� ������ ȭ�鿡 �����ֵ��� �����Ѵ�.
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