-- 회원
INSERT INTO S2_MEMBER values(
	's2admin01','1q2w3e4r!@','홍길동','01011111111','admin01@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'관리자',0
);
INSERT INTO S2_MEMBER values(
	's2admin02','1q2w3e4r!@','김길동','01022222222','admin02@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'관리자',0
);
INSERT INTO S2_MEMBER values(
	's2admin03','1q2w3e4r!@','이길동','01033333333','admin03@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'관리자',0
);
INSERT INTO S2_MEMBER values(
	's2member01','1q2w3e4r!@','홍민아','01099999999','member01@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'USER',0
);
INSERT INTO S2_MEMBER values(
	's2member02','1q2w3e4r!@','김민아','01088888888','member02@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'USER',0
);
INSERT INTO S2_MEMBER values(
	's2member03','1q2w3e4r!@','이민아','01077777777','member03@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'USER',0
);
INSERT INTO S2_MEMBER values(
	's2member04','1q2w3e4r!@','이민아','01077777777','member03@exaple.com','서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층',sysdate,'USER',0
);
SELECT * FROM S2_MEMBER sm  ;

-- 지점
INSERT INTO S2_STORE values(
	1001,'제주오토하우스1','제주시 용해로 92','642873681'
);
INSERT INTO S2_STORE values(
	1002,'제주오토하우스2','제주시 용해로 129-1','642873682'
);
INSERT INTO S2_STORE values(
	1003,'제주오토하우스3','제주시 애월읍 천덕로 880-24','642873683'
);
SELECT * FROM S2_STORE ss ;

-- 차량모델
INSERT INTO S2_MODEL values(
	'소나타','현대','중형',40000
);
INSERT INTO S2_MODEL values(
	'아반떼','현대','중형',42000
);
INSERT INTO S2_MODEL values(
	'레이','기아','소형',30000
);
INSERT INTO S2_MODEL values(
	'모닝','기아','소형',33000
);
INSERT INTO S2_MODEL values(
	'카니발','기아','대형',80000
);
SELECT * FROM S2_MODEL sm ;

-- 보유차량
INSERT INTO S2_CAR sc values(
	100,500000,1001,'소나타','123허456'
);
INSERT INTO S2_CAR sc values(
	200,500000,1002,'아반떼','123허457'
);
INSERT INTO S2_CAR sc values(
	300,500000,1003,'레이','123허458'
);
INSERT INTO S2_CAR sc values(
	400,500000,1001,'모닝','123허459'
);
INSERT INTO S2_CAR sc values(
	500,500000,1002,'카니발','123허460'
);
SELECT * FROM S2_CAR sc ;
SELECT * FROM S2_MEMBER sm ;
SELECT * FROM S2_RESERVATION sr ;
-- 예약
INSERT INTO S2_RESERVATION values(
	1000,'2023-06-28','2023-06-29',100,'s2member02'
);
INSERT INTO S2_RESERVATION values(
	1001,'2023-06-28','2023-06-30',200,'s2member01'
);
INSERT INTO S2_RESERVATION values(
	1002,'2023-07-08','2023-07-21',300,'s2member02'
);
INSERT INTO S2_RESERVATION values(
	1003,'2023-06-20','2023-06-23',400,'s2member03'
);
INSERT INTO S2_RESERVATION values(
	1004,'2023-06-05','2023-06-28',500,'s2member01'
);
INSERT INTO S2_RESERVATION values(
	1005,'2023-07-28','2023-07-29',100,'s2member02'
);
INSERT INTO S2_RESERVATION values(
	1006,'2023-06-05','2023-06-06',200,'s2member03'
);
INSERT INTO S2_RESERVATION values(
	1007,'2023-07-01','2023-07-04',300,'s2member01'
);
INSERT INTO S2_RESERVATION values(
	1008,'2023-06-15','2023-06-17',400,'s2member01'
);
INSERT INTO S2_RESERVATION values(
	1009,'2023-06-12','2023-06-26',500,'s2member02'
);
