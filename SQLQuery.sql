use NW2016
go
Create table UserProfile
(
UserProfileID int Primary Key identity,
FirstName varchar(MAX),
LastName Varchar (MAX)
)
go
Create Table Request
(
RequestID int primary key identity,
RequestDescription Varchar(MAX),
UserProfileID int foreign key references Userprofile(UserProfileID)
)
go

Create Table CoAuthors
(
CoAuthorID int Primary Key identity,
RequestID int foreign key references  Request (RequestID),
UserProfileID int,
RoleID int
)