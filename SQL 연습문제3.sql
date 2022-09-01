#실습 3-1
create database `Colleage`;
create user 'java1_admin3'@'%' identified by '1234';
grant all privileges on colleage.*to 'java1_admin3'@'%';
flush privileges;

#실습 3-2
create table `Student` (
	`stdNo` varchar(8) primary key not null,
	`stdName` varchar(20) not null,
    `stdHp` varchar(13) not null,
    `stdYear` int not null,
    `stdAddress` varchar(100)
);

create table `Lecture` (
	`lecno` int  primary key not null,
    `lecName` varchar(20) not null,
    `lecCredit` int not null,
    `lecTime` int not null,
    `lecClass` varchar(10)
);
create table `Register` (
	`regStdNo` varchar(8) not null,
    `regLecNo` int not null,
    `regMidScore` int,
    `regFinalScore` int,
    `regTotalScore` int,
    `regGrade` varchar(1)
);
drop table `Register`;
#실습 3-3
insert into `student` values(20201016,"김유신","010-1234-1001",3,not null);
insert into `student` values(20201126,"김춘추","010-1234-1002",3,"경상남도 경주시");
insert into `student` values(20210216,"장보고","010-1234-1003",2,"전라남도 완도시");
insert into `student` values(20210326,"강감찬","010-1234-1004",2,"서울시 영동포구");
insert into `student` values(20220416,"이순신","010-1234-1005",1,"부산시 부산진구");
insert into `student` values(20220521,"송상현","010-1234-1006",1,"부산시 동래구");

insert into `Lecture` values(159,"인지행동심리학",3,40,"본304");
insert into `Lecture` values(167,"운영체제론",3,25,"본B05");
insert into `Lecture` values(234,"중급 영문법",3,20,"본201");
insert into `Lecture` values(239,"새법개론",3,40,"본204");
insert into `Lecture` values(248,"빅데이터개론",3,29,"본B01");
insert into `Lecture` values(253,"컴퓨팅사고와 코딩",2,10,"본B02");
insert into `Lecture` values(349,"사회복지 마케팅",2,50,"본301");

insert into `Register`(`regStdNo`, `regLecNO`) values ("20201126",234);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20201016",248);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20201016",253);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20201126",239);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20210216",349);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20210326",349);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20201016",167);
insert into `Register`(`regStdNo`, `regLecNO`) values ("20220416",349);

#실습 3-4
select * from `Lecture`;

#실습 3-5
select * from `student`;

#실습 3-6
select * from `Register`;

#실습 3-7
select * from `student` where `stdYear`='3';

#실습 3-8
select * from `Lecture` where `lecCredit`='2';

#실습 3-9
update `Register` set `regMidScore` =36, `regFinalscore` = 42 where `regStdNo`= '20201126' and `regLecNo`=234;
update `Register` set `regMidScore` =24, `regFinalscore` = 62 where `regStdNo`= '20201016' and `regLecNo`=248;
update `Register` set `regMidScore` =28, `regFinalscore` = 40 where `regStdNo`= '20201016' and `regLecNo`=253;
update `Register` set `regMidScore` =37, `regFinalscore` = 57 where `regStdNo`= '20201126' and `regLecNo`=239;
update `Register` set `regMidScore` =28, `regFinalscore` = 68 where `regStdNo`= '20210216' and `regLecNo`=349;
update `Register` set `regMidScore` =16, `regFinalscore` = 65 where `regStdNo`= '20210326' and `regLecNo`=349;
update `Register` set `regMidScore` =18, `regFinalscore` = 38 where `regStdNo`= '20201016' and `regLecNo`=167;
update `Register` set `regMidScore` =25, `regFinalscore` = 58 where `regStdNo`= '20220416' and `regLecNo`=349;

#실습 3-10
update `register` set `regTotalScore` = `regMidScore` + `regFinalScore`,
					  `regGrade` = if(`regTotalScore` >= 90, 'A',
								   if(`regTotalScore` >= 80, 'B',
                                   if(`regTotalScore` >= 70, 'C',
                                   if(`regTotalScore` >= 60,  'D', 'F'))));
                                   
#실습 3-11
select * from `Register` order by `regTotalScore` desc;


#실습 3-12
select * from `register` where `regLecNo` = '349' order by `regFinalScore` desc;

#실습 3-13
select * from `Lecture` where `lecTime` >= 30;

#실습 3-14
select `lecName`, `lecClass` from `lecture`;

#실습 3-15
select `stdNo`, `stdName` from `student`;

#실습 3-16
select * from `Student` where `stdAddress` is null;

#실습 3-17
select * from `Student` where `stdAddress` like '부산%';

#실습 3-18
select * from `Student` as a
join `register` as b
on a.stdNo = b.regStdNo;

#실습 3-19
select
	`stdNo`,
    `stdName`,
    `regLecNo`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade` from `student` as a,
	`register` as b
    where a.stdNo = b.regStdNo;
    
#실습 3-20
select `stdName`, `stdNo`, `regLecNo` from `student` as a
join `register` as b
on a.stdNo = b.regStdNo where `regLecNo` = '349';

#실습 3-21
select 
	`stdNo`,
    `stdName`,
	count(`stdNo`) as `수강신청 건수`,
    sum(`regTotalScore`) as `종합 건수`,
    sum(`regTotalScore`) / count(`stdNo`) as `평균`from `student` as a
join `register` as b
on a.stdNo = b.regStdNo
group by `StdName`;

#실습 3-22
select * from `register` as a
join `lecture` as b
on a.regLecNo = b.lecno;

#실습 3-23
select 
	`regStdNo`,
    `regLecNo`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`from `register` as a
join `lecture` as b
on a.regLecNo = b.lecno;

#실습 3-24
select 
	count(*) as `사회복지 마케팅 수강 신청건수`,
    avg(`regTotalScore`) as `사회복지 마케팅 평균`
    from `register` as a 
join `lecture`as b
on a.regLecNo = b.lecno
where `regLecNo` = '349';

#실습 3-25
select 
	`regStdNo`,
    `lecName`
 from `register` as a
join `lecture` as b
on a.regLecNo = b.lecno
where `regGrade` = 'A';

#실습 3-26
select * from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecno;

#실습 3-27
select 
	`stdNo`,
    `stdName`,
    `lecNo`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecno;

#실습 3-28

select
	`stdNo`,
    `stdName`,
    `lecName`,
    `regTotalScore`,
    `regGrade`
 from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecno
where `regGrade` = 'F';

#실습 3-29
select 
	`stdNo`,
    `stdName`,
    SUM(`lecCredit`) as `이수학점` from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecno
where `regGrade` not like 'F'
group by `stdName`;

#실습 3-30
select 
	`stdNo`,
    `stdName`,
    group_concat(`lecName`) as `신청과목`,
    group_concat(if(`regTotalScore` >= 60, `lecName`, null)) as `이수과목` 
    from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecno
group by `stdName`;

