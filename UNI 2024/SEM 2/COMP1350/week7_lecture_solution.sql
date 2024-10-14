create schema imdb_FrancesLecture;

use imdb_FrancesLecture;

create table Director(
	DirectorID char(3) primary key,
    DirectorName varchar(30),
    DirectorDOB date,
    DirectorIsActive boolean,
    DirectorNumMovies numeric,
    Salary decimal (5, 2),
    DirectorFavouriteFood varchar(30)
);

-- Insert values 
insert into Director values ('D1', 'Christopher Nolan', '1970-07-30', true, 11, 100.75, 'fried chicken');
insert into Director values ('D2', 'Greta Gerwig', '1983-08-04', true, 4, 240.38, NULL);
insert into Director values ('D3', 'Martin Scorsese', '1942-11-17', true, 25, 530.19, NULL);
insert into Director values ('D4', 'Alfred Hitchcock', '1899-08-13', false, 53, 170.48, NULL);
insert into Director values ('D5', 'Ava DuVernay', '1972-08-24', true, 7, 330.99, 'korean bbq');
insert into Director values ('D7', 'Rupert Grint', '1988-08-24', true, 1, 666.44, 'pho dac biet');

-- Actor Table
create table Actor(
ActorID char(3),
ActorName varchar(30),
MentorID char(3),
primary key (ActorID),
foreign key (MentorID) references Actor(ActorID)
);

-- Movie Table
create table Movie(
MovieID char(3),
MovieName varchar(40),
MovieRelDate date,
DirectorID char(3),
primary key (MovieID),
foreign key (DirectorID) references Director(DirectorID));

-- Acts Table
create table Acts(
MovieID char(3),
ActorID char(3),
RoleName varchar(30),
Salary decimal(5,2),
primary key (MovieID, ActorID),
foreign key (MovieID) references Movie(MovieID),
foreign key (ActorID) references Actor(ActorID));


-- Actor values
insert into Actor values ('A1', 'Leonardo DiCaprio', NULL);
insert into Actor values ('A2', 'Margot Robbie', 'A1');
insert into Actor values ('A3', 'Brad Pitt', 'A1');
insert into Actor values ('A4', 'Emma Stone', 'A3');
insert into Actor values ('A5', 'Ryan Gosling', 'A3');
insert into Actor values ('A6', 'Tom Hardy', 'A1');
insert into Actor values ('A7', 'Saoirse Ronan', 'A4');
insert into Actor values ('A8', 'Robert De Niro', NULL);
insert into Actor values ('A9', 'James Stewart', NULL);
insert into Actor values ('A10', 'David Oyelowo', 'A8');
insert into Actor values ('A11', 'Rupert Grint', NULL);

-- Movie values
insert into Movie values ('M1', 'Inception', '2010-07-16', 'D1');
insert into Movie values ('M2', 'Dunkirk', '2017-07-21', 'D1');
insert into Movie values ('M3', 'Lady Bird', '2017-11-03', 'D2');
insert into Movie values ('M4', 'Little Women', '2019-12-25', 'D2');
insert into Movie values ('M5', 'The Wolf of Wall Street', '2013-12-25', 'D3');
insert into Movie values ('M6', 'The Irishman', '2019-11-27', 'D3');
insert into Movie values ('M7', 'Vertigo', '1958-05-09', 'D4');
insert into Movie values ('M8', 'Psycho', '1960-06-16', 'D4');
insert into Movie values ('M9', 'Selma', '2014-12-25', 'D5');
insert into Movie values ('M10', 'A Wrinkle in Time', '2018-03-09', 'D5');
insert into Movie values ('M11', 'Thunderpants', '2002-05-24', 'D7');

-- Acts values
insert into Acts values ('M1', 'A1', 'Dom Cobb', 534.50);
insert into Acts values ('M2', 'A6', 'Farrier', 790.75);
insert into Acts values ('M3', 'A7', 'Christine McPherson', 431.00);
insert into Acts values ('M4', 'A7', 'Jo March', 986.50);
insert into Acts values ('M5', 'A1', 'Jordan Belfort', 125.25);
insert into Acts values ('M6', 'A8', 'Frank Sheeran', 679.00);
insert into Acts values ('M7', 'A9', 'John Ferguson', 245.75);
insert into Acts values ('M8', 'A9', 'Sam Loomis', 542.25);
insert into Acts values ('M9', 'A10', 'Martin Luther King Jr.', 765.50);
insert into Acts values ('M10', 'A4', 'Mrs. Whatsit', 346.75);
insert into Acts values ('M11', 'A11', 'Alan A. Allen', 568.25);
insert into Acts values ('M5', 'A2', 'Naomi Lapaglia', 255.75);
insert into Acts values ('M10', 'A7', 'Jo March', 750.00);

/*
2. Display the names of active directors along with the movies they have directed.
Write the query using the following join methods.
	a.	Equi join
	b.	Inner join
	c.	Natural join. Why is this forbidden in COMP1350?
*/
-- a
select DirectorName, MovieName
from Director d, Movie m
where d.DirectorID = m.DirectorID
and DirectorIsActive = True;
-- b
select DirectorName, MovieName
from Director d inner join Movie m
on d.DirectorID = m.DirectorID
where DirectorIsActive = True;
-- c
select DirectorName, MovieName
from Director d natural join Movie m
where DirectorIsActive = True;

/*
3. Display the names of actors along with the names of the roles they have played, if they have earned more than $300,000 (All monetary values are stored in thousands).
*/
select ActorName, RoleName
from Actor a, Acts ac
where a.ActorID = ac.ActorID
and Salary > 300;

/*
4. Display the names of directors and the movies they have directed if they were born in July or November.
*/
select DirectorName, MovieName
from Director d, Movie m
where d.DirectorID = m.DirectorID
and month(DirectorDOB) in (7, 11);

/*
5. Display the names of movies and their directors if the movie was released between 2013 and 2019. 
*/
select MovieName, DirectorName
from Director d, Movie m
where d.DirectorID = m.DirectorID
and year(MovieRelDate) between 2013 and 2019;

/*
6. Display the names of actors that have acted in movies that released in the first half of the year. Remove all duplicate results.
*/
select distinct ActorName
from Actor a, Acts ac, Movie m
where a.ActorID = ac.ActorID
and ac.MovieID = m.MovieID
and month(MovieRelDate) <= 6;

/*
7. Display the names of movies that have actors starring in them with ONE of the following properties:
	a.	Name beginning with ‘r’
	b.	‘t’ as the last letter
Sort results in alphabetical order.
*/
select MovieName
from Movie m, Acts ac, Actor a
where m.MovieID = ac.MovieID
and ac.ActorID = a.ActorID
and (ActorName like 'r%' 
or ActorName like '%t')
order by MovieName;

/*
8. Display the names of actors that have acted in movies where the director is older than 50 years of age. Remove all duplicate results.
*/
select distinct ActorName
from Actor a, Acts ac, Movie m, Director d
where a.ActorID = ac.ActorID
and ac.MovieID = m.MovieID
and m.DirectorID = d.DirectorID
and year(curdate()) - year(DirectorDOB) > 50;

/*
9. Display the names of actors and their mentors. Include the names of actors that don't have mentors. Label the Mentor column appropriately.
*/
select a1.ActorName, a2.ActorName "MentorName"
from Actor a1 left join Actor a2
on a1.MentorID = a2.ActorID;

/*
10. Display the names of actors, the movies they acted in and the year it released. Include actors that haven't starred in any movies.
*/
select ActorName, MovieName, year(MovieRelDate) "YearReleased"
from Actor a left join Acts ac
on a.ActorID = ac.ActorID
left join Movie m
on ac.MovieID = m.MovieID;

/*
11. Count the number of movies released after 2015.
*/
select count(MovieID) "MoviesAfter2015"
from Movie
where year(MovieRelDate) > 2015;

/*
12. Display the name of actors and their average salary. Salaries should be prefixed with a '$' and have 2 decimal places. Columns should be named appropriately.
*/
select ActorName, concat('$', round(avg(Salary), 2)) "AverageSalary"
from Actor a, Acts ac
where a.ActorID = ac.ActorID
group by ActorName;




