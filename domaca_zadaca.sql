# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca.sql
drop database if exists postolar;
create database postolar;
use postolar;

create table obuca(
    vrsta_obuce varchar(50),
    velicina_obuce varchar(50),
    materijal varchar(50),
    oznaka_obuce varchar(50)
);

create table korisnik(
    ime_prezime varchar(50),
    vrsta_obuce varchar(50),
    komada_obuce varchar(50),
    oznaka_obuce varchar(50)
);

create table popravak(
    oznaka_obuce varchar(50),
    cijena varchar(50),
    vrijeme varchar(50),
    rad_segrta varchar(50)
);

create table segrt (
    ime_prezime varchar(50),
    popravak varchar(50),
    broj_popravaka_dnevno varchar(50)
);