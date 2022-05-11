# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\domaca_zadaca2.sql
drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    marka_vozila varchar(30),
    serijski_broj varchar(50) not null,
    vozac varchar(30),
    broj_putnika int
);

create table vozac (
    sifra int not null primary key auto_increment,
    ime_prezime varchar(30),
    serijski_broj varchar(50) not null,
    broj_voznji int,
    vozilo varchar(30)
);

create table voznja(
    sifra int not null primary key auto_increment,
    udaljenost decimal(20,2),
    broj_putnika varchar(20),
    cijena decimal(20,2),
    vozac varchar(30),
    vozilo varchar(50)
);

create table putnik(
    sifra int not null primary key auto_increment,
    adresa_prikupa varchar(50),
    adresa_Dostave varchar(50),
    dob varchar(50),
    vozilo varchar(50)
);