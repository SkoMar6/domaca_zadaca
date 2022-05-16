# C:\xampp\mysql\bin>mysql -uroot --default_character_set=utf8 < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\srednja_skola.sql

drop database if exists srednja_skola;
create database srednja_skola;
use srednja_skola;


create table srednja_skola(
    sifra int not null primary key auto_increment,
    naziv varchar(40) not null,
    adresa varchar(50) not null,
    kontakt_telefon int not null,
    kontakt_mail varchar(50),
    razred int not null
);

create table razred(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    broj_ucenika int,
    ucenik int not null
);


create table ucenik(
    sifra int not null primary key auto_increment,
    ime_prezime varchar(50) not null,
    oib char(11) not null,
    datum_rodenja datetime,
    kontakt_telefon_roditelja int not null,
    kontakt_mail_roditelja varchar(50)
);


create table  profesor(
    sifra int not null primary key auto_increment,
    ime_prezime varchar(40) not null,
    predmeti varchar(50) not null,
    oib char(11) not null,
    kontakt_telefon int,
    kontakt_mail varchar(50)
);  


create table profesor_razred(
    sifra int not null primary key auto_increment,
    profesor int not null,
    razred int not null
);


# definiranje  vanjskih  kljuceva
alter table srednja_skola add foreign key(razred) references razred(sifra);
alter table razred add foreign key (ucenik) references ucenik(sifra);
alter table profesor_razred add foreign key (profesor) references profesor(sifra);
alter table profesor_razred add foreign key (razred) references razred(sifra);
