-- 모든 예약 조회
SELECT reservation_number, car_number , id ,
TO_CHAR(SYSDATE ,'YYYY-MM-DD') AS startdate
,TO_CHAR(SYSDATE ,'YYYY-MM-DD')  AS enddate
FROM S2_RESERVATION sr;
-- 선택 예약 조회
SELECT "reservation_number", "car_number" , "id" ,
TO_CHAR("startdate",'YYYY-MM-DD') AS "startdate" 
,TO_CHAR("enddate",'YYYY-MM-DD')  AS "enddate"
FROM S2_RESERVATION
WHERE "startdate" <= TO_DATE('2023-06-02' ,'YYYY-MM-DD') 
AND "enddate" >= TO_DATE('2023-06-07' ,'YYYY-MM-DD') 
AND "id"  like '%him%';
DELETE FROM S2_RESERVATION WHERE "reservation_number" = 1002;
-- 임시 데이터
SELECT * FROM S2_RESERVATION sr ;
INSERT INTO S2_RESERVATION sr VALUES(
	1001, to_date('2023-06-01','YYYY-MM-DD'), to_date('2023-06-30','YYYY-MM-DD'), 1, 'himan'
);
INSERT INTO S2_RESERVATION sr VALUES(
	1002, to_date('2023-07-01','YYYY-MM-DD'), to_date('2023-07-30','YYYY-MM-DD'), 2, 'himan'
);
INSERT INTO S2_RESERVATION sr VALUES(
	1003, to_date('2023-06-01','YYYY-MM-DD'), to_date('2023-06-30','YYYY-MM-DD'), 3, 'higirl'
);
INSERT INTO S2_RESERVATION sr VALUES(
	1004, to_date('2023-06-01','YYYY-MM-DD'), to_date('2023-06-30','YYYY-MM-DD'), 4, 'hiboy'
);
INSERT INTO S2_MEMBER values(
	'himan','7777','홍길동','010-1234-5678','himan@naver.com',
	'서울시 쌍용구 쌍용동 3강의실',sysdate,'관리자',0
	);
INSERT INTO S2_MEMBER values(
	'higirl','7777','이길순','010-1111-1111','higirl@naver.com',
	'서울시 쌍용구 쌍용동 1강의실',sysdate,'관리자',0
	);	
INSERT INTO S2_MEMBER values(
	'hiboy','7777','마길동','010-2222-3333','hiboy@naver.com',
	'서울시 쌍용구 쌍용동 2강의실',sysdate,'관리자',0
	);
SELECT * FROM S2_CAR sc ;

SELECT * FROM s ;
INSERT INTO S2_MODEL sm values(
	'티볼리','KG모빌리티','중형차',30000
);
INSERT INTO S2_MODEL sm values(
	'쏘나타','현대','중형차',50000
);
SELECT * FROM S2_CAR sc ;
INSERT INTO S2_CAR sc VALUES(
	1,30000,1,'쏘나타','9999-가-00'
);
INSERT INTO S2_CAR sc VALUES(
	2,30000,2,'쏘나타','9999-가-11'
);
INSERT INTO S2_CAR sc VALUES(
	3,30000,2,'티볼리','9599-가-11'
);
INSERT INTO S2_CAR sc VALUES(
	4,30000,1,'티볼리','9359-가-11'
);
SELECT * FROM S2_STORE ss ;
INSERT INTO S2_STORE ss values(
	1,'제주공항점','제주도 도착하는 공항','010-0000-0000'
);
INSERT INTO S2_STORE ss values(
	2,'제주애월점','제주도 애월 어딘가','010-9999-9999'
);
-- 삭제용 샘플데이터
INSERT INTO S2_RESERVATION sr values(
	1005,'2022-04-04','2022-04-30',1,'hiboy'
);
INSERT INTO S2_RESERVATION sr values(
	1006,'2022-04-04','2022-04-30',1,'higirl'
);

-- 전체예약조회
SELECT R."reservation_number", TO_CHAR(R."startdate",'YYYY-MM-DD') AS "startdate" 
,TO_CHAR(R."enddate",'YYYY-MM-DD')  AS "enddate", R."car_number", R."id", M."name", M."phone", S."store_name"
FROM S2_RESERVATION R
JOIN S2_MEMBER M ON R."id" = M."id"
JOIN S2_CAR C ON R."car_number" = C."car_number"
JOIN S2_STORE S ON C."store" = S."store";
-- 조건예약조회
SELECT R."reservation_number", TO_CHAR(R."startdate",'YYYY-MM-DD') AS "startdate" 
,TO_CHAR(R."enddate",'YYYY-MM-DD')  AS "enddate", R."car_number", R."id", M."name", M."phone", S."store_name"
FROM S2_RESERVATION R
JOIN S2_MEMBER M ON R."id" = M."id"
JOIN S2_CAR C ON R."car_number" = C."car_number"
JOIN S2_STORE S ON C."store" = S."store"
WHERE R."startdate" <= TO_DATE('2023-06-02' ,'YYYY-MM-DD') 
AND R."enddate" >= TO_DATE('2023-06-07' ,'YYYY-MM-DD') 
AND R."id"  like '%him%'
AND m."name" like '%홍길동%'
AND s."store_name" like '%제주공항점%';
-- 예약삭제
DELETE FROM S2_RESERVATION WHERE \"reservation_number\" = ?;
--회원정보조회
SELECT "id", "pass", "name", "phone", "email", "address", "auth", "point", TO_CHAR("signup_date",'YYYY-MM-DD') AS "signup_date" 
FROM S2_MEMBER;
SELECT * FROM S2_MEMBER sm ;
--회원정보검색
SELECT "id", "pass", "name", "phone", "email", "address", "auth", "point", TO_CHAR("signup_date",'YYYY-MM-DD') AS "signup_date" 
FROM S2_MEMBER
WHERE "id" like '%him%' AND "name" like '%홍%' AND "phone" like '%010%';
--회원삭제
DELETE FROM S2_MEMBER sm  WHERE "id" = ?;
-- 차량선택(예약)
SELECT sc.MODEL , sm.EXPENSE , sm.BRAND
FROM S2_CAR sc 
JOIN S2_MODEL sm  ON sc.MODEL = sm.MODEL
JOIN S2_STORE ss ON sc.STORE = ss.STORE 
JOIN S2_RESERVATION sr ON sc.CAR_NUMBER = sr.CAR_NUMBER 
WHERE ss.STORE_NAME ='제주 오토하우스1'
AND sm.KIND ='소형'
and (sr.STARTDATE > TO_DATE('20230629','yyyy-mm-dd')
or sr.ENDDATE < TO_DATE('20230623','yyyy-mm-dd'));