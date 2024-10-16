

--���� ���̺�
drop table owner_08;
drop table st_reservations;
drop table st_customers;
drop table stores_08;
commit;

create table stores_08(
     region varchar2(20) not null,
     st_name varchar2(30) not null primary key,
     menu_category varchar2(20),
     st_address varchar2(100),
     st_rate varchar2(5),
     st_description varchar2(100)
);      

commit;



insert into stores_08 values('���� �Ϻ�', '��ȭ������', '�ѽ�', '���� ���α� ���� 19 1��', '4.6', '1954�� ���� �����ִ� �޹б�����');
insert into stores_08 values('���� �Ϻ�', '�ɵ��̳���', '�ѽ�', '���� ��걸 �Ѱ����40�� 28 1, 2��', '4.7', '������ ���� ���ְ� ���� �� �ִ� ��! �ſ�꿪 �������� �ɵ��̳���');
insert into stores_08 values('���� �Ϻ�', '����', '�Ͻ�', '���� ������ ������12�ȱ� 51 1��', '4.7', '���õǸ鼭�� ����� ������ ���� ������ �ش�.');
insert into stores_08 values('���� �Ϻ�', '�ķѾض���', 'ī��/����Ŀ��', '���� ������ ���̻��29�ȱ� 8', '4.6', '�׸� ���̰� �Ϳ��� ���ִ� ������ ����Ʈ ī��');
insert into stores_08 values('���� ����', '���̺갡���� ���ǵ�', '���', '���� �������� ���Ǵ�� 108', '3.7', '�̱� ��ǥ �ܹ��� ����������' );
insert into stores_08 values('���� ����', 'û�Ϳ� ����', '�ѽ�', '���� ���ı� ���ʼ���� 48 �ݵ����� 1��', '4.7', '���뱹���� �����Ҽ� �ִ� �ֻ��� ��ġ�� �帮�ڽ��ϴ�.');
insert into stores_08 values('���� ����', '�ظ� �Ե��������', '�Ͻ�', '���� ���ı� �ø��ȷ� 300 �Ե������ 6��', '4.7', '�ظ��� ����߽� �������ν�(����) �������Դϴ�.');
insert into stores_08 values('���� ����', '����', '�ƽþƽ�', '���� ������ ������153�� 18 ����1��', '4.7', '�ѱ�ȭ���� ���� ��¥ ������ �±����� ����������.');
insert into stores_08 values('��� �Ϻ�', '�ڹݰ� ���ֺ���', '�ѽ�', '��� ���ֽ� ����� 152 1��', '4.6', '�����̾� ȭ�� �������� ������.');
insert into stores_08 values('��� �Ϻ�', '�������ι�','�Ͻ�' , '��� �����ν� �߰�� 24 ���������� 201ȣ', '4.2', '�����ο��� 17�⵿�� �ʹ� �������� �ҹ��� ����� [�������ι�]�Դϴ�.');
insert into stores_08 values('��� �Ϻ�', '��ũ������', 'ī��/����Ŀ��','��� �����ν� ���Ϸ�192���� 28-27', '4.3', '������ ��ġ�� ���� �� �ִ� ����Ʈ ī��, ��Ż���� ��������Դϴ�.');
insert into stores_08 values('��� �Ϻ�', '���Ѱ���¥��', '�߽�','��� �����ֽ� ȭ���� ���Ѱ���1112���� 6', '4.4', '������ ������� �Բ��Դ� �߰ſ� ��¥���� �ְ��� �޺��Դϴ�.');
insert into stores_08 values('��� ����', '�ֹ̻���뱹','�ѽ�', '��� ȭ���� ��ź������ 187 1��', '4.5', '��ź ���� ���� �Ұ�ⱹ�� ���ִ� �ֹ̻���뱹');
insert into stores_08 values('��� ����', '�θ�����', '���','��� ������ �ȴޱ� ������ 549 ���������� 1��', '4.4', '34�� ��������� �̾�� ������� , �Թڽ��� ������ �Դϴ�.');
insert into stores_08 values('��� ����', '������', '�ƽþƽ�','��� ���ֽ� ���̸� ������ 574', '4.7', '������ �������� ������ �ұ��� ������ ����');
insert into stores_08 values('��� ����', '�̱ž�', '�Ͻ�','��� �ϳ��� �̻��� 750 ��Ÿ�ʵ� �ϳ� GL�� G250ȣ', '4.0','ȫ���� ����԰� �ſ���� �ѱ������� ���ְ� �����Ͽ����ϴ�.');
insert into stores_08 values('���� ����', '���ö����ҷ���', 'ī��/����Ŀ��','���� ���ʱ� ���ʴ�� 411 ��ƼŸ�� ����1��', '4.0','�õ��� �귱ġ �׸��� �Ľ�Ÿ, ������ �� �پ��� �޴��� ��� �� �ֽ��ϴ�.');
insert into stores_08 values('��� �Ϻ�', '���δ�', 'ī��/����Ŀ��','��� ��õ�� ������ ����������� 1090-4', '4.4','�Ѱ��� ���� �Ƹ��ٿ��� ���뿡 �����մϴ�.');
insert into stores_08 values('��� ����', '�μ���', 'ī��/����Ŀ��','��� ������ �д籸 �̱��Ϸ�74���� 23', '4.9','����� �������� ����ũ');
insert into stores_08 values('���� �Ϻ�', '���̴׿�', '�Ͻ�','���� ���빮�� ����ڷ�32�� 78 2��', '4.5','10���Ⱓ�� ���Ͽ�� ������ �����̾� ���� ���̴׿��Դϴ�.');
insert into stores_08 values('���� �Ϻ�', '����', '�߽�','���� ������ �����źϷ�1�� 60 1��', '4.1','������, Ȳ���� ������ ���� ���� �߱� �丮�� ���� �߱� �丮�� ��ȭ.');
insert into stores_08 values('��� ����', '�ȼ���', '�߽�','��� ���ν� ���ﱸ ������43���� 11-25', '4.3','�̻����� �߽� �丮�� �����̴� �������� �߽Ĵ��Դϴ�.');
insert into stores_08 values('���� �Ϻ�', '�Ŷ���', '�߽�','���� ������ �սʸ������ 17 2�� ����1ȣ', '4.1','ĳ�־� ���̴��� Űģ�� ���� �Ŷ����Դϴ�!');
insert into stores_08 values('���� ����', '������', '�߽�','���� �������� ������ 203', '3.8','���ִ� �༮�� �⿬ ���� �������Դϴ�.');
insert into stores_08 values('��� �Ϻ�', '�ø���', '���','��� �����ֽ� ȭ���� �˵��� 34 B�� 1��', '4.3','�츮���� �̷ο� ���İ� �ֻ��� ���񽺿� ���� �ں��ϴ� ��������Դϴ�.');
insert into stores_08 values('���� �Ϻ�', '�� ��׸� �뽺', '�ƽþƽ�','���� ������ �����̷�10�� 14 102ȣ', '4.9','�̽������̵� �������� ���� ȭ�� �ƽþ� �ٺ�ť!');
insert into stores_08 values('���� ����', '���ľ߸���', '�ƽþƽ�','���� ������ �������102�� 29', '4.5','Ʈ����Į �ƽþ� ������ �޴��� ������ �������� Ǯ� ������� �Դϴ�.');
insert into stores_08 values('���� �Ϻ�', '���̽þ�', '�ƽþƽ�','���� ������ �Ϳ���13�� 31 1��', '4.3','ǻ���ƽþȿ丮���� ���̽þ��Դϴ�.');

create table st_customers(
     cus_id varchar2(20) not null,
     cus_pw varchar2(20) not null,
     cus_name varchar2(20) not null primary key,
     cus_phone varchar2(20)
);

commit;

INSERT INTO st_customers VALUES ('a3b1c2d4e5', 'pass1234', '��μ�', '01012345678');
INSERT INTO st_customers VALUES ('f6g7h8i9j0', 'pass2345', '�̿���', '01023456789');
INSERT INTO st_customers VALUES ('k1l2m3n4o5', 'pass3456', '������', '01034567890');
INSERT INTO st_customers VALUES ('p6q7r8s9t0', 'pass4567', '�ּ���', '01045678901');
INSERT INTO st_customers VALUES ('u1v2w3x4y5', 'pass5678', '���켺', '01056789012');
INSERT INTO st_customers VALUES ('z6a7b8c9d0', 'pass6789', '�����', '01067890123');
INSERT INTO st_customers VALUES ('e1f2g3h4i5', 'pass7890', '���ϳ�', '01078901234');
INSERT INTO st_customers VALUES ('j6k7l8m9n0', 'pass8901', '������', '01089012345');
INSERT INTO st_customers VALUES ('o1p2q3r4s5', 'pass9012', '��μ�', '01090123456');
INSERT INTO st_customers VALUES ('t6u7v8w9x0', 'pass0123', '�����', '01001234567');
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

create sequence reservSeq  start with 1;

insert into st_reservations(  res_no  , res_store  ,  res_name  ,res_date , res_time, number_of_pp, res_success, res_check ) values ( reservSeq.nextval  ,  '��ȭ������'  ,'��μ�' ,'20241008', '12:00', '4', '1', 'Y' );
insert into st_reservations(  res_no  , res_store  ,  res_name  ,res_date , res_time, number_of_pp, res_success ) values ( reservSeq.nextval  ,  '�ķѾض���'  ,'�����' ,'20241024', '17:00', '2', '1' );



-- 10�� 20�� ���� ���� (res_check ����)
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '��ȭ������', '��μ�', '20241008', '12:00', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, 'û�Ϳ� ����', '�̿���', '20241009', '18:00', '3', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '�ɵ��̳���', '������', '20241010', '19:30', '2', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '�ظ� �Ե��������', '�ּ���', '20241011', '20:00', '5', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '�ڹݰ� ���ֺ���', '���켺', '20241012', '13:30', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '�ֹ̻���뱹', '�����', '20241013', '11:00', '3', '1', 'N');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '�ȼ���', '���ϳ�', '20241014', '19:00', '2', '1', 'N');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '������', '��μ�', '20241015', '17:30', '2', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '����', '�����', '20241016', '20:00', '3', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '���̴׿�', '������', '20241017', '18:00', '4', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '���̴׿�', '��μ�', '20241018', '19:00', '5', '1', 'Y');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) values (reservSeq.nextval, '���δ�', '�̿���', '20241019', '13:30', '2', '1', 'N');

-- 10�� 20�� ���� ���� (res_check ����)
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '�������ι�', '������', '20241020', '20:30', '3', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '���ö����ҷ���', '�ּ���', '20241021', '12:00', '4', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '���Ѱ���¥��', '���켺', '20241022', '18:30', '2', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '�̱ž�', '�����', '20241023', '17:00', '6', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '�θ�����', '���ϳ�', '20241024', '19:00', '3', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '������', '��μ�', '20241025', '20:00', '4', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '�ø���', '�����', '20241026', '12:30', '2', '1');
insert into st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success) values (reservSeq.nextval, '��ȭ������', '������', '20241027', '13:00', '5', '1');
commit;



create table owner_08(
     store_name varchar2(30) references stores_08(st_name) primary key,
     owner_pw varchar2(20) not null,
     owner_phone varchar2(20)
);
commit;

insert into owner_08  values ('��ȭ������', '1234', '01011112222');
insert into owner_08  values ('�ɵ��̳���', '5678', '01022334455');
insert into owner_08  values ('����', '9101', '01033445566');
insert into owner_08  values ('�ķѾض���', '1213', '01044556677');
insert into owner_08  values ('���̺갡���� ���ǵ�', '1415', '01055667788');
insert into owner_08  values ('û�Ϳ� ����', '1617', '01066778899');
insert into owner_08  values ('�ظ� �Ե��������', '1819', '01077889900');
insert into owner_08  values ('����', '2021', '01088990011');
insert into owner_08  values ('�ڹݰ� ���ֺ���', '2223', '01099001122');
insert into owner_08  values ('�������ι�', '2425', '01010101234');
insert into owner_08  values ('��ũ������', '2627', '01021222334');
insert into owner_08  values ('���Ѱ���¥��', '2829', '01032333445');
insert into owner_08  values ('�ֹ̻���뱹', '3031', '01043444556');
insert into owner_08  values ('�θ�����', '3233', '01054555667');
insert into owner_08  values ('������', '3435', '01065666778');
insert into owner_08  values ('�̱ž�', '3637', '01076777889');
insert into owner_08  values ('���ö����ҷ���', '789012', '01078901234');
insert into owner_08  values ('���δ�', '890123', '01089012345');
insert into owner_08  values ('�μ���', '901234', '01090123456');
insert into owner_08  values ('���̴׿�', '012345', '01001234567');
insert into owner_08  values ('����', '123456', '01012345678');
insert into owner_08  values ('�ȼ���', '234567', '01023456789');
insert into owner_08  values ('�Ŷ���', '345678', '01034567890');
insert into owner_08  values ('������', '456789', '01045678901');
insert into owner_08  values ('�ø���', '567890', '01056789012');
insert into owner_08  values ('�� ��׸� �뽺', '678901', '01067890123');
insert into owner_08  values ('���ľ߸���', '789012', '01078901234');
insert into owner_08  values ('���̽þ�', '890123', '01089012345');

commit;
--���� url �߰�
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240723_19%2F1721737944632b2tCb_JPEG%2FKakaoTalk_20240723_171426051_01.jpg'
where st_name = '��ȭ������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221219_147%2F1671413977277kfr7A_JPEG%2FIMG_6672.jpg'
where st_name = '�ɵ��̳���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240621_87%2F1718932410349D9ACn_JPEG%2FF482F18E-8E01-4C71-846F-DCD0CD730DCA.jpeg'
where st_name = '����';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210203_238%2F16123396686766BgmO_JPEG%2FVQEX-Jzh8ySeojDcZ51EIAcv.jpeg.jpg'
where st_name = '�ķѾض���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231012_86%2F1697077507089lRnWF_JPEG%2F__001715%2528%25C0%25FA%2529.jpg'
where st_name = '���̺갡���� ���ǵ�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230222_203%2F1677028275219acwLW_JPEG%2F3.jpg'
where st_name = 'û�Ϳ� ����';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231206_140%2F17018453615409K0xF_JPEG%2FIMG_0377.jpeg'
where st_name = '�ظ� �Ե��������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20181006_136%2F15388263467956xmnr_JPEG%2FDunqlR9MCDsclX5iIq9zHSqS.jpg'
where st_name = '����';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230507_28%2F1683449775436GV1fG_JPEG%2F%25C8%25AD%25B4%25F6%25BB%25E7%25C1%25F8_%25B3%25D7%25C0%25CC%25B9%25F6%25BF%25EB.jpg'
where st_name = '�ڹݰ� ���ֺ���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230819_5%2F1692450961444anluN_JPEG%2F20180622_024232.jpg'
where st_name = '�������ι�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240115_87%2F1705294154194iaS1U_JPEG%2F%25B8%25C5%25C0%25E5%25B7%25CE%25B0%25ED__%25C7%25C3%25B7%25B9%25C0%25CC%25BD%25BA%25BF%25EB.JPG'
where st_name = '��ũ������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240114_55%2F17052394107669kRJ4_JPEG%2F%25BC%25BC%25C6%25AE_%25B5%25B9%25C2%25A5%25C0%25E5_%25D3%25DE_%252B_%25B0%25A5%25BA%25F1%25C2%25F2_%25D3%25DE.jpg'
where st_name = '���Ѱ���¥��';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221208_56%2F16704979113278pbyu_JPEG%2F1670497869109.jpg'
where st_name = '�ֹ̻���뱹';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210323_157%2F16164961014288UEDS_JPEG%2FQcxSSU7tB8Cvyrcn6YwE-Fxg.jpeg.jpg'
where st_name = '�θ�����';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150901_137%2F1441050016442aTggi_JPEG%2F97167548137710_0.jpg'
where st_name = '������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240501_274%2F17144973577001RoQu_JPEG%2FKakaoTalk_20240501_013626274.jpg'
where st_name = '�̱ž�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220614_25%2F1655176207066HO0qW_JPEG%2F7FFD4D7F-67A5-4410-B66D-CEF6EF4C243D.jpeg'
where st_name = '���ö����ҷ���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240106_149%2F17045077684778w4Mh_JPEG%2F1000031260.jpg'
where st_name = '���δ�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyNDA4MDVfMjIy%2FMDAxNzIyODY1NzIwNjYx.6lctFPAvOs5xoafy-hdelvmGVRURf4FJaB26GG5WOekg.X1UwEjj7GcQAR64FeL6HJDl3Pu_9MUO4BU_fHvtRABIg.JPEG%2F53B17E72-1056-45F3-85A6-8B9C8412502B.jpeg%3Ftype%3Dw1500_60_sharpen'
where st_name = '�μ���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240411_248%2F1712796636352uOFHU_JPEG%2F%25C1%25A6%25B8%25F1%25C0%25BB-%25C0%25D4%25B7%25C2%25C7%25D8%25C1%25D6%25BC%25BC%25BF%25E4_-001_%25281%2529.jpg'
where st_name = '���̴׿�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220318_112%2F1647591501689rhuOO_JPEG%2F%25B8%25E0%25BA%25B8%25BB%25FE.jpg'
where st_name = '����';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150831_97%2F14409973295930rNod_JPEG%2F126873545332510_0.jpg'
where st_name = '�ȼ���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220316_64%2F1647408253427gtxhF_JPEG%2F5.JPG'
where st_name = '�Ŷ���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220501_117%2F1651401168150pMT0r_JPEG%2F1651401156132.jpg'
where st_name = '������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20180731_50%2F1533028164041ai5oI_PNG%2FWOsWjcaDkoo1PD4E-28ys-3Q.PNG.png'
where st_name = '�ø���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20211228_268%2F1640660798753lU7in_JPEG%2F%25B7%25CE%25B0%25ED.jpeg'
where st_name = '�� ��׸� �뽺';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230723_76%2F1690120878597nXXzd_JPEG%2F2023_%25C6%25C4%25C6%25C4%25BE%25DF%25B8%25AE%25C7%25C1_bi_rev.jpg'
where st_name = '���ľ߸���';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20231226_59%2F1703568415282aCklo_PNG%2Fdddd.png'
where st_name = '���̽þ�';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fnaverbooking-phinf.pstatic.net%2F20240904_115%2F1725415804173SJ3Vn_JPEG%2F1_%25282%2529.jpg'
where st_name = 'Ŭ������';
update stores_08
set imgurl = 'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240409_40%2F1712660157767b9eUB_JPEG%2F1000014267.jpg'
where st_name = '����';

select * from stores_08;
commit;



