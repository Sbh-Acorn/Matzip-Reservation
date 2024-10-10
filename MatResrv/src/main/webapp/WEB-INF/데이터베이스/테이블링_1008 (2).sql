

--가게 테이블
drop table stores_08;
create table stores_08(
     region varchar2(20) not null,
     st_name varchar2(30) not null primary key,
     menu_category varchar2(20),
     st_address varchar2(100),
     st_rate varchar2(5),
     st_description varchar2(100)
);      


select * from stores_08;

insert into stores_08 values('서울 북부', '광화문미진', '한식', '서울 종로구 종로 19 1층', '4.6', '1954년 개업 전통있는 메밀국수집');
insert into stores_08 values('서울 북부', '능동미나리', '한식', '서울 용산구 한강대로40길 28 1, 2층', '4.7', '곰탕을 정말 맛있게 먹을 수 있는 집! 신용산역 곰탕맛집 능동미나리');
insert into stores_08 values('서울 북부', '담택', '일식', '서울 마포구 동교로12안길 51 1층', '4.7', '세련되면서도 깔끔한 수프의 맛이 여운을 준다.');
insert into stores_08 values('서울 북부', '파롤앤랑그', '카페/베이커리', '서울 마포구 성미산로29안길 8', '4.6', '네모난 파이가 귀엽고 맛있는 연남동 디저트 카페');
insert into stores_08 values('서울 남부', '파이브가이즈 여의도', '양식', '서울 영등포구 여의대로 108', '3.7', '미국 대표 햄버거 프랜차이즈' );
insert into stores_08 values('서울 남부', '청와옥 본점', '한식', '서울 송파구 위례성대로 48 반도빌딩 1층', '4.7', '순대국으로 경험할수 있는 최상의 가치를 드리겠습니다.');
insert into stores_08 values('서울 남부', '해목 롯데월드몰점', '일식', '서울 송파구 올림픽로 300 롯데월드몰 6층', '4.7', '해목은 나고야식 히츠마부시(장어덮밥) 전문점입니다.');
insert into stores_08 values('서울 남부', '까폼', '아시아식', '서울 강남구 선릉로153길 18 지하1층', '4.7', '한국화되지 않은 진짜 현지의 태국맛을 느껴보세요.');
insert into stores_08 values('경기 북부', '자반고 양주본점', '한식', '경기 양주시 광사로 152 1층', '4.6', '프리미엄 화덕 생선구이 전문점.');
insert into stores_08 values('경기 북부', '스시히로미','일식' , '경기 의정부시 발곡로 24 서울프라자 201호', '4.2', '의정부에서 17년동안 초밥 맛집으로 소문난 저희는 [스시히로미]입니다.');
insert into stores_08 values('경기 북부', '파크프리베', '카페/베이커리','경기 의정부시 동일로192번길 28-27', '4.3', '나만의 가치를 누릴 수 있는 디저트 카페, 이탈리안 레스토랑입니다.');
insert into stores_08 values('경기 북부', '북한강돌짜장', '중식','경기 남양주시 화도읍 북한강로1112번길 6', '4.4', '매콤한 갈비찜과 함께먹는 뜨거운 돌짜장은 최고의 콤비입니다.');
insert into stores_08 values('경기 남부', '최미삼순대국','한식', '경기 화성시 동탄지성로 187 1층', '4.5', '동탄 국밥 맛집 소고기국밥 맛있는 최미삼순대국');
insert into stores_08 values('경기 남부', '로마경양식', '양식','경기 수원시 팔달구 경수대로 549 동수원빌딩 1층', '4.4', '34년 전통경양식을 이어가는 옛날돈까스 , 함박스텍 전문점 입니다.');
insert into stores_08 values('경기 남부', '포사이', '아시아식','경기 광주시 퇴촌면 정영로 574', '4.7', '백종원 아저씨도 인정한 쌀국수 월남쌈 맛집');
insert into stores_08 values('경기 남부', '훠궈야', '일식','경기 하남시 미사대로 750 스타필드 하남 GL층 G250호', '4.0','홍탕의 얼얼함과 매운맛을 한국적으로 맛있게 구현하였습니다.');
insert into stores_08 values('서울 남부', '더플라잉팬레드', '카페/베이커리','서울 서초구 서초대로 411 지티타워 지하1층', '4.0','올데이 브런치 그리고 파스타, 샐러드 등 다양한 메뉴를 즐기 수 있습니다.');
insert into stores_08 values('경기 북부', '장인더', '카페/베이커리','경기 포천시 소흘읍 광릉수목원로 1090-4', '4.4','한과의 맛과 아름다움을 현대에 전달합니다.');
insert into stores_08 values('경기 남부', '두세르', '카페/베이커리','경기 성남시 분당구 미금일로74번길 23', '4.9','모던한 분위기의 케이크');
insert into stores_08 values('서울 북부', '다이닝원', '일식','서울 동대문구 고산자로32길 78 2층', '4.5','10여년간의 노하우로 시작한 프리미엄 뷔페 다이닝원입니다.');
insert into stores_08 values('서울 북부', '진진', '중식','서울 마포구 월드컵북로1길 60 1층', '4.1','왕육성, 황진선 셰프가 만든 전통 중국 요리와 현대 중국 요리의 조화.');
insert into stores_08 values('경기 남부', '팔선생', '중식','경기 용인시 기흥구 죽전로43번길 11-25', '4.3','이색적인 중식 요리를 선보이는 보정동의 중식당입니다.');
insert into stores_08 values('서울 북부', '매란방', '중식','서울 성동구 왕십리광장로 17 2층 역무1호', '4.1','캐주얼 차이니즈 키친의 정수 매란방입니다!');
insert into stores_08 values('서울 남부', '송죽장', '중식','서울 영등포구 문래로 203', '3.8','맛있는 녀석들 출연 맛집 송죽장입니다.');
insert into stores_08 values('경기 북부', '올리앤', '양식','경기 남양주시 화도읍 맷돌로 34 B동 1층', '4.3','우리몸에 이로운 음식과 최상의 서비스와 맛을 자부하는 레스토랑입니다.');
insert into stores_08 values('서울 북부', '원 디그리 노스', '아시아식','서울 성동구 성수이로10길 14 102호', '4.9','미쉐린가이드 빕구르망 전통 화덕 아시안 바베큐!');
insert into stores_08 values('서울 남부', '파파야리프', '아시아식','서울 강남구 강남대로102길 29', '4.5','트로피칼 아시아 지역의 메뉴를 현대적 감성으로 풀어낸 레스토랑 입니다.');
insert into stores_08 values('서울 북부', '에이시안', '아시아식','서울 마포구 와우산로13길 31 1층', '4.3','퓨전아시안요리주점 에이시안입니다.');


commit;
--지역별 개수
SELECT region, COUNT(*) AS store_count
FROM stores_08
GROUP BY region;
--카테고리별 개수
SELECT menu_category, COUNT(*) AS store_count
FROM stores_08
GROUP BY menu_category;

--고객 테이블
drop table st_customers;
create table st_customers(
     cus_id varchar2(10) not null,
     cus_pw varchar2(10) not null,
     cus_name varchar2(10) not null primary key,
     cus_phone varchar2(11)
);

INSERT INTO st_customers VALUES ('a3b1c2d4e5', 'pass1234', '김민수', '01012345678');
INSERT INTO st_customers VALUES ('f6g7h8i9j0', 'pass2345', '이영희', '01023456789');
INSERT INTO st_customers VALUES ('k1l2m3n4o5', 'pass3456', '박지훈', '01034567890');
INSERT INTO st_customers VALUES ('p6q7r8s9t0', 'pass4567', '최수진', '01045678901');
INSERT INTO st_customers VALUES ('u1v2w3x4y5', 'pass5678', '정우성', '01056789012');
INSERT INTO st_customers VALUES ('z6a7b8c9d0', 'pass6789', '배수지', '01067890123');
INSERT INTO st_customers VALUES ('e1f2g3h4i5', 'pass7890', '임하나', '01078901234');
INSERT INTO st_customers VALUES ('j6k7l8m9n0', 'pass8901', '박현수', '01089012345');
INSERT INTO st_customers VALUES ('o1p2q3r4s5', 'pass9012', '김민석', '01090123456');
INSERT INTO st_customers VALUES ('t6u7v8w9x0', 'pass0123', '김민지', '01001234567');

select * from st_customers;



--예약 테이블
drop table st_reservations;
create table st_reservations(
     res_no varchar2(3) primary key,
     res_store varchar2(30) references stores_08(st_name),  
     res_name varchar2(10) references st_customers(cus_name),
     res_date varchar2(8) not null,
     res_time varchar2(10) not null,
     number_of_pp varchar2(2),
     res_success varchar2(5),
     res_check varchar2(4)
);

--예약번호 시퀀스 생성 (res_no 예약번호 1부터 자동생성)

create sequence reservSeq  start with 1;

insert into st_reservations(  res_no  , res_store  ,  res_name  ,res_date , res_time, number_of_pp, res_success, res_check ) values ( reservSeq.nextval  ,  '광화문미진'  ,'김민수' ,'20241008', '12:00', '4', '1', 'Y' );
insert into st_reservations(  res_no  , res_store  ,  res_name  ,res_date , res_time, number_of_pp, res_success ) values ( reservSeq.nextval  ,  '파롤앤랑그'  ,'김민지' ,'20241024', '17:00', '2', '1' );



-- 10월 20일 이전 예약 (res_check 포함)
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '광화문미진', '김민수', '20241008', '12:00', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '청와옥 본점', '이영희', '20241009', '18:00', '3', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '능동미나리', '박지훈', '20241010', '19:30', '2', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '해목 롯데월드몰점', '최수진', '20241011', '20:00', '5', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '자반고 양주본점', '정우성', '20241012', '13:30', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '최미삼순대국', '배수지', '20241013', '11:00', '3', '1', 'N');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '팔선생', '임하나', '20241014', '19:00', '2', '1', 'N');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '포사이', '김민석', '20241015', '17:30', '2', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '담택', '김민지', '20241016', '20:00', '3', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '다이닝원', '박현수', '20241017', '18:00', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '다이닝원', '김민수', '20241018', '19:00', '5', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '장인더', '이영희', '20241019', '13:30', '2', '1', 'N');

-- 10월 20일 이후 예약 (res_check 제외)
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '스시히로미', '박지훈', '20241020', '20:30', '3', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '더플라잉팬레드', '최수진', '20241021', '12:00', '4', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '북한강돌짜장', '정우성', '20241022', '18:30', '2', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '훠궈야', '배수지', '20241023', '17:00', '6', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '로마경양식', '임하나', '20241024', '19:00', '3', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '송죽장', '김민석', '20241025', '20:00', '4', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '올리앤', '김민지', '20241026', '12:30', '2', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '광화문미진', '박현수', '20241027', '13:00', '5', '1');

commit;



select * from  st_reservations  ;






--점주 테이블
drop table owner_08;
create table owner_08(
     store_name varchar2(30) references stores_08(st_name) primary key,
     owner_pw varchar2(10) not null,
     owner_phone varchar2(11)
);

insert into owner_08  values ('광화문미진', '1234', '01011112222');
insert into owner_08  values ('능동미나리', '5678', '01022334455');
insert into owner_08  values ('담택', '9101', '01033445566');
insert into owner_08  values ('파롤앤랑그', '1213', '01044556677');
insert into owner_08  values ('파이브가이즈 여의도', '1415', '01055667788');
insert into owner_08  values ('청와옥 본점', '1617', '01066778899');
insert into owner_08  values ('해목 롯데월드몰점', '1819', '01077889900');
insert into owner_08  values ('까폼', '2021', '01088990011');
insert into owner_08  values ('자반고 양주본점', '2223', '01099001122');
insert into owner_08  values ('스시히로미', '2425', '01010101234');
insert into owner_08  values ('파크프리베', '2627', '01021222334');
insert into owner_08  values ('북한강돌짜장', '2829', '01032333445');
insert into owner_08  values ('최미삼순대국', '3031', '01043444556');
insert into owner_08  values ('로마경양식', '3233', '01054555667');
insert into owner_08  values ('포사이', '3435', '01065666778');
insert into owner_08  values ('훠궈야', '3637', '01076777889');
insert into owner_08  values ('더플라잉팬레드', '789012', '01078901234');
insert into owner_08  values ('장인더', '890123', '01089012345');
insert into owner_08  values ('두세르', '901234', '01090123456');
insert into owner_08  values ('다이닝원', '012345', '01001234567');
insert into owner_08  values ('진진', '123456', '01012345678');
insert into owner_08  values ('팔선생', '234567', '01023456789');
insert into owner_08  values ('매란방', '345678', '01034567890');
insert into owner_08  values ('송죽장', '456789', '01045678901');
insert into owner_08  values ('올리앤', '567890', '01056789012');
insert into owner_08  values ('원 디그리 노스', '678901', '01067890123');
insert into owner_08  values ('파파야리프', '789012', '01078901234');
insert into owner_08  values ('에이시안', '890123', '01089012345');

commit;

select * from owner_08;

select *
from stores_08 s
join owner_08 o
on s.st_name = o.store_name;


--메뉴 카테고리별

select *
from stores_08
where menu_category = '한식';

select *
from stores_08
where menu_category = '중식';

select *
from stores_08
where menu_category = '일식';

select *
from stores_08
where menu_category = '양식';

select *
from stores_08
where menu_category = '카페/베이커리';



--평점 높은 순 

select st_name, st_rate, region, menu_category, st_address, st_description
from stores_08
order by st_rate desc;

--인기 순
select sr.res_store, count(sr.res_no) AS reservation_count
from st_reservations sr
group by sr.res_store
order by reservation_count desc;





