create table Sender(
	senderID varchar(4),
    SenderName varchar(255),
    SenderDOB date,
    SenderEmail varchar(255),
    SenderAddress varchar(255),
    primary key (senderID)
);

insert into Sender values ('S001', 'Rick Sanchez', 1985-03-17, 'rickthescientist@dimension.gov', '42 Wallaby Lane, Sydney NSW 2000');
insert into Sender values ('S002', 'Morty Smith', 1990-11-22, 'mortydanger@rickandmorty.org', '15 Koala Court, Surry Hills NSW 2010 ');
insert into Sender values ('S003', 'Loki Laufeyson', 1988-07-09, 'loki@asgard.com', '78 Eucalyptus Avenue, Darlinghurst NSW 2010');
insert into Sender values ('S004', 'Daenerys Targaryen', 1993-01-30, 'daenerys@dragonstone.net', '23 Boomerang Street, Woolloomooloo NSW 2011');
insert into Sender values ('S005', 'Walter White', 1987-09-05, 'walter@breakingbad.org', '56 Harbour View Road, Sydney NSW 2000');

SELECT * FROM Sender