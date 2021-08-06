use EmpresaPessoas;
go


select * from Pessoa;
go

select * from CNH;
go

select * from Email;
go

select * from Telefone;
go

--A seguir, selects com join

select Pessoa.IDPessoa, NomePessoa, EnderecoEmail, NumeroTelefone, ValorCNH from Pessoa
left join CNH 
on CNH.IDPessoa = Pessoa.IDPessoa
left join Telefone
on Telefone.IDPessoa = Pessoa.IDPessoa
left join Email
on Email.IDPessoa = Pessoa.IDPessoa
order by Pessoa.IDPessoa desc;
go

--Lista todas as pessoas, em ordem decrescente, juntamente com seus respectivos emails, telefones e CNHs (PS: Manti o ID para deixar visível a inversão na ordem)