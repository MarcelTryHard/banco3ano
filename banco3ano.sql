create database pet;

use pet;

create table pet( 
	nome varchar(255),
	idade int(11),
	raca varchar(255),
	porte varchar(255),
	sexo varchar(255),
	responsavel varchar(255),
	id int(11),
	perfil_id int(11)
);
create table login(
	user varchar(255),
	passaword varchar(255),
	id int(11) primary key auto_increment,
	login_id int(11),
	responsavel_id int(11)
);

create table agenda(
	data date,
	horainicio varchar(255),
    horafim varchar(255),
    disponivel varchar(255),
    id int(11) primary key auto_increment
);

create table loja(
	nome varchar(255),
	email varchar(255),
	telefone int(11),
	cnpj varchar(255),
	endereco varchar(255),
	id int(11) primary key auto_increment,
	pet_id int(11),
	catalogo_id int(11)
);

create table perfil(
	fotoUrl varchar(255),
	id int(11) primary key auto_increment
);

create table venda(
	loja varchar(255),
    valor_total varchar(255),
    valor_item varchar(255),
    data_compra date,
    forma_pagamento varchar(255),
    estado varchar(255),
    id int(11) primary key auto_increment
);



create table estoque ( 
	valor_unitario int (11),
    quantidade varchar (100) not null,
    id int primary key auto_increment,
    remedio_id int (11)
    );

create table remedio (
	venda varchar(255),
	estoque varchar (255),
	id int primary key auto_increment,
	consumivel_id int (11)
);

create table catalogo(
	item varchar(255),
	descricao varchar(255),
	id int(11) primary key auto_increment
);

create table consumivel(
	venda varchar(255),
	estoque varchar(255),
	id int(11) primary key auto_increment,
	estoque_id int(11)
);

create table estetica(
	venda varchar(255),
    agenda varchar(255),
    id int(11) primary key auto_increment,
    agenda_id int(11)
);

create table endereco(
	rua varchar(255),
	bairro varchar(255),
	numero varchar(255),
	cep varchar(255),
	complemento varchar(255),
	id int(11) primary key auto_increment,
	loja_id int(11)
);