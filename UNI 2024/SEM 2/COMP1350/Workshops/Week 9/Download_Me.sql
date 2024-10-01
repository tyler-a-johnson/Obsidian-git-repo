
DROP TABLE IF EXISTS Contract, Episode, Season, Actor;

-- create table season
create table Season(
SeasonID char(2),
SeasonName varchar(20),
primary key(SeasonID));

-- create table episode
create table Episode(
SeasonID char(2),
EpisodeNo varchar(3),
AirDate date,
primary key(SeasonID,EpisodeNo),
foreign key(SeasonID) references Season(SeasonID));

-- create table actor
create table Actor(
ActorID char(3),
ActorName varchar(30),
primary key(ActorID)
);

-- create table contract
create table Contract(
ContractID char(3),
SeasonID char(2),
EpisodeNo varchar(3),
ActorID char(3),
AirTime decimal(4,2),
primary key(ContractID),
foreign key(SeasonID,EpisodeNo) references Episode(SeasonID,EpisodeNo),
foreign key(ActorID) references Actor(ActorID));


-- Insert statements
Insert into Season values ('S1','Season 1');
Insert into Season values ('S2','Season 2');
Insert into Season values ('S3','Season 3');
Insert into Season values ('S4','Season 4');

Insert into Episode values ('S1','E1','2011-04-17');
Insert into Episode values ('S1','E2','2011-04-24');
Insert into Episode values ('S1','E3','2011-05-01');
Insert into Episode values ('S2','E1','2012-04-01');
Insert into Episode values ('S2','E2','2012-04-08');
Insert into Episode values ('S2','E3','2012-04-15');
Insert into Episode values ('S3','E2','2013-04-07');
Insert into Episode values ('S4','E1','2014-04-08');
Insert into Episode values ('S4','E10','2014-06-15');
Insert into Episode values ('S4','E2','2014-04-15');

Insert into Actor values ('A01','KIT HARRINGTON');
Insert into Actor values ('A02','PETER DINKLAGE');
Insert into Actor values ('A03','LENA HEADEY');
Insert into Actor values ('A04','MAISIE WILLIAMS');
Insert into Actor values ('A05','EMILIA CLARKE');
Insert into Actor values ('A06','SOPHIE TURNER');
Insert into Actor values ('A07','IWAN RHEON');
Insert into Actor values ('A08','SEAN BEAN');

Insert into Contract values ('C01','S1','E1','A01',14.34);
Insert into Contract values ('C02','S2','E2','A01',34.13);
Insert into Contract values ('C03','S4','E10','A03',43.09);
Insert into Contract values ('C04','S3','E2','A02',35.34);
Insert into Contract values ('C05','S2','E3','A04',47.23);
Insert into Contract values ('C06','S2','E2','A01',24.26);
Insert into Contract values ('C07','S3','E2','A05',8.54);
Insert into Contract values ('C08','S4','E1','A04',41.08);
Insert into Contract values ('C09','S1','E1','A08',24.54);
Insert into Contract values ('C10','S4','E2','A05',15.14);