# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\domaca_zadaca2.sql
drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table vozilo(
    marka_vozila varchar(50),
    serijski_broj varchar(50),
    vozac varchar(50),
    broj_putnika varchar(50)
);

create table vozac (
    ime_prezime varchar(50),
    serijski_broj varchar(50),
    broj_voznji varchar (50)
);

create table voznja(
    udaljenost varchar(50),
    broj_putnika varchar(50),
    cijena varchar(50)
);

create table putnik(
    adresa_prikupa varchar(50),
    adresa_Dostave varchar(50),
    dob varchar(50)
);