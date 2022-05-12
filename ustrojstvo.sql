# mysql -uroot --default_character_set=utf8 <C:\Users\Marko\Documents\GitHub\domaca_zadaca\ustrojstvo.sql
# sifra int not null primary key auto_increment,

drop database if exists ustrojstvo;
create database ustrojstvo;
use ustrojstvo;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(30),
    zupan int not null
);

create table zupan (
    sifra int not null primary key auto_increment,
    ime varchar (30),
    prezime varchar (30)
);

create table opcina (
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(30)
);

create table mjesto (
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(30)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
