# mysql -uroot --default_character_set=utf8 <C:\Users\Marko\Documents\GitHub\domaca_zadaca\kolokvij.sql
drop database if exists kolokvij;
create database kolokvij;
use kolokvij;

create table sestra (
    sifra int not null primary key auto_increment,
    haljina varchar(31) not null,
    maraka decimal(16,6) not null,
    hlace varchar(46),
    narukvica int not null
);

create table zena (
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

    
create table muskarac (
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table mladic (
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno boolean,
    ekstrovertno varchar(48) not null,
    dukserica varchar(48) not null,
    muskarac int
);

create table punac (
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

 create table cura (
        sifra int not null primary key auto_increment,
        novcica decimal(16,5) not null,
        gustoca decimal(18,6) not null,
        lipa decimal (13,10),
        ogrlica int not null,
        bojakose varchar(38),
        suknja varchar (36),
        punac int 
); 

create table svekar (
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table sestra_svekar (
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

alter table cura add foreign key (punac) references punac (sifra);

alter table zena add foreign key (sestra) references sestra (sifra);
alter table muskarac add foreign key (zena) references zena (sifra);
alter table mladic add foreign key (muskarac) references muskarac (sifra);
alter table sestra_svekar add foreign key (sestra) references sestra (sifra);
alter table sestra_svekar add foreign key (svekar) references svekar (sifra);


insert into sestra (sifra, haljina, hlace, narukvica)
values (null, 'crvena', 'crne', 1);

insert into sestra (sifra, haljina, hlace, narukvica)
values (null, 'zelena', 'crvene', 2);

insert into sestra (sifra, haljina, hlace, narukvica)
values (null, 'plava', 'plave', 3);

insert into zena (sifra, kratkamajica, jmbag, bojaociju, sestra)
values (null, 'plava', '12345678019', 'zelena',1);

insert into zena (sifra, kratkamajica, jmbag, bojaociju, sestra)
values (null, 'Žuta', '12345678000', 'zelena',2);


insert into zena (sifra, kratkamajica, jmbag, bojaociju, sestra)
values (null, 'crna', '12345678111', 'zelena',3);


insert into muskarac (sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values (null, 'plava', 'crne', 'aviator', 1999.12345, 1);

insert into muskarac (sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values (null, 'zelena', 'smeđe', 'sportske', 2999.12345, 2);

insert into muskarac (sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values (null, 'smeđa', 'bijele', 'dioptrijske', 3999.12345, 3);
