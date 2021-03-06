# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\domaca_zadaca.sql
# null je zadana vrijednost, kada ne piše podrazumijeva se
drop database if exists postolar;
create database postolar;
use postolar;

create table obuca(
    sifra int not null primary key auto_increment,
    vrsta_obuce varchar(30),
    velicina_obuce decimal(10,1),
    materijal varchar(30),
    oznaka_obuce varchar(20) not null,
    korisnik int
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
    cijena decimal(10,2),
    vrijeme datetime,
    rad_segrta boolean,
    segrt int
);

create table segrt (
    sifra int not null primary key auto_increment,
    ime_prezime varchar(50),
    popravak varchar(50),
    broj_popravaka_dnevno int,
    oznaka_obuce varchar(20) not null
);

# definiranje vanjskih ključeva

alter table popravak add foreign key (segrt) references segrt(sifra);
alter table obuca add foreign key (korisnik) references korisnik(sifra);

# unos podataka
insert into obuca (oznaka_obuce, vrsta_obuce, materijal)
values ('M7652C', 'Čizme', 'Gumene');

insert into korisnik (ime_prezime, oznaka_obuce, komada_obuce)
values ('Tomislav Jakopec', 'M7650C', 2);




