SELECT ENAME, DEPTNO,
    CASE WHEN DEPTNO=10 THEN 'ACCOUNTING'
         WHEN DEPTNO=20 THEN 'RESEARCH'
         WHEN DEPTNO=30 THEN 'SALES'
         WHEN DEPTNO=40 THEN 'OPERATIONS'
         END AS DNAME
FROM EMP;

SELECT * FROM EMP;

-- sub query: ���� SQL���� SQL���� ���Ե� ���
SELECT * FROM EMP
WHERE MGR = (SELECT MGR FROM EMP
WHERE ENAME = 'ALLEN');



--1. ������̺�(EMP)���� �Ի���(HIREDATE)�� 4�ڸ� ������ ��µǵ��� 
-- SQL���� �ۼ��ϼ���? (ex. 1980/01/01)
--<����>
SELECT TO_CHAR(HIREDATE, 'YYYY/MM/DD') FROM EMP;

--2. ������̺�(EMP)���� MGR�÷��� ���� null �� �������� 
--MGR�� ���� CEO�� ����ϴ� SQL���� �ۼ� �ϼ���?
--<����>

SELECT ENAME, NVL(TO_CHAR(MGR,'9999'),'CEO') AS MANAGER FROM EMP 
WHERE MGR IS NULL;

SELECT REPLACE( NVL( MGR, -1 ), -1, 'CEO' ) "MGR"
FROM EMP;
--������
SELECT NVL(TO_CHAR(MGR),'CEO') FROM EMP;
--��꼺
SELECT MGR, TO_CHAR ('CEO')  FROM EMP WHERE MGR IS NULL;
--������
SELECT MGR AS BEFORE_MGR,
    DECODE(MGR, NULL, 'CEO' ,
            MGR)
    AS AFTER_MGR
FROM EMP;

--3. ��� ���̺�(EMP)���� ���� �ֱٿ� �Ի��� ������� ����ϴ� 
--SQL���� �ۼ� �ϼ���?
--<����> 
SELECT ENAME, HIREDATE FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);

--4. ��� ���̺�(EMP)���� �ִ� �޿��� �޴� ������ �ִ�޿��ݾ��� 
--����ϴ� SQL���� �ۼ��ϼ���?
--<����>
SELECT ENAME, SAL FROM EMP 
WHERE SAL = (SELECT MAX(SAL) FROM EMP);








