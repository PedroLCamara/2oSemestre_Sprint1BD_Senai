create database EmpresaClinicas;
go

use EmpresaClinicas;
go

create table Clinica(
	IDClinica tinyint primary key identity(1,1),
	NomeClinica varchar(50) not null
);
go

create table Dono(
	IDDono smallint primary key identity(1,1),
	NomeDono varchar(35) not null
);
go

create table Tipo(
	IDTipo tinyint primary key identity(1,1),
	NomeTipo varchar(50) not null
);
go

create table Veterinario(
	IDVeterinario smallint primary key identity(1,1),
	IDClinica tinyint foreign key references Clinica(IDClinica),
	NomeVeterinario varchar(35) not null
);
go

create table Raca(
	IDRaca smallint primary key identity(1,1),
	IDTipo tinyint foreign key references Tipo(IDTipo),
	NomeRaca varchar(50) not null 
);
go

create table Pet(
	IDPet smallint primary key identity(1,1),
	IDRaca smallint foreign key references Raca(IDRaca),
	IDDono smallint foreign key references Dono(IDDono),
	NomePet varchar(35) not null
);
go

create table Atendimento(
	IDAtendimento int primary key identity(1,1),
	IDPet smallint foreign key references Pet(IDPet),
	IDVeterinario smallint foreign key references Veterinario(IDVeterinario),
	DataDeAtendimento date not null
);