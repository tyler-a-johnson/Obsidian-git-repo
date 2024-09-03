create schema Week5Lecture; -- create schema is used to create a schema (only works for the local instance
use Week5Lecture; -- select the database/schema, your tables will not work if you skip this step 

-- create table is used to create a table (ensure the last line has no comma)
create table WandMaker(
	MakerID char(3) primary key,
    MakerName varchar(40),
    MakerYearsExperience int
	);

drop table WandMaker; -- Drop is used to delete the entire table along with the data

create table Core(
	CoreID char(3),
    CoreName varchar(40),
    CoreRarity varchar(20),
	primary key(CoreID)
    );

-- composite PK has to be defined after all the columns
create table Wand(
	MakerID char(3),
    WandID char(4),
    WandDateMade date,
    CoreID char(3),
	primary key (MakerID, WandID),
    foreign key(MakerID) references WandMaker(MakerID),
    foreign key(CoreID) references Core(CoreID)
    );

-- Data entry
insert into WandMaker values('M23','Jon Snow',20);
insert into WandMaker values('M24','James N',5);

insert into Core values('C10','Dragon Heartstring','Rare');

insert into Wand values('M23','W102','2023-05-12','c10');
insert into Wand values('M24','W102','2023-05-12','C10');

-- Select values
select MakerID,WandID,WandDateMade
from Wand;

-- Delete values from a table with a composite PK
delete from Wand
where MakerID='M24'
and WandID='W102';
-- Delete values from a table with a PK
delete from WandMaker
where MakerID = 'M24';

