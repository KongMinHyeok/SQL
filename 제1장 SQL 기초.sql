#날짜 : 2022/08/22
#이름 : 공민혁
#내용 : 제1장 SQL 기초
#단축키 :  실행은 항상 위에서부터 실행 / 한줄실행 ctrl + Enter

#실습 1-1
CREATE DATABASE `UserDB`;
DROP DATABASE `UserDB`;
#실습 1-2
CREATE TABLE `User1` (
    `uid` VARCHAR(10),
    `name` VARCHAR(10),
    `hp` CHAR(13),
    `age` INT
);	

DROP TABLE `User1`;

#실습 1-3 마지막 숫자
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);		#데이터베이스 값에 입력
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-1112', 23);
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-1113', 32);
INSERT INTO `User1` (`uid`,`name`,`age`) VALUES ('A104', '강감찬', 45);
INSERT INTO `User1` SET 												#컬럼과 값을 매핑해서 기입
						`Uid`='A105',
						`name`='이순신',
                        `hp`='010-1234-5555';
                        
#실습 1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name` ='김춘추';
SELECT * FROM `User1` WHERE `age` < 30;
SELECT * FROM `User1` WHERE `age` >= 30;
SELECT `uid`,`name`,`age`  FROM `User1`;


#실습 1-5
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET 
					`hp`='010-1234-1001', 
					`age`=27 
				WHERE 
					`uid`='A101';
#실습 1-6
delete from `User1` where `uid`='A101';
delete from `User1` where `uid`='A102' AND `age`='23';
delete from `User1` where `age` >= 30;
#실습 1-7
create table `tblUser` (
	`userID` varchar(10),
    `userName` varchar(10),
    `userHp` char(13),
    `userAge` tinyint,
	`userAddr` varchar(20)

);
create table `TblProduct` (
	`prdCode` int,
    `prdName` varchar(10),
    `prdPrice` int,
    `prdAmount` int,
    `prdCompany` varchar(10),
    `prdMakeDate` date
);


delete from `TblProduct` where `prdCode`=5;
#실습 1-8
insert into `tblUser` values ("p101","김유신","010-1234-1001","25","서울시 중tbluser구");
insert into `tblUser` values ("p102","김춘추","010-1234-1002","23","부산시 금정구");
insert into `tblUser` values ("p103","장보고",null,"31","경기도 광주군");
insert into `tblUser` values ("p104","강감찬",null,null,"경남 창원시");
insert into `tblUser` values ("p105","이순신","010-1234-1005","50",null);

insert into `TblProduct` values (1,"냉장고",800,10,"LG","2022-08-23");
insert into `TblProduct` values (2,"노트북",1200,20,"삼성","2022-08-23");
insert into `TblProduct` values (3,"TV",1400,6,"LG","2022-08-23");
insert into `TblProduct` values (4,"세탁기",1000,8,"LG","2022-08-23");
insert into `TblProduct` values (5,"컴퓨터",1100,0,null,"2022-08-23");
insert into `TblProduct` values (6,"휴대폰",900,102,"삼성","2022-08-23");

#실습 1-9
#실습 1-10