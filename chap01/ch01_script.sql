-- ���̺� �����̽� ����
CREATE TABLESPACE myts DATAFILE 
 'C:\prod\oraclexe\app\oracle\oradata\XE\myts.dbf' SIZE 100M AUTOEXTEND ON NEXT 5M;
 
 
-- ����� ����
CREATE USER ORA_USER IDENTIFIED BY HONG 
DEFAULT TABLESPACE MYTS
TEMPORARY TABLESPACE TEMP;

-- DBA �� �ο�
GRANT DBA TO ORA_USER;

