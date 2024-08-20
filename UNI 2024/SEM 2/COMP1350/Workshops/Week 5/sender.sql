create table Sender(
	senderID varchar(4),
    SenderName varchar(255),
    SenderDOB date,
    SenderEmail varchar(255),
    SenderAddress varchar(255),
    primary key (senderID)
);

insert into Sender values ('S001', 'Rick Sanchez', 1985-03-17, 'rickthescientist@dimension.gov', '42 Wallaby Lane, Sydney NSW 2000');