use EmpresaClinicas;
go

Select * from Clinica;
go

Select * from Dono;
go

Select * from Tipo;
go

Select * from Raca; 
go

Select * from Pet;
go

Select * from Veterinario;
go

Select * from Atendimento;
go

--A seguir, selects com join

select NomeVeterinario, CRMV, NomeClinica from Veterinario
left join Clinica
on Veterinario.IDClinica = Clinica.IDClinica;
go

--Listar todos os veterinários, juntamento com seus CRMVs e a razão social da clínica onde trabalham

select NomeRaca from Raca
where substring(NomeRaca, 1, 1) = 's' or substring(NomeRaca, 1, 1) = 'S';
go

--Listar todas as raças que começam seu nome com 's' ou 'S'

select NomeTipo from Tipo
where Right(NomeTipo, 1) = 'o';
go

--Listar todos os tipos que terminam seu nome com 'o'

select NomePet, NomeDono from Pet
left join Dono
on Dono.IDDono = Pet.IDDono;
go

--Listar todos os pets junto com o nome de seus respectivos donos

select NomeVeterinario, NomePet, NomeRaca, NomeTipo, NomeDono, NomeClinica from Atendimento
left join Veterinario
on Veterinario.IDVeterinario = Atendimento.IDVeterinario
left join Pet
on Pet.IDPet = Atendimento.IDPet
left join Dono
on Pet.IDDono = Dono.IDDono
left join Raca 
on Pet.IDRaca = Raca.IDRaca
left join Tipo
on Raca.IDTipo = Tipo.IDTipo
left join Clinica
on Veterinario.IDClinica = Clinica.IDClinica;
go

--Listar todos os atendimentos, junto com o nome do veterinario, os dados do pet atendido (+ o nome do seu dono) e o nome da clínica 