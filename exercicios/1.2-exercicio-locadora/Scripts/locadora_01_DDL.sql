create database Locadora; 
go

use Locadora;
go

create table Empresa(
	IDEmpresa tinyint primary key identity(1,1),
	NomeEmpresa varchar(50) not null,
);
go

create table Marca(
	IDMarca tinyint primary key identity(1,1),
	NomeMarca varchar(50) not null,
);
go

create table Modelo(
	IDModelo smallint primary key identity(1,1),
	NomeModelo varchar(50) not null,
);
go

create table Veiculo(
	IDVeiculo smallint primary key identity(1,1),
	IDEmpresa tinyint foreign key references Empresa(IDEmpresa),
	IDMarca tinyint foreign key references Marca(IDMarca),
	IDModelo smallint foreign key references Modelo(IDModelo),
	Placa char(7) not null,
);
go

create table CPF(
	IDCPF int primary key identity(1,1),
	ValorCPF char(11) not null unique
);
go

create table Cliente(
	IDCliente int primary key identity(1,1),
	IDCPF int foreign key references CPF(IDCPF),
	NomeCliente varchar(35) not null
);
go

create table Locacao(
	IDLocacao int primary key identity(1,1),
	IDCliente int foreign key references Cliente(IDCliente),
	IDVeiculo smallint foreign key references Veiculo(IDVeiculo),
	DataRetirada varchar(10) not null,
	DataDevolucao varchar(10)  not null,
	StatusDevolucao varchar(50) not null,
);
go


--Códigos de ajustes realizados abaixo

alter table Locacao
drop column DataRetirada;

alter table Locacao
drop column DataDevolucao;

alter table Locacao
drop column StatusDevolucao; */

alter table Locacao
add DataRetirada date not null

alter table Locacao
add DataDevolucao date not null

alter table Locacao
add StatusDevolucao varchar(50) not null 