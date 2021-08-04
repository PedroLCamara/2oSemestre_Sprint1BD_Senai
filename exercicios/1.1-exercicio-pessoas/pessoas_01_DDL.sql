create database EmpresaPessoas;
go

use EmpresaPessoas;
go

create table Pessoa(
	IDPessoa smallint primary key identity(1,1), 
	NomePessoa varchar(35) not null 
);
go

create table CNH(
	IDCNH smallint primary key identity(1,1),
	IDPessoa smallint foreign key references Pessoa(IDPessoa),
	ValorCNH char(10) not null unique
);
go

create table Email(
	IDEmail int primary key identity(1,1),
	IDPessoa smallint foreign key references Pessoa(IDPessoa),
	EnderecoEmail varchar(256) not null
);
go

create table Telefone(
	IDTelefone int primary key identity(1,1),
	IDPessoa smallint foreign key references Pessoa(IDPessoa),
	NumeroTelefone varchar(14) not null
);
go