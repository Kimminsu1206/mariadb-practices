
drop table member;

create table member(
no int(11) not null auto_increment,
email varchar(200) not null,
password varchar(64) not null,
name varchar(100) not null,
department varchar(100),
primary key(no)
);

alter table member add juminbunho char(13) not null after email;
desc member;
alter table member drop juminbunho;
desc member;
alter table member add self_intro text;
desc member;
alter table member change deparment department varchar(100) not null;
desc member;

select @@AUTOCOMMIT;
set autocommit=1;

delete from member;

-- insert
insert into member values(null, 'Minsu@naver.com', password('1234'), '김민수', '영업팀', null, now());
insert into member values(null, 'Dong@naver.com', password('5678'), '이동현', '개발팀', null, now());

-- update
update member set email = 'Dumsu@naver.com', password = password('1212')
where no = 3;
select * from member;

-- delete
delete from member where no = 4;
select * from member;

-- transaction
select @@AUTOCOMMIT;
set autocommit=0;

insert into member values(null, 'Dumgyu@naver.com', password('1234'), '한승규', '영업팀', null, now());
select * from member;

commit;
select * from member;

set autocommit=1;