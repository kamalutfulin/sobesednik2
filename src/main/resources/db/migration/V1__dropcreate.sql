drop table IF EXISTS questions;
 create table questions
 (id  serial not null,
 answer varchar(7000),
 question varchar(7000),
 primary key (id));