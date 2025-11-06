DROP DATABASE IF EXISTS LojaDeVinhos;
create database LojaDeVinhos;
use LojaDeVinhos;


create table LojaDeVinhos.Regiao(
codRegiao bigint,
nomeRegiao varchar(100) not null,
descricaoReagiao text,
primary key(codRegiao)
);

create table LojaDeVinhos.Vinicola(
codVinicola BIGINT,
nomeVinicola varchar(100) not null,
descricaoVinicola text,
foneVinicola varchar(30),
emailVinicola varchar(30),
codRegiao bigint not null,
primary key(codVinicola),
foreign key(codRegiao) references LojaDeVinhos.Regiao(codRegiao)
);

create table LojaDeVinhos.Vinho(
codVinho bigint,
nomeVinho varchar(50) not null,
tipoVinho varchar(30) not null,
anoVinho int not null,
descricaoVinho text,
codVinicola bigint not null,
primary key(codVinho),
foreign key(codVinicola) references LojaDeVinhos.Vinicola(codVinicola)
);
