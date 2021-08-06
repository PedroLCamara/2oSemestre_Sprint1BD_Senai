use Catalogo;
go

Select * from Genero;
go

Select * from Filme;
go


--A seguir, selects com join 

Select IDFilme, TituloFilme, NomeGenero from Filme
Left join Genero
on Filme.IDGenero = Genero.IDGenero;
go

--Listar todos os filmes e g�neros relacionados a algum filme

Select IDFilme, TituloFilme, NomeGenero from Filme
Right join Genero
on Filme.IDGenero = Genero.IDGenero;
go

--Listar filmes rlacionados a algum g�nero e todos os g�neros

Select IDFilme, TituloFilme, NomeGenero from Filme
Inner join Genero
on Filme.IDGenero = Genero.IDGenero;
go

--Listar filmes e g�neros que se relacionam entre si

Select IDFilme, TituloFilme, NomeGenero from Filme
Full outer join Genero
on Filme.IDGenero = Genero.IDGenero;
go

--Listar todos os filmes e todos os g�neros