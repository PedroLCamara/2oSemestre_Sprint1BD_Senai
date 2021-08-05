use Locadora;
go

insert into Empresa(NomeEmpresa)
values ('AlugaMais'), ('MestreAlugel'), ('ÉoAlugas'), ('Alugarro'), ('AluguEU'), ('Alugis');
go

delete from Empresa 
where NomeEmpresa = 'Alugis';
go

update Empresa
set NomeEmpresa = 'MestreAluguel'
where NomeEmpresa = 'MestreAlugel';
go

insert into Marca(NomeMarca)
values ('Fiat'), ('VolksWagen'), ('Chevrolet');
go

insert into Modelo(NomeModelo)
values ('Siena'), ('Gol'), ('Prisma');
go

insert into CPF(ValorCPF)
values (11111111111), (22222222222), (33333333333), (44444444444), (55555555555), (66666666666), (77777777777), (88888888888), (99999999999), (10101010101)
go

insert into Cliente(IDCPF, NomeCliente)
values (2, 'a'), (3, 'b'), (4, 'c'), (7, 'd'), (9, 'e'), (1, 'f'), (5, 'g'), (8, 'h'), (10, 'i'), (6, 'j');
go

insert into Veiculo(IDEmpresa, IDMarca, IDModelo, Placa)
values (5,	1,	1,	'AAAAAAA'), (4,	3,	3,	'BBBBBBB'), (3,	3,	3,	'CCCCCCC'), (1,	3,	3,	'DDDDDDD'), (2,	2,	2,	'EEEEEEE'), (2,	1,	1,	'FFFFFFF'), (2,	1,	1,	'JJJJJJJ'), (1,	2,	2,	'KKKKKKK'), (4,	1,	1,	'LLLLLLL'), (1,	1,	1,	'MMMMMMM');
go

insert into Locacao(IDCliente, IDVeiculo, DataRetirada, DataDevolucao, StatusDevolucao)
values(7,	6	,'20210803'	,'20210804'	,'Atraso 1 dia'), (2,	1	,'20210804'	,'20210805'	,'Atraso 2 dias '), (10,	4	,'20210805'	,'20210806'	,'Atraso 2 dias'), (8,	4	,'20210806'	,'20210807'	,'Dentro do prazo'), (5,	4	,'20210807'	,'20210808'	,'Dentro do prazo'), (3,	9	,'20210808'	,'20210808'	,'Dentro do prazo'), (9,	3	,'20210809'	,'20210808'	,'Dentro do prazo'), (4,	5	,'20210810'	,'20210808'	,'Dentro do prazo'), (1,	8	,'20210811'	,'20210808'	,'Dentro do prazo'), (6,	8	,'20210812'	,'20210808'	,'Dentro do prazo'), (4,	10	,'20210813'	,'20210808'	,'Dentro do prazo'), (3,	2	,'20210814'	,'20210808'	,'Dentro do prazo'), (3,	7	,'20210815'	,'20210808'	,'N/A'), (2,	7	,'20210816'	,'20210808'	,'N/A'), (7,	7	,'20210817'	,'20210808'	,'N/A');
go
