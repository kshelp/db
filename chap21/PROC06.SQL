CREATE OR REPLACE PROCEDURE CURSOR_SAMPLE02
IS
   VDEPT DEPT%ROWTYPE;
   CURSOR C1 
   IS
   SELECT *    FROM  DEPT; 
BEGIN
   DBMS_OUTPUT.PUT_LINE('부서번호 / 부서명 / 지역명'); 
   DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
   FOR VDEPT IN C1 LOOP
      EXIT WHEN C1%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(VDEPT.DEPTNO||
            '  '||VDEPT.DNAME||'  '||VDEPT.LOC);   
   END LOOP;
END;
/
