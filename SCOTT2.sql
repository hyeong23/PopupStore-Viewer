drop table announcement;						
drop table alarm;						
drop table ask;						
drop table reply;						
drop table favorite;						
drop table picture;						
drop table category;						
drop table store;						
drop table member;						
					
						
-- member						
CREATE TABLE scott.member (						
member_num          NUMBER NOT NULL,						
member_id           VARCHAR2(20 BYTE) NOT NULL,						
member_pw           VARCHAR2(20 BYTE) NOT NULL,						
member_nickname     VARCHAR2(40 BYTE) DEFAULT NULL,						
member_email        VARCHAR2(40 BYTE) NOT NULL,						
member_type         NUMBER NOT NULL,						
member_company_name VARCHAR2(40 BYTE) DEFAULT NULL,						
member_company_num  NUMBER DEFAULT NULL,						
member_create       DATE DEFAULT sysdate NOT NULL,						
member_update       DATE DEFAULT sysdate NOT NULL						
);						
						
ALTER TABLE scott.member ADD CONSTRAINT member_pk PRIMARY KEY ( member_num );						
alter table  member						
add CONSTRAINT member_unique UNIQUE ( member_id,member_nickname, member_email, member_company_name, member_company_num);						
						
--store						
CREATE TABLE scott.store (						
store_num      NUMBER NOT NULL,						
member_num     NUMBER,						
store_title    VARCHAR2(255 BYTE) NOT NULL,						
store_intro    VARCHAR2(255 BYTE) NOT NULL,						
store_body     VARCHAR2(4000 BYTE) NOT NULL,						
store_start    DATE NOT NULL,						
store_end      DATE NOT NULL,						
store_favorite NUMBER DEFAULT 0 NOT NULL,						
store_loc      VARCHAR2(255 BYTE) NOT NULL,						
store_site     VARCHAR2(100 BYTE) NOT NULL,						
store_count    NUMBER DEFAULT 0 NOT NULL,						
store_status   NUMBER DEFAULT 0 NOT NULL						
);						
						
						
ALTER TABLE scott.store ADD CONSTRAINT store_pk PRIMARY KEY ( store_num );						
						
ALTER TABLE scott.store						
ADD CONSTRAINT store_member_fk FOREIGN KEY ( member_num )						
REFERENCES scott.member ( member_num )						
ON DELETE SET NULL;						
						
-- ask						
CREATE TABLE scott.ask (						
ask_num   NUMBER NOT NULL,						
ask_email VARCHAR2(40 BYTE) NOT NULL,						
ask_title VARCHAR2(20 BYTE) NOT NULL,						
ask_body  VARCHAR2(4000 BYTE) NOT NULL,						
ask_check NUMBER NOT NULL						
);						
						
ALTER TABLE scott.ask ADD CONSTRAINT ask_pk PRIMARY KEY ( ask_num );						
						
--announcement						
CREATE TABLE scott.announcement (						
announcement_num    NUMBER NOT NULL,						
member_num          NUMBER,						
announcement__title VARCHAR2(255 BYTE) NOT NULL,						
announcement_body   VARCHAR2(4000 BYTE) NOT NULL,						
announcement_time   DATE DEFAULT sysdate NOT NULL,						
announcement_count  NUMBER DEFAULT 0 NOT NULL						
);						
						
						
ALTER TABLE scott.announcement ADD CONSTRAINT announcement_pk PRIMARY KEY ( announcement_num );						
						
ALTER TABLE scott.announcement						
ADD CONSTRAINT announcement_member_fk FOREIGN KEY ( member_num )						
REFERENCES scott.member ( member_num )						
ON DELETE CASCADE;						
						
						
						
--reply						
CREATE TABLE scott.reply (						
reply_num  NUMBER NOT NULL,						
member_num NUMBER,						
store_num  NUMBER,						
reply      VARCHAR2(4000 BYTE) NOT NULL,						
reply_date DATE DEFAULT sysdate NOT NULL						
);						
						
						
ALTER TABLE scott.reply ADD CONSTRAINT reply_pk PRIMARY KEY ( reply_num );						
						
ALTER TABLE scott.reply						
ADD CONSTRAINT reply_member_fk FOREIGN KEY ( member_num )						
REFERENCES scott.member ( member_num )						
ON DELETE CASCADE;						
						
						
ALTER TABLE scott.reply						
ADD CONSTRAINT reply_store_fk FOREIGN KEY ( store_num )						
REFERENCES scott.store ( store_num )						
ON DELETE CASCADE;						
						
						
--favorite						
CREATE TABLE scott.favorite (						
favorite_num    NUMBER NOT NULL,						
member_num      NUMBER,						
store_num       NUMBER,						
favorite_status char NOT NULL						
);						
						
						
ALTER TABLE scott.favorite						
ADD CONSTRAINT favorite_pk PRIMARY KEY ( favorite_num );						
						
						
ALTER TABLE scott.favorite						
ADD CONSTRAINT favorite_member_fk FOREIGN KEY ( member_num )						
REFERENCES scott.member ( member_num )						
ON DELETE CASCADE;						
						
						
ALTER TABLE scott.favorite						
ADD CONSTRAINT favorite_store_fk FOREIGN KEY ( store_num )						
REFERENCES scott.store ( store_num )						
ON DELETE CASCADE;						
						
						
--alarm						
CREATE TABLE scott.alarm (						
alarm_num          NUMBER NOT NULL,						
member_num         NUMBER,						
alarm_content      VARCHAR2(255 BYTE) NOT NULL,						
alarm_status       CHAR(1 BYTE) DEFAULT NULL NOT NULL,						
alarm_time         DATE NOT NULL,						
alarm_checked_time DATE DEFAULT NULL,						
store_num          NUMBER,						
alarm_read         NUMBER DEFAULT 0 NOT NULL						
);						
						
						
						
						
ALTER TABLE scott.alarm						
ADD CONSTRAINT alarm_pk PRIMARY KEY ( alarm_num );						
						
						
ALTER TABLE scott.alarm						
ADD CONSTRAINT alarm_member_fk FOREIGN KEY ( member_num )						
REFERENCES scott.member ( member_num )						
ON DELETE CASCADE;						
						
						
ALTER TABLE scott.alarm						
ADD CONSTRAINT alarm_store_fk FOREIGN KEY ( store_num )						
REFERENCES scott.store ( store_num )						
ON DELETE CASCADE;						
						
						
						
						
						
						
						
						
--category						
CREATE TABLE scott.category (						
category_num NUMBER NOT NULL,						
store_num    NUMBER,						
category     VARCHAR2(20 BYTE) NOT NULL						
);						
						
						
						
						
ALTER TABLE scott.category ADD CONSTRAINT category_pk PRIMARY KEY ( category_num );						
						
ALTER TABLE scott.category						
ADD CONSTRAINT category_store_fk FOREIGN KEY ( store_num )						
REFERENCES scott.store ( store_num )						
ON DELETE CASCADE;						
						
						
						
--picture						
CREATE TABLE scott.picture (						
picture_num           NUMBER NOT NULL,						
store_num             NUMBER,						
picture_path          VARCHAR2(255 BYTE) NOT NULL,						
picture_name          VARCHAR2(255 BYTE) NOT NULL,						
picture_original_name VARCHAR2(255 BYTE) NOT NULL,						
picture_size          NUMBER NOT NULL,						
picture_date          DATE DEFAULT sysdate NOT NULL						
);						
						
						
ALTER TABLE scott.picture						
ADD CONSTRAINT picture_pk PRIMARY KEY ( picture_num );						
						
						
ALTER TABLE scott.picture						
ADD CONSTRAINT picture_store_fk FOREIGN KEY ( store_num )						
REFERENCES scott.store ( store_num )						
ON DELETE CASCADE;						
						
						
					

CREATE SEQUENCE store_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE member_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE alarm_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE announcement_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ask_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE category_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE favorite_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE picture_sequence START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE reply_sequence START WITH 1 INCREMENT BY 1;

select * from member;


insert into member(member_num,member_id,member_pw,member_nickname,member_email,member_type) values(member_sequence.nextval,'admin','admin','ADMIN','chokimi2000@naver.com',0);

--DELETE from member;

select * from user_sequences;

--DROP SEQUENCE my_sequence;

commit;
