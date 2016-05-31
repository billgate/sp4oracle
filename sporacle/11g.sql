
create sequence seq_board;

CREATE TABLE tbl_board (
	  bno number NOT NULL,
	  title VARCHAR(200) NOT NULL,
	  content varchar2(4000) NULL,
	  writer VARCHAR(50) NOT NULL,
	  regdate DATE default sysdate,
	  viewcnt number DEFAULT 0);
    
alter table tbl_board add constraint pk_board primary key (bno);    


create sequence seq_reply;

create table tbl_reply (
 rno number NOT NULL,
 bno number default 0,
 replytext varchar(1000) not null, 
 replyer varchar(50)  not null, 
 regdate date default sysdate,
 updatedate date default sysdate
);

alter table tbl_reply add constraint pk_reply
primary key (rno);

alter table tbl_reply add constraint fk_board 
foreign key (bno) references tbl_board (bno);


insert into tbl_board (bno, title, content, writer) 
values (seq_board.nextval, 'Á¦¸ñ','³»¿ë','user00');

insert into tbl_board (bno, title, content, writer) 
(select seq_board.nextval, title, content, writer from tbl_board);


select * from tbl_board where rownum <  100 order by bno desc;

--1048576

insert into tbl_reply (rno, bno, replytext, replyer)
values (seq_reply.nextval, 1048576, '´ñ±Û'||LPAD(seq_reply.currval,10,'0'),'replyer01');

insert into tbl_reply (rno, bno, replytext, replyer)
(select seq_reply.nextval, 1048576, '´ñ±Û'||LPAD(seq_reply.currval,10,'0'),'replyer01' from tbl_reply);

select 
  rownum rn, rno, bno, replytext, replyer 
from tbl_reply 
where 
  bno = 1048576 and rownum < (3 * 10) order by rno desc;
  

select * 
from 
  (
  select 
    rownum rn, rno, bno, replytext, replyer 
  from tbl_reply 
  where 
    bno = 1048576 and rownum < (3 * 10) order by rno desc
  )
where rn > (3-1) * 10
order by rno desc;

