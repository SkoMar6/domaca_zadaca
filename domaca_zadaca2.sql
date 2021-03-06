# mysql -uroot < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\domaca_zadaca2.sql
drop database if exists taksi_sluzba;
create database taksi_sluzba;
use taksi_sluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    marka_vozila varchar(30),
    serijski_broj varchar(50) not null,
    vozac int,
    boja varchar(30) not null,
    broj_putnika int
);

create table vozac (
    sifra int not null primary key auto_increment,
    ime_prezime varchar(30),
    serijski_broj varchar(50) not null,
    broj_voznji int,
    vozilo int
);

create table voznja(
    sifra int not null primary key auto_increment,
    udaljenost decimal(20,2),
    broj_putnika varchar(20),
    cijena decimal(20,2),
    vozac int,
    vozilo int
);

create table putnik(
    sifra int not null primary key auto_increment,
    adresa_prikupa varchar(50),
    adresa_Dostave varchar(50),
    dob int,
    vozilo int
);

alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table vozac add foreign key (vozilo) references vozilo (sifra);

alter table voznja add foreign key (vozilo) references vozilo(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);

alter table putnik add foreign key (vozilo) references vozilo(sifra);

# unos podataka

insert into vozilo (boja, serijski_broj)
values ('Zelena','qwertz');

insert into vozac (serijski_broj)
values ('xyz123');

insert into voznja (udaljenost, broj_putnika)
values (17.2, 4);

insert into putnik (dob)
values (30);



