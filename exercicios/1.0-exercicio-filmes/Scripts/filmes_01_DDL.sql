create database Catalogo;
go

use Catalogo;
go

create table Genero(
	IDGenero tinyint primary key identity(1,1), 
	NomeGenero varchar(20) not null,
);
go

create table Filme(
	IDFilme smallint primary key identity(1,1),
	IDGenero tinyint foreign key references Genero(IDGenero),
	TituloFilme varchar(100) not null,
);
go

--Pequenas alterações

ALTER TABLE Genero 
ADD CONSTRAINT nomes_unique UNIQUE (NomeGenero); 