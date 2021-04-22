SET SERVEROUTPUT ON
DECLARE
	VEMP EMP%ROWTYPE;
	ANNSAL NUMBER(7,2);
BEGIN
	-- SCOTT 사원의 전체 정보를 로우 단위로 얻어와 VEMP에 저장한다.
	SELECT * INTO VEMP
		FROM EMP
		WHERE ENAME='SCOTT';
	IF (VEMP.COMM IS NULL) THEN -- 커미션이 NULL 이면
		ANNSAL := VEMP.SAL*12; -- 급여에 12를 곱한다.
	ELSE -- 커미션이 NULL이 아니면
		ANNSAL := VEMP.SAL*12+VEMP.COMM;-- 급여에 12를 곱한 후 커미션과 합산
	END IF;
	DBMS_OUTPUT.PUT_LINE('사번 / 이름 / 연봉');
	DBMS_OUTPUT.PUT_LINE('-------------------------------------');
	DBMS_OUTPUT.PUT_LINE(VEMP.EMPNO||'/'||VEMP.ENAME||'/'||ANNSAL);
END;
/