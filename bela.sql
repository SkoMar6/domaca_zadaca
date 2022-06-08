# mysql -uroot --default_character_set=utf8  < C:\Users\Marko\Documents\GitHub\zadace\domaca_zadaca\bela.sql

drop database if exists bela;
create database bela;
use bela;

create table igrac(
    id int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    spol int not null,
    urlslika varchar(50)
);

create table lokacija (
    id int not null primary key auto_increment,
    latitude varchar(20),
    longitude varchar(20),
    naziv varchar(20)
);

create table partija (
    id int not null primary key auto_increment,
    vrsta varchar (20) not null,
    dokolikoseigra smallint,
    lokacija int, 
    unosi int
);

create table mjesanje (
    id int not null primary key auto_increment,
    vrsta varchar (20) not null,
    belot tinyint,
    datumunosa datetime,
    stiglja int not null,
    bodovadrugiunos smallint,
    bodovaprviunos smallint,
    zvanjedrugiunos smallint,
    zvanjeprviunos smallint,
    bodovatreciunos smallint,
    zvanjetreciunos smallint,
    partija int
);

create table partija_igrac (
    partija int not null,
    igrac int not null
);

alter table mjesanje add foreign key (partija) references partija(id);

alter table partija_igrac add foreign key (partija) references partija(id);
alter table partija_igrac add foreign key (igrac) references igrac(id);

alter table partija add foreign key (lokacija) references lokacija(id);
alter table partija add foreign key (unosi) references igrac(id);




insert into igrac (id,ime, prezime, spol)
values (null,'Marko','Skorup',1),
        (null,'Pero','Perić',1),
        (null,'Ana', 'Anić',2),
        (null,'Kristina', 'Horvat',2);

insert into lokacija (id,latitude,longitude,naziv)
values (null,'45.55111','18.69389','Osijek'),
        (null,'45.815399','15.966568','Zagreb'),
        (null,'43.508133','16.440193', 'Split');        

insert into partija (id,vrsta,dokolikoseigra,lokacija,unosi)
values (1,'udvoje', 501,1, null),
        (2,'utroje', 701, 2,null),
        (3,'učetvero', 1001, 3, null);

insert into mjesanje (id,vrsta,belot,datumunosa,stiglja,bodovadrugiunos,bodovaprviunos,zvanjedrugiunos,zvanjeprviunos,bodovatreciunos,zvanjetreciunos,partija)
values (null,1,null,null,1,null,null,null,null,null,null,null),
    (null,2,null,null,0,null,null,null,null,null,null,null),
    (null,3,null,null,2,null,null,null,null,null,null,null);

insert into partija_igrac(partija,igrac)
values (1,1),
        (2,2),
        (3,4);
        
