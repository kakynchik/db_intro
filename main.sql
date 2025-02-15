create database Hospital;
go
use Hospital;
go
create table Examinations
(
    id          INT IDENTITY (1,1) PRIMARY KEY,
    name        varchar(255) not null,
    day_of_week varchar(50)  not null,
    start_time  time         not null,
    end_time    time         not null
);
go
create table Doctors
(
    id        INT IDENTITY (1,1) PRIMARY KEY,
    name      varchar(255) not null,
    specialty varchar(255) not null
);
go
create table Departments
(
    id   INT IDENTITY (1,1) PRIMARY KEY,
    name varchar(255) not null
);
go
create table Diseases
(
    id          INT IDENTITY (1,1) PRIMARY KEY,
    name        varchar(255) not null,
    description nvarchar(max),
);
go

use master
drop database Hospital;
go