create table Students
(
    ID   int not null
        constraint Students_pk
            primary key nonclustered,
    Name nvarchar(50) not null
) go
INSERT INTO Students VALUES('1','Samantha')
INSERT INTO Students VALUES('2','Julia')
INSERT INTO Students VALUES('3','Britney')
INSERT INTO Students VALUES('4','Kristeen')
INSERT INTO Students VALUES('5','Dyana')
INSERT INTO Students VALUES('6','Jenny')
INSERT INTO Students VALUES('7','Christene')
INSERT INTO Students VALUES('8','Meera')
INSERT INTO Students VALUES('9','Priya')
INSERT INTO Students VALUES('10','Priyanka')
INSERT INTO Students VALUES('11','Paige')
INSERT INTO Students VALUES('12','Jane')
INSERT INTO Students VALUES('13','Belvet')
INSERT INTO Students VALUES('14','Scarlet')
INSERT INTO Students VALUES('15','Salma')
INSERT INTO Students VALUES('16','Amanda')
INSERT INTO Students VALUES('17','Maria')
INSERT INTO Students VALUES('18','Stuart')
INSERT INTO Students VALUES('19','Aamina')
INSERT INTO Students VALUES('20','Amina')
GO

create table Friends
(
    ID        int not null,
    Friend_ID int not null
)
go
INSERT INTO Friends VALUES ('1', '14')
INSERT INTO Friends VALUES ('2', '15')
INSERT INTO Friends VALUES ('3', '18')
INSERT INTO Friends VALUES ('4', '19')
INSERT INTO Friends VALUES ('5', '20')
INSERT INTO Friends VALUES ('6', '5')
INSERT INTO Friends VALUES ('7', '6')
INSERT INTO Friends VALUES ('8', '7')
INSERT INTO Friends VALUES ('9', '8')
INSERT INTO Friends VALUES ('10', '1')
INSERT INTO Friends VALUES ('11', '2')
INSERT INTO Friends VALUES ('12', '3')
INSERT INTO Friends VALUES ('13', '4')
INSERT INTO Friends VALUES ('14', '9')
INSERT INTO Friends VALUES ('15', '10')
INSERT INTO Friends VALUES ('16', '11')
INSERT INTO Friends VALUES ('17', '12')
INSERT INTO Friends VALUES ('18', '13')
INSERT INTO Friends VALUES ('19', '16')
INSERT INTO Friends VALUES ('20', '17')
GO

create table Packages
(
    ID     int   not null,
    Salary float not null
)
go
INSERT INTO Packages VALUES ('1', '15.5')
INSERT INTO Packages VALUES ('2', '15.6')
INSERT INTO Packages VALUES ('3', '16.700001')
INSERT INTO Packages VALUES ('4', '18.799999')
INSERT INTO Packages VALUES ('5', '31.5')
INSERT INTO Packages VALUES ('6', '45.0')
INSERT INTO Packages VALUES ('7', '47.0')
INSERT INTO Packages VALUES ('8', '46.0')
INSERT INTO Packages VALUES ('9', '39.0')
INSERT INTO Packages VALUES ('10', '11.1')
INSERT INTO Packages VALUES ('11', '12.1')
INSERT INTO Packages VALUES ('12', '13.1')
INSERT INTO Packages VALUES ('13', '14.1')
INSERT INTO Packages VALUES ('14', '15.1')
INSERT INTO Packages VALUES ('15', '17.1')
INSERT INTO Packages VALUES ('16', '21.1')
INSERT INTO Packages VALUES ('17', '31.1')
INSERT INTO Packages VALUES ('18', '13.15')
INSERT INTO Packages VALUES ('19', '33.330002')
INSERT INTO Packages VALUES ('20', '22.16')


