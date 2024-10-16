

--가게 테이블
drop table owner_08;
drop table st_reservations;
drop table st_customers;
drop table stores_08;
commit;

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

create table st_customers(
     cus_id varchar2(20) not null,
     cus_pw varchar2(20) not null,
     cus_name varchar2(20) not null primary key,
     cus_phone varchar2(20)
);

commit;

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
commit;

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


create table st_reservations(
     res_no varchar2(3) primary key,
     res_store varchar2(20) references stores_08(st_name),  
     res_name varchar2(20) references st_customers(cus_name),
     res_date varchar2(20) not null,
     res_time varchar2(20) not null,
     number_of_pp varchar2(2),
     res_success varchar2(5),
     res_check varchar2(4)
);
commit;


create table owner_08(
     store_name varchar2(30) references stores_08(st_name) primary key,
     owner_pw varchar2(20) not null,
     owner_phone varchar2(20)
);
commit;

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
--사진 url 추가
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240723_19%2F1721737944632b2tCb_JPEG%2FKakaoTalk_20240723_171426051_01.jpg'
where st_name = '광화문미진';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221219_147%2F1671413977277kfr7A_JPEG%2FIMG_6672.jpg'
where st_name = '능동미나리';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240621_87%2F1718932410349D9ACn_JPEG%2FF482F18E-8E01-4C71-846F-DCD0CD730DCA.jpeg'
where st_name = '담택';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210203_238%2F16123396686766BgmO_JPEG%2FVQEX-Jzh8ySeojDcZ51EIAcv.jpeg.jpg'
where st_name = '파롤앤랑그';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231012_86%2F1697077507089lRnWF_JPEG%2F__001715%2528%25C0%25FA%2529.jpg'
where st_name = '파이브가이즈 여의도';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230222_203%2F1677028275219acwLW_JPEG%2F3.jpg'
where st_name = '청와옥 본점';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231206_140%2F17018453615409K0xF_JPEG%2FIMG_0377.jpeg'
where st_name = '해목 롯데월드몰점';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20181006_136%2F15388263467956xmnr_JPEG%2FDunqlR9MCDsclX5iIq9zHSqS.jpg'
where st_name = '까폼';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230507_28%2F1683449775436GV1fG_JPEG%2F%25C8%25AD%25B4%25F6%25BB%25E7%25C1%25F8_%25B3%25D7%25C0%25CC%25B9%25F6%25BF%25EB.jpg'
where st_name = '자반고 양주본점';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230819_5%2F1692450961444anluN_JPEG%2F20180622_024232.jpg'
where st_name = '스시히로미';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240115_87%2F1705294154194iaS1U_JPEG%2F%25B8%25C5%25C0%25E5%25B7%25CE%25B0%25ED__%25C7%25C3%25B7%25B9%25C0%25CC%25BD%25BA%25BF%25EB.JPG'
where st_name = '파크프리베';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240114_55%2F17052394107669kRJ4_JPEG%2F%25BC%25BC%25C6%25AE_%25B5%25B9%25C2%25A5%25C0%25E5_%25D3%25DE_%252B_%25B0%25A5%25BA%25F1%25C2%25F2_%25D3%25DE.jpg'
where st_name = '북한강돌짜장';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221208_56%2F16704979113278pbyu_JPEG%2F1670497869109.jpg'
where st_name = '최미삼순대국';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210323_157%2F16164961014288UEDS_JPEG%2FQcxSSU7tB8Cvyrcn6YwE-Fxg.jpeg.jpg'
where st_name = '로마경양식';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150901_137%2F1441050016442aTggi_JPEG%2F97167548137710_0.jpg'
where st_name = '포사이';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240501_274%2F17144973577001RoQu_JPEG%2FKakaoTalk_20240501_013626274.jpg'
where st_name = '훠궈야';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220614_25%2F1655176207066HO0qW_JPEG%2F7FFD4D7F-67A5-4410-B66D-CEF6EF4C243D.jpeg'
where st_name = '더플라잉팬레드';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240106_149%2F17045077684778w4Mh_JPEG%2F1000031260.jpg'
where st_name = '장인더';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyNDA4MDVfMjIy%2FMDAxNzIyODY1NzIwNjYx.6lctFPAvOs5xoafy-hdelvmGVRURf4FJaB26GG5WOekg.X1UwEjj7GcQAR64FeL6HJDl3Pu_9MUO4BU_fHvtRABIg.JPEG%2F53B17E72-1056-45F3-85A6-8B9C8412502B.jpeg%3Ftype%3Dw1500_60_sharpen'
where st_name = '두세르';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240411_248%2F1712796636352uOFHU_JPEG%2F%25C1%25A6%25B8%25F1%25C0%25BB-%25C0%25D4%25B7%25C2%25C7%25D8%25C1%25D6%25BC%25BC%25BF%25E4_-001_%25281%2529.jpg'
where st_name = '다이닝원';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220318_112%2F1647591501689rhuOO_JPEG%2F%25B8%25E0%25BA%25B8%25BB%25FE.jpg'
where st_name = '진진';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150831_97%2F14409973295930rNod_JPEG%2F126873545332510_0.jpg'
where st_name = '팔선생';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220316_64%2F1647408253427gtxhF_JPEG%2F5.JPG'
where st_name = '매란방';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220501_117%2F1651401168150pMT0r_JPEG%2F1651401156132.jpg'
where st_name = '송죽장';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20180731_50%2F1533028164041ai5oI_PNG%2FWOsWjcaDkoo1PD4E-28ys-3Q.PNG.png'
where st_name = '올리앤';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20211228_268%2F1640660798753lU7in_JPEG%2F%25B7%25CE%25B0%25ED.jpeg'
where st_name = '원 디그리 노스';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230723_76%2F1690120878597nXXzd_JPEG%2F2023_%25C6%25C4%25C6%25C4%25BE%25DF%25B8%25AE%25C7%25C1_bi_rev.jpg'
where st_name = '파파야리프';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231226_59%2F1703568415282aCklo_PNG%2Fdddd.png'
where st_name = '에이시안';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fnaverbooking-phinf.pstatic.net%2F20240904_115%2F1725415804173SJ3Vn_JPEG%2F1_%25282%2529.jpg'
where st_name = '클랩피자';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240409_40%2F1712660157767b9eUB_JPEG%2F1000014267.jpg'
where st_name = '오라';

select * from stores_08;
commit;



