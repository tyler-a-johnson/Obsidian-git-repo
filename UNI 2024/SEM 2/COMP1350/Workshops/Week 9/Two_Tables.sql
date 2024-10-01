
DROP TABLE IF EXISTS Staff, Dept;

create table Staff(
staffid char(2),
sname varchar(30),
ssalary decimal(6,2),
deptid char(2),
primary key(staffid));

create table Dept(
deptid char(2),
dname varchar(30),
managerid char(2),
primary key(deptid),
foreign key (managerid) references Staff(staffid));

alter table Staff
add foreign key (deptid) references Dept(deptid);

insert into Staff values('S1','Walter White',9222.87,null);
insert into Staff values('S2','Jesse Pinkman',4238.34,null);
insert into Staff values('S3','Harvey Specter',9468.37,null);
insert into Staff values('S4','Michael Ross',2745.67,null);
insert into Staff values('S5','Donna Paulsen',2931.44,null);
insert into Staff values('S6','Rachel Zane',3880.56,null);
insert into Staff values('S7','Louis Litt',3397.45,null);
insert into Staff values('S8','Gus Fring',3717.36,null);
insert into Staff values('S9','Saul Goodman',2471.98,null);

insert into Dept values('D1','HR','S1');
insert into Dept values('D2','Audio Visual','S3');
insert into Dept values('D3','IT','S4');

update Staff
SET deptid = 'D1'
WHERE staffid IN ('S1','S5','S9');

update Staff
SET deptid = 'D2'
WHERE staffid IN ('S3','S2','S7','S8');

update Staff
SET deptid = 'D3'
WHERE staffid IN ('S4','S6');