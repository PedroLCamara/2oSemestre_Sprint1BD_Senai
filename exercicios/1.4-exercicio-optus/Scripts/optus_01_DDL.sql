create database Optus;
go

use Optus;
go


create table TipoUsuario(
	IDTipoUsuario tinyint primary key identity(1,1),
	TituloTipoUsuario varchar(50) not null unique
);

create table Estilo(
	IDEstilo smallint primary key identity(1,1),
	NomeEstilo varchar(50) not null unique 
);


create table Usuario(
	IDUsuario int primary key identity(1,1),
	IDTipoUsuario tinyint foreign key references TipoUsuario(IDTipoUsuario),
	Nome varchar(35) not null,
	Email varchar(50) not null,
	Senha varchar(50) not null,
);

create table Album(
	IDAlbum smallint primary key identity(1,1),
	NomeAlbum varchar(50) not null,
	NomeArtista varchar (35) not null,
);

create table Acesso(
	IDAcesso int primary key identity(1,1),
	IDUsuario int foreign key references Usuario (IDUsuario),
	IDAlbum smallint foreign key references Album (IDAlbum),
);

create table TipoAlbum(
	IDTipoAlbum int primary key identity(1,1),
	IDAlbum smallint foreign key references Album (IDAlbum),
	IDEstilo smallint foreign key references Estilo (IDEstilo),
);
create table Artista(
	IDArtista smallint primary key identity(1,1),
	NomeArtista varchar(35) not null
);

--Ajustes abaixo

alter table Album
drop column NomeArtista;
go

alter table Album 
add IDArtista smallint foreign key references Artista (IDArtista);
go

alter table Album 
add	Localização varchar(50) default('Não especificada') not null; 
go

alter table Album 
add	DataDeLancamento date default('20210101') not null;
go

alter table Album 
add	Tempo smalldatetime not null default('03:50');
go

alter table Album 
add	StatusDisponibilidade varchar(50) not null default('não acessível');
go