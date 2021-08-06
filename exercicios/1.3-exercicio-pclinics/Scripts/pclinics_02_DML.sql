use EmpresaClinicas;
go

insert into Clinica(NomeClinica)
values ('VetABC'), ('VettPPd');
go

delete from Clinica
where NomeClinica = 'VettPPd';
go

insert into Dono (NomeDono)
values ('Arnaldo'), ('Biwnca');
go

update Dono
set NomeDono = 'Bianca'
where NomeDono = 'Biwnca';
go

insert into Tipo (NomeTipo)
values ('Gato'), ('Cachorro');
go

insert into Raca (IDTipo, NomeRaca)
values (2, 'Shi-Tsu'), (1, 'SRD (Gato)'), (1, 'SRD (Cachorro)');
go

insert into Pet (NomePet, IDDono, IDRaca)
values ('lindinha', 1, 2), ('mel', 2, 3), ('belinha', 2, 1);
go

insert into Veterinario (IDClinica, NomeVeterinario)
values (1, 'Adailton'), (1, 'Bob'), (1, 'Célia');
go

insert into Atendimento (IDVeterinario, IDPet, DataDeAtendimento)
values (2, 3, '20210508'), (2, 3, '20210608'), (3, 1, '20210708'), (1, 2, '20210908'), (3, 1, '20211008');
go

insert into Raca (IDTipo, NomeRaca)
values (2, 'Pastor alemão');
go

insert into Pet(NomePet, IDDono, IDRaca)
values ('Boboco', 2, 4);
go

--Ajustes abaixo

update Veterinario 
set CRMV = '1111AAAA'
where NomeVeterinario = 'Célia';
go

update Veterinario 
set CRMV = '2222BBBB'
where NomeVeterinario = 'Bob';
go

update Veterinario 
set CRMV = '3333CCCC'
where NomeVeterinario = 'Adailton';
go 