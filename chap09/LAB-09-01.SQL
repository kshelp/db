DROP TABLE SAM03;
-- 해당 컬럼은 날짜를 위한 3자리와 초를 위한 2자리(자릿수를 생략했기 때문)를 마련한다.
CREATE TABLE SAM03( 
DAY01 INTERVAL DAY(3) TO SECOND);

-- 생성된 테이블에 기간을 100일로 저장한다.
INSERT INTO SAM03
VALUES(INTERVAL '100' DAY(3));

-- 오늘 날짜와 컬럼에 저장된 날짜만큼 지난 날짜를 계산하여 출력한다.
SELECT DAY01, SYSDATE, SYSDATE+DAY01 FROM SAM03;
