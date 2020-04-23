create table myboard(
  num int not null auto_increment primary key,
  writer varchar(30) not null,
  subject varchar(40) not null,
  email varchar(40) not null,
  content text not null,
  pwd varchar(20) not null,
  wdate date,
  readcount int unsigned default 0,
  ip varchar(30)
);
desc myboard;