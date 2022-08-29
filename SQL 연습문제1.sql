# 날짜 : 2022/08/29
# 이름 : 공민혁
# 내용 : SQL 연습문제1

#실습1-1
create database `Java1_shop`;
create user 'java1_admin1'@'%' identified by '1234';
grant all privileges on `Java1_shop`.* to 'java1_admin1'@'%';
flush privileges;
#실습1-2
CREATE TABLE `Customer`(
	`custld` varchar(10) primary key,
	`name` char(10),
	`hp` varchar(13),
    `addr` char(10),
    `rdate` date
);

create table `Product` (
	`prodno` int auto_increment primary key,
    `proName` char(5) not null,
    `stock` int not null,
    `price` int,
    `company` char(5) not null
);
drop table `Product`;
create table `Order`(
	`orderNo` int auto_increment primary key,
    `orderId` varchar(4) not null,	
    `orderProduct` tinyint not null,
    `orderCount` tinyint not null,
    `orderDate` datetime not null
);
#실습1-3
insert into `Customer` values('c101','김유신','010-1234-1001','김해시 봉황동',now());
insert into `Customer` values('c102','김춘추','010-1234-1002','경주시 보문동',now());
insert into `Customer` values('c103','장보고','010-1234-1003','완도군 청산면',now());
insert into `Customer` values('c104','강감찬','010-1234-1004','서울시 마포구',now());
insert into `Customer` values('c105','이성계',not null,not null,now());
insert into `Customer` values('c106','정철','010-1234-1006','경기도 용인시',now());
insert into `Customer` values('c107','허준',not null,not null,now());
insert into `Customer` values('c108','이순신','010-1234-1008','서울시 영등포구',now());
insert into `Customer` values('c109','송상현','010-1234-1009','부산시 동래구',now());
insert into `Customer` values('c110','정약용','010-1234-1010','경기도 광주시',now());

insert into `Product` (`proName`,`stock`,`price`,`company`) values('새우깡',5000,1500,'농심');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('초코파이',2500,2500,'오리온');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('포카칩',3600,1700,'오리온');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('양파이',1250,1800,'농심');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('죠리퐁',2200,not null,'크라운');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('마카렛트',3500,3500,'롯데');
insert into `Product` (`proName`,`stock`,`price`,`company`) values('뿌셔뿌셔',1650,1200,'오뚜기');

insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c102',3,2,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c101',4,1,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c108',1,1,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c109',6,5,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c102',2,1,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c101',7,3,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c110',1,2,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c104',2,4,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c102',1,3,now());
insert into `Order` (`orderId`,`orderProduct`,`orderCount`,`orderDate`) values('c107',6,1,now());

#실습1-4
select * from `Customer`;

#실습1-5
select `custld`, `name`, `hp` from `Customer`;

#실습1-6
select * from `Product`;

#실습1-7
select `company` from `Product`;

#실습1-8
select distinct `company` from `Product`;

#실습1-9
select `proName`, `price` from `Product`;

#실습1-10
select `proName`, `price`+500 as `조정단가` from `Product`;

#실습1-11
select `proName`, `stock`, `price` from `Product` where `company`='오리온';

#실습1-12
select `orderProduct`, `orderCount`, `orderDate` from `Order` where`orderID`='c102';

#실습1-13
select `orderProduct`, `orderCount`, `orderDate` from `Order` where`orderID`='c102' and `orderCount`>=2;

#실습1-14
select * from `Product` where `price` >= 1000 and `price` <= 2000;

#실습1-15
select `custld`, `name`, `hp`, `addr` from `Customer` where `name` like'김%';

#실습1-16
select `custld`, `name`, `hp`, `addr` from `Customer` where `name` like '__';

#실습1-17
select * from `Customer` where `hp` is null;

#실습1-18
select * from `Customer` where `addr` is not null;

#실습1-19
select * from `Customer` order by `custld` desc;

#실습1-20
select * from `Order` where `orderCount` >= 3 order by `orderCount` desc, `orderProduct` asc;

#실습1-21
select avg(`price`) from `product`;

#실습1-22
select sum(stock) as `재고량 합계` from `Product` where `company`= '농심';

#실습1-23
select count(*) as `고객수` from `Customer`;

#실습1-24
select count(distinct company)as `제조업체 수` from `Product`;

#실습1-25
select `orderProduct` as `주문 상품번호`, sum(`orderCount`) as `총 주문수량` from `order` group by `orderProduct`;

#실습1-26
select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고기` from `Product` group by `company`;

#실습1-27
select `company` as `제조업체`, count(*) as `제품수`, max(`price`) as `최고기` from `Product` group by `company` having `제품수` >= 2;
#실습1-28
select `orderProduct`, `orderId`, sum(`orderCount`) as `총 주문수량` from `Order` group by `orderProduct`, `orderId`;

#실습1-29
select `orderId`, `proName` from `Order` as a
join `Product` as b
on a.`orderProduct` = b.`prodNo`
where `orderId`='c102';


#실습1-30
select `orderid`, `name`, `proName`, `orderDate` from `Order` as a
join `Customer` as b on a.orderId = b.custld
join `Product` as c on a.orderProduct = c.prodNo
where substr(`orderDate`, 1, 10) = '2022-08-29';