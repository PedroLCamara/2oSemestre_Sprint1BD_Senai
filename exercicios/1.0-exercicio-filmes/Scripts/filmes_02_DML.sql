use Catalogo;
go

insert into Genero (NomeGenero)
values ('Ação'), ('Comédia'), ('Romance');
go

Delete from Genero 
where NomeGenero = 'Romance';
go

insert into Genero (NomeGenero)
values ('Aventura');
go

insert into Filme (IDGenero, TituloFilme)
values (2, 'Gente Grande'), (2, 'Gwnte Grande 2'), (4, 'Jumanji'), (1, 'Vingadores');
go

update Filme
set TituloFilme = 'Gente Grande 2'
where TituloFilme = 'Gwnte Grande 2';
go