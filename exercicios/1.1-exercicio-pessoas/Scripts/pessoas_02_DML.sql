use EmpresaPessoas;
go

insert into Pessoa (NomePessoa)
values ('Alberto'), ('Alfredo'), ('Antônio'), ('Bruno');
go

update Pessoa
set NomePessoa = 'Arlindo'
where NomePessoa = 'Bruno';
go

insert into CNH (ValorCNH, IDPessoa)
values (6666666666, 1), (7777777777, 2), (8888888888, 3), (9999999999,4)
go

insert into Email(EnderecoEmail, IDPessoa)
values ('a@email', 1), ('A@email', 2), ('á@email', 3), ('à@email', 4), ('ã@email', 4), ('b@email', 1); 
go

delete from Email
where EnderecoEmail = 'b@email';
go

insert into Telefone(NumeroTelefone, IDPessoa)
values (11111111111111, 1), (22222222222222, 2), (33333333333333, 3), (44444444444444, 4), (55555555555555, 4);
go