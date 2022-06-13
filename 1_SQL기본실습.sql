#날짜: 2022/06/13
#이름 : 김진재
#내용: SQL기본실습

#실습하기 1-1
CREATE DATABASE `MyDB`;
DROP DATABASE `MYDB`;

#실습하기 1-2
CREATE TABLE `USER1`(
	`UID`	 VARCHAR(10), /*뒤에 숫자는 길이,
	                  유사 STRING 문자열(가변형)*/
	`NAME` VARCHAR(10),
	`HP`	 CHAR(13), /* 문자열(고정형) */
	`AGE`	 TINYINT /*그냥 INT는 범위가 너무 넓다*/
	);
	
DROP TABLE `USER1`;


#실습하기 1-3
INSERT INTO `USER1` VALUES ('A101','김유신', '010-1234-1111',25);
INSERT INTO `USER1` VALUES ('A102','김춘추', '010-1234-2222',23);
INSERT INTO `USER1` VALUES ('A103','장보고', '010-1234-3333',32);
INSERT INTO `USER1` (`UID`, `NAME`, `AGE`) VALUES ('A104', '강감찬', 45);
INSERT INTO `USER1` SET `UID` = 'A105',`NAME` = '이순신',`HP` = '010-1234-5555';
							

#실습하기 1-4
SELECT * FROM `user1`;
SELECT * FROM `user1` WHERE `uid`= 'A101';
SELECT * FROM `user1` WHERE `name`= '김춘추';
SELECT * FROM `user1` WHERE `age`> 30;
SELECT `uid`, `name`, `age`   FROM `user1`;

#실습하기 1-5
UPDATE `user1`	SET `HP`  = '010-1234-4444' WHERE `UID`='A104';
UPDATE `user1`	SET `AGE` = 51	  			 	 WHERE `UID`='A105';

UPDATE `user1` SET
  								 `hp`	 = '010-1234-1001',
  								 `age` = 27
  					WHERE
  								 `uid` = 'A101';

#실습하기 1-6
DELETE FROM `user1` WHERE `uid`='A101';
DELETE FROM `user1` WHERE `uid`='a102' AND `age`=25;
DELETE FROM `user1` WHERE `age` >= 30;


