--시퀀스의 개념 이해와 시퀀스 생성
-- 예
CREATE SEQUENCE DEPT_DEPTNO_SEQ
INCREMENT BY 10
START WITH 10;

--시퀀스 관련 데이터 딕셔너리
DESC USER_SEQUENCES;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE,
INCREMENT_BY, CYCLE_FLAG
FROM USER_SEQUENCES;


--시퀀스 값을 알아보는 CURRVAL과 NEXTVAL
SELECT DEPT_DEPTNO_SEQ.NEXTVAL FROM DUAL;
SELECT DEPT_DEPTNO_SEQ.CURRVAL FROM DUAL;


--시퀀스 실무에 적용하기
-- 예: 시퀀스를 테이블의 기본 키에 접목하기
CREATE SEQUENCE EMP_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 100000 ;

DROP TABLE EMP01;
CREATE TABLE EMP01(
    EMPNO NUMBER(4) PRIMARY KEY,
    ENAME VARCHAR(10),
    HIREDATE DATE
);
INSERT INTO EMP01
VALUES(EMP_SEQ.NEXTVAL, 'JULIA' , SYSDATE);

SELECT * FROM EMP01;


--시퀀스 제거와 수정
SELECT SEQUENCE_NAME, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG
FROM USER_SEQUENCES;
DROP SEQUENCE DEPT_DEPTNO_SEQ;


--시퀀스를 수정하는 방법
-- 예 : 시퀀스 최대값을 변경하기
DROP SEQUENCE DEPT_DEPTNO_SEQ;
CREATE SEQUENCE DEPT_DEPTNO_SEQ
START WITH 10
INCREMENT BY 10
MAXVALUE 30; -- 10부터 10씩 증가하면서 최대 30까지의 값을 갖는 시퀀스를 생성한다.
SELECT DEPT_DEPTNO_SEQ.NEXTVAL FROM DUAL;
SELECT DEPT_DEPTNO_SEQ.NEXTVAL FROM DUAL;
SELECT DEPT_DEPTNO_SEQ.NEXTVAL FROM DUAL;
SELECT DEPT_DEPTNO_SEQ.NEXTVAL FROM DUAL; -- 부서 번호를 계속 생성하다 보면 최대값을 넘게 된다.
ALTER SEQUENCE DEPT_DEPTNO_SEQ
MAXVALUE 100; -- 최대값을 넘을 때까지 시퀀스를 생성한다.
SELECT SEQUENCE_NAME, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG
FROM USER_SEQUENCES; -- USER_SEQUENCES 를 조회하면 시퀀스가 수정되었는지 확인할 수 있다.


--[과제] 과제-15-01.TXT
--1. 최소값 1, 최대값 99999999, 1000부터 시작해서 1씩 증가하는 ORDERS_SEQ 라는 시퀀스를 만들어보자.
--<정답>
CREATE SEQUENCE ORDERS_SEQ
MINVALUE 1
MAXVALUE 99999999
INCREMENT BY 1
START WITH 1000;