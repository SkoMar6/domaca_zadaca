# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\domaca_zadaca.sql
# null je zadana vrijednost, kada ne piše podrazumijeva se
drop database if exists postolar;
create database postolar;
use postolar;

create table obuca(
    sifra int not null primary key auto_increment,
    vrsta_obuce varchar(30),
    velicina_obuce decimal(50),
    materijal varchar(30),
    oznaka_obuce varchar(20) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime_prezime varchar(35),
    vrsta_obuce varchar(30),
    komada_obuce int,
    oznaka_obuce varchar(50) not null
);

create table popravak(
    sifra int not null primary key auto_increment,
    oznaka_obuce varchar(20) not null,
    cijena varchar(50),
    vrijeme varchar(50),
    rad_segrta varchar(50)
);

create table segrt (
    sifra int not null primary key auto_increment,
    ime_prezime varchar(50),
    popravak varchar(50),
    broj_popravaka_dnevno varchar(50),
    oznaka_obuce varchar(20) not null
);