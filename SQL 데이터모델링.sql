create user 'root'@'%' identified by '1234';
grant all privileges on `java1_university`.* to 'root'@'%';
flush privileges;

insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (20101001,'정우성','760121-1234567','010-1101-7601','서울','p10101','10');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (20101002,'이정재','750611-1234567','010-1102-7506','서울','p10102','10');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (20111011,'전지현','890530-1234567','010-1103-8905','대전','p11103','11');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (20111013,'이나영','790413-1234567','010-2101-7904','대전','p11103','11');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (20111014,'원빈','660912-1234567','010-2104-6609','대전','p11104','11');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (21221010,'장동건','790728-1234567','010-3101-7907','대구','p22110','22');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (21231002,'고소영','840615-1234567','010-4101-8406','대구','p23102','23');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (22311011,'김연아','651021-1234567','010-5101-6510','대구','p31101','31');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (22311014,'유재석','721128-1234567','010-6101-7211','부산','p31104','31');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (22401001,'강호동','920907-1234567','010-7103-9209','부산','p40101','40');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (22401002,'조인성','891209-1234567','010-7104-8912','광주','p40101','40');
insert into `Student` (`stuNo`, `stuName`, `stuJumin`,`stuHp`,`stuAddr`,`proNo`,`depNo`)values (22421003,'강동원','770314-1234567','010-8101-7703','광주','p42103','42');

UPDATE `Student` SET `proNo`='p31101' WHERE `stuNo`='22311011';

#학과
insert into `departments` values (10,'국어국문학과','051-510-1010');
insert into `departments` values (11,'영어영문학과','051-510-1011');
insert into `departments` values (20,'경영학과','051-510-1020');
insert into `departments` values (21,'경제학과','051-510-1021');
insert into `departments` values (22,'정치외교학과','051-510-1022');
insert into `departments` values (23,'사회복지학과','051-510-1023');
insert into `departments` values (30,'수학과','051-510-1030');
insert into `departments` values (31,'통계학과','051-510-1031');
insert into `departments` values (32,'생명과학과','051-510-1032');
insert into `departments` values (40,'기계공학과','051-510-1040');
insert into `departments` values (41,'전자공학과','051-510-1041');
insert into `departments` values (42,'컴퓨터공학과','051-510-1042');

#교수
insert into `professors` values('p10101','김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울',10);
insert into `professors` values('p10102','계백','740620-1234567','010-1102-1976','gaeback@hg.ac.kr','서울',10);
insert into `professors` values('p11101','김관창','880529-1234567','010-1103-1976','kwanch@hg.ac.kr','대전',11);
insert into `professors` values('p11103','김춘추','780412-1234567','010-2101-1976','kimcc@hg.ac.kr','대전',11);
insert into `professors` values('p11104','이사부','650911-1234567','010-2104-1976','leesabu@hg.ac.kr','대전',11);
insert into `professors` values('p22110','장보고','780727-1234567','010-3101-1976','jangbg@hg.ac.kr','대구',22);
insert into `professors` values('p23102','산덕여왕','830614-1234567','010-4101-1976','gueen@hg.ac.kr','대구',23);
insert into `professors` values('p31101','강감찬','641020-1234567','010-5101-1976','kang@hg.ac.kr','대구',31);
insert into `professors` values('p31104','심사임당','711127-1234567','010-6101-1976','sinsa@hg.ac.kr','부산',31);
insert into `professors` values('p40101','이이','910906-1234567','010-7103-1976','leelee@hg.ac.kr','부산',40);
insert into `professors` values('p40102','이황','881208-1234567','010-7104-1976','hwang@hg.ac.kr','광주',40);
insert into `professors` values('p42103','송상현','760313-1234567','010-8101-1976','ssh@hg.ac.kr','광주',42);

#강좌
insert into `lectures` values('101001','대학 글쓰기',2,10,'본102','p10101');
insert into `lectures` values('101002','한국어음운론',3,30,'본102','p10102');
insert into `lectures` values('101003','한국현대문학사',3,30,'본103','p10102');
insert into `lectures` values('111011','중세영문학',3,25,'본201','p11103');
insert into `lectures` values('111012','영미시',3,25,'본201','p11104');
insert into `lectures` values('231110','사회복지학개론',1,8,'별관103','p23102');
insert into `lectures` values('311002','통계학의 이해',2,16,'별관303','p31101');
insert into `lectures` values('311003','기초 통계학',3,26,'별관303','p31104');
insert into `lectures` values('401019','기계역학',3,36,'공학관 102','p40101');
insert into `lectures` values('421012','데이터베이스',3,32,'공학관 103','p42103');

#수강
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p10101','101001',20101001);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p10102','101002',20101002);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p10102','101003',20101002);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p11103','111011',20111011);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p11104','111012',20111014);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p23102','231110',21231002);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p31101','311002',22311011);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p31104','311003',22311014);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p40101','401019',22401001);
insert into `Register` (`proNo`, `lecNo`, `stuNo`)values('p42103','421012',22421003);

