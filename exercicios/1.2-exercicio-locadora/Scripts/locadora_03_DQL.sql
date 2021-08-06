use Locadora;
go

Select * from Empresa;
go

Select * from Veiculo;
go

Select * from Cliente;
go

Select * from Locacao;
go

Select * from Modelo;
go

Select * from Marca;
go

Select * from CPF;
go

-- A seguir, selects com join

Select IDLocacao, DataRetirada, DataDevolucao, StatusDevolucao, NomeCliente, NomeModelo from Locacao
left join Cliente
on Locacao.IDCliente = Cliente.IDCliente
left join Veiculo 
on Locacao.IDVeiculo = Veiculo.IDVeiculo
left join Modelo
on Veiculo.IDModelo = Modelo.IDModelo;
go

--Listar todas as locações, juntamente com os dados de retirada e devolução, nome do cliente e modelo do veículo alugado

Select NomeCliente, DataRetirada, DataDevolucao, StatusDevolucao, NomeModelo from Locacao
right join Cliente 
on Locacao.IDCliente = Cliente.IDCliente
left join Veiculo 
on Locacao.IDVeiculo = Veiculo.IDVeiculo
left join Modelo
on Veiculo.IDModelo = Modelo.IDModelo
where Cliente.NomeCliente = 'b';
go

--Listar os dados das locações de um determinado cliente (utilizei o cliente 'b' para este exercício), juntamento com o modelo do carro alugado