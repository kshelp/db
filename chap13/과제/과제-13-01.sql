[����] ����-13-01.TXT

1. ������ ���� ������ ���̺��� ������ ����.
- ���̺� : ORDERS
- �÷� :   ORDER_ID	    NUMBER(12,0)
           ORDER_DATE   DATE 
           ORDER_MODE	  VARCHAR2(8 BYTE)
           CUSTOMER_ID	NUMBER(6,0)
           ORDER_STATUS	NUMBER(2,0)
           ORDER_TOTAL	NUMBER(8,2)
           SALES_REP_ID	NUMBER(6,0)
           PROMOTION_ID	NUMBER(6,0)
- ������� : �⺻Ű�� ORDER_ID  
             ORDER_MODE���� 'direct', 'online'�� �Է°���
             ORDER_TOTAL�� ����Ʈ ���� 0
<����>

2. ������ ���� ������ ���̺��� ������ ����.
- ���̺� : ORDER_ITEMS 
- �÷� :   ORDER_ID	    NUMBER(12,0)
           LINE_ITEM_ID NUMBER(3,0) 
           PRODUCT_ID   NUMBER(3,0) 
           UNIT_PRICE   NUMBER(8,2) 
           QUANTITY     NUMBER(8,0)
- ������� : �⺻Ű�� ORDER_ID�� LINE_ITEM_ID
             UNIT_PRICE, QUANTITY �� ����Ʈ ���� 0
<����>
