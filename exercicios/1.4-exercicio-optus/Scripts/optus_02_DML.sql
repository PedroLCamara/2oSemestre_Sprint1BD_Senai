use Optus;
go

insert into Album (NomeAlbum, NomeArtista)
values ('Dia', 'Michael Jackson'), ('Tarde', 'Carol Konca'), ('Noite', 'Abba');
go

update Album
set NomeArtista = 'Karol Conka'
where NomeArtista = 'Carol Konca';
go

insert into Estilo (NomeEstilo)
values ('Pop'), ('Rap'), ('Rock'), ('Gospel');
go

Delete from Estilo
where NomeEstilo = 'Gospel';
go

insert into TipoUsuario (TituloTipoUsuario)
values ('Admin'), ('Comum');
go

insert into Usuario (IDTipoUsuario, Nome, Email, Senha)
values (1, 'Chefia', 'chef@email', '123456'), (2, 'José', 'jozz@email', '654321'), (2, 'Joséfa', 'jazz@email', '125634');
go

insert into TipoAlbum(IDAlbum, IDEstilo)
values (2, 1), (2, 2), (1, 1), (1, 3), (3, 1);
go

insert into Acesso(IDAlbum, IDUsuario)
values (2, 3), (2, 1), (2, 2), (1, 2), (3, 3);
go

insert into Artista(NomeArtista)
values ('Michael Jackson'), ('Karol Conka'), ('Abba');
go

update Album
set IDArtista = 2
where NomeAlbum = 'Tarde';
go

update Album
set IDArtista = 1
where NomeAlbum = 'Dia';
go

update Album
set IDArtista = 3
where NomeAlbum = 'Noite';
go

update Album 
set Tempo = '00:03:00'
where IDAlbum != 0;
go

update Album
set StatusDisponibilidade = 'disponível'
where IDAlbum = 1 or IDAlbum = 2