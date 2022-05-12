# mysql -uroot --default_character_set=utf8 <C:\Users\Marko\Documents\GitHub\domaca_zadaca\firma.sql
# sifra int not null primary key auto_increment,

drop database if exists firma;
create database firma;
use firma;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar (30) not null,
    cijena decimal (18,2)
);

create table sudjeluje(
    projekt int not null,
    programer int not null,
    datum_pocetka datetime not null,
    datum_kraja datetime not null
);

create table programer(
    sifra int not null primary key auto_increment,
    ime_prezime varchar (50),
    datum_rodenja datetime,
    placa decimal (18,2)
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);


