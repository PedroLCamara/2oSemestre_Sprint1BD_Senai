use Optus;
go

Select * from TipoUsuario;
go

Select * from TipoAlbum;
go

Select * from Estilo;
go

Select * from Album;
go

Select * from Usuario;
go

Select * from Acesso;
go

Select * from Artista;
go

--A seguir, selects com join 

Select Nome, Email from Usuario
where Usuario.IDTipoUsuario = 1;
go
--Lista todos os usu�rios administradores

Select NomeAlbum, NomeArtista, NomeEstilo from Album
left join Artista 
on Album.IDArtista = Artista.IDArtista
left join TipoAlbum
on Album.IDAlbum = TipoAlbum.IDAlbum
left join Estilo
on Estilo.IDEstilo = TipoAlbum.IDEstilo
where StatusDisponibilidade = 'dispon�vel';
go

--Lista os �lbuns dispon�veis junto de seus respectivos estilos

Select Nome, Email, Senha, TituloTipoUsuario from Usuario
left join TipoUsuario
on Usuario.IDTipoUsuario = TipoUsuario.IDTipoUsuario
where Email = 'chef@email' and Senha = '123456';
go

--Lista um usu�rio espec�fico com base no seu email e sua senha (Utilizei o usu�rio de nome 'chefia' para esse exercicio)

Select NomeAlbum from Album 
where DataDeLancamento > '20200202';
go

--Lista �lbuns com base em uma data de lan�amento m�nima (Todos os �lbuns foram lan�ados em janeiro de 2021)