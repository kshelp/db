SET SERVEROUTPUT ON
DECLARE
	-- 레코드 타입을 정의
	TYPE emp_record_type IS RECORD (
		v_empno emp.empno%TYPE,
		v_ename emp.ename%TYPE,
		v_job emp.job%TYPE,
		v_deptno emp.deptno%TYPE);

	-- 레코드로 변수 선언
	emp_record emp_record_type;
BEGIN
	-- SCOTT 사원의 정보를 레코드 변수에 저장
	SELECT empno,ename, job, deptno
	INTO emp_record
	FROM emp
	WHERE ename = UPPER('SCOTT');
	-- 레코드 변수에 저장된 사원 정보를 출력
	DBMS_OUTPUT.PUT_LINE('사원번호 : ' || TO_CHAR(emp_record.v_empno));
	DBMS_OUTPUT.PUT_LINE('이 름: ' || emp_record.v_ename);
	DBMS_OUTPUT.PUT_LINE('담당업무 : ' || emp_record.v_job);
	DBMS_OUTPUT.PUT_LINE('부서번호 : ' || TO_CHAR(emp_record.v_deptno));
END;
/