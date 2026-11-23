create database senhor_pasteis;

use senhor_pasteis;

create table usuarios (
    id_usuario INT auto_increment PRIMARY KEY,
    
    nome varchar(100) NOT NULL,
    
    email varchar(100) NOT NULL,
    
    senha varchar(255) NOT NULL
);

create table clientes (
    id_cliente INT auto_increment PRIMARY KEY,
    
    nome varchar(100) NOT NULL,
    
    telefone varchar(20) NOT NULL,
    
    endereco varchar(150) NOT NULL
);

create table pasteis (
    id_pastel INT auto_increment PRIMARY KEY,
   
    sabor varchar(60) NOT NULL,
    
    tipo varchar(10) NOT NULL, 
    
    preco decimal(6,2) NOT NULL
);

create table pedidos (
    id_pedido INT auto_increment PRIMARY KEY,
    
    id_cliente INT NOT NULL,
    constraint fk_pedidos_clientes
    foreign key(id_cliente)
    references clientes (id_cliente),
    
    id_pastel INT NOT NULL,
    constraint fk_pedidos_pasteis
    foreign key(id_pastel)
    references pasteis (id_pastel),
    
    quantidade INT NOT NULL,
    
    data_pedido DATETIME NOT NULL

);