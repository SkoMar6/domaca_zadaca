# mysql -uroot --default_character_set=utf8 <C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\hijerahija.sql
# sifra int not null primary key auto_increment,

drop database if exists hijerahija;
create database hijerahija;
use hijerahija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    placa decimal (18,2),
    nadredeni int not null
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik (sifra);