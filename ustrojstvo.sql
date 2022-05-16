# mysql -uroot --default_character_set=utf8 <C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\ustrojstvo.sql
# sifra int not null primary key auto_increment,

drop database if exists ustrojstvo;
create database ustrojstvo;
use ustrojstvo;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar(30) not null,
    zupan int not null
);

create table zupan (
    sifra int not null primary key auto_increment,
    ime varchar (30) not null,
    prezime varchar (30) not null
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

# unos podataka

insert into zupan (ime, prezime)
values ('Ante','Antić');

insert into zupan (ime, prezime)
values ('Pero','Perić');

insert into zupan (ime, prezime)
values ('Hrvoje','Horvat');


insert into zupanija (naziv, zupan)
values ('Osječko-baranjska', 1);
 
insert into zupanija (naziv, zupan)
values ('Virovitčko-podravska', 2);

insert into zupanija (naziv,zupan)
values ('Vukovarsko-srijemska', 3);


insert into opcina (zupanija, naziv)
values (1, 'Antunovac');

insert into opcina (zupanija, naziv)
values (1, 'Bilje');

insert into opcina (zupanija, naziv)
values (2, 'Čačinci');

insert into opcina (zupanija, naziv)
values (2, 'Pitomača');

insert into opcina (zupanija, naziv)
values (3, 'Andrijaševci');

insert into opcina (zupanija, naziv)
values (3, 'Ivankovo');


insert into mjesto (opcina, naziv)
values (1,'Antunovac');

insert into mjesto (opcina, naziv)
values (1,'Ivanovac');

insert into mjesto (opcina, naziv)
values (1, 'Bilje');

insert into mjesto (opcina, naziv)
values (1, 'Kopačevo');

insert into mjesto (opcina, naziv)
values (2,'Čačinci');

insert into mjesto (opcina, naziv)
values (2, 'Paušinci');

insert into mjesto (opcina, naziv)
values (2, 'Otrovanec');

insert into mjesto (opcina, naziv)
values (2, 'Pitomača');

insert into mjesto (opcina, naziv)
values (3, 'Andrijaševci');

insert into mjesto (opcina, naziv)
values (3, 'Rokovci');

insert into mjesto (opcina, naziv)
values (3, 'Ivankovo');

insert into mjesto (opcina, naziv)
values (3, 'Retkovci');
