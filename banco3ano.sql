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
create table responsavel(

	nome varchar(255),
	email varchar(255),
	telefone varchar(255),
	cpf varchar(255),
	endereco varchar(255),
	id int(11),
	endereco_id int(11),
	pet_id int(11)
);

insert into pet( nome, idade, raca, porte, sexo, responsavel, id, perfil_id) values( "Crovinho", 76, "preto", "imenso", "Masculino", "Natanael", 2, 1 );

insert into perfil( fotoUrl, id) values ("foto", 123);

select * from pet;

insert into agenda( data, horainicio, horafim, disponivel, id) values("2025-09-04", "12:30:54", "13:45:32", "sim", 69);
select * from agenda;

insert into catalogo( item, descricao, id) values ("ração", "ração de 5kg para cachorro", 67);

insert into consumivel( venda, estoque, id, estoque_id) values ("venda realizada", "Restam 5", 5, 8);

insert into endereco( rua, bairro, numero, cep, complemento, id, loja_id) values ("General Osorio", "Parque São Paulo", "1289", "85803760", "casa", 678, 691 );

insert into estetica( venda, agenda, id, agenda_id) values ("Venda não realizada", "disponivel", 45, 24);

insert into estoque( valor_unitario, quantidade, id, remedio_id) values (23, "78", 12, 43);

insert into login( user, passaword, id, login_id, responsavel_id) values ("Marcel Castanha", "Marceloilikok1523483089djwdv", 62, 426, 534 );

insert into loja(nome, email, telefone, cnpj, endereco, id, pet_id, catalogo_id) values ("General Pet", "Nikao@gmail.com", 45999822579, 656562827, "General osorio 1527", 53, 234, 74  );

select * from perfil; 
select * from pet;












