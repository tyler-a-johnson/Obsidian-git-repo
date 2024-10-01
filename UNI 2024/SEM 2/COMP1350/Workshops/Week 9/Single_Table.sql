
DROP TABLE IF EXISTS Student;

create table Student(
studentid char(2),
studname varchar(30),
studsuburb varchar(30),
mentorid char(2),
sSalary decimal(6,2),
primary key(studentid));

alter table Student
add foreign key (mentorid) references Student(studentid);

insert into Student values('S1','Walter White','Epping',null,9222.87);
insert into Student values('S2','Jesse Pinkman','Epping','S1',4238.34);
insert into Student values('S3','Harvey Specter','Ryde',null,9468.37);
insert into Student values('S4','Michael Ross','Hornsby',null,8745.67);
insert into Student values('S5','Donna Paulsen','Ryde','S3',2931.44);
insert into Student values('S6','Rachel Zane','Hornsby','S4',3880.56);
insert into Student values('S7','Louis Litt','Ryde','S3',3397.45);
insert into Student values('S8','Gus Fring','Epping','S1',3717.36);
insert into Student values('S9','Saul Goodman','Epping','S1',2471.98);