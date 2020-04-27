create database lojinha;

use lojinha;

create table tbclientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    cpf varchar(15) not null   
);

describe tbclientes;

insert into tbclientes(nome,fone,cpf)
values('Vinicius Bueno','99999-1234',40815522030);

insert into tbclientes(nome,fone,cpf)
values('Miguel Bueno','98844-6678',55587965988);

insert into tbclientes(nome,fone,cpf)
values('Henrique Bueno','97765-4321',26789036212);

select * from tbclientes;

create table tbprodutos(
	idpro int primary key auto_increment,
    produto varchar(50) not null,
    valor decimal(10,2),
    quantidade varchar(5)
);

describe tbprodutos;

insert into tbprodutos(produto,valor,quantidade)
values('Processador',550.99,'100');

insert into tbprodutos(produto,valor,quantidade)
values('HD',210.99,'300');

insert into tbprodutos(produto,valor,quantidade)
values('SSD',130.99,'50');

insert into tbprodutos(produto,valor,quantidade)
values('Fonte',399.99,'235');

select * from tbprodutos;

create table tbpedido(
	idpedido int primary key auto_increment,
    datped timestamp default current_timestamp,
    idcli int not null,
    idpro int not null,
    foreign key(idcli) references tbclientes(idcli),
    foreign key(idpro) references tbprodutos(idpro)
);

describe tbpedido;

insert into tbpedido(idcli,idpro) values (1,4);
insert into tbpedido(idcli,idpro) values (1,3);
insert into tbpedido(idcli,idpro) values (2,2);
insert into tbpedido(idcli,idpro) values (2,1);
insert into tbpedido(idcli,idpro) values (3,1);
insert into tbpedido(idcli,idpro) values (3,2);

select *from tbpedido
inner join tbclientes
on tbpedido.idcli = tbclientes.idcli
inner join tbprodutos
on tbpedido.idpro = tbprodutos.idpro;

select
P.idpedido as Pedido,
C.nome as Cliente,
V.Produto,Valor
from tbpedido as P
inner join tbclientes as C
on (P.idcli = C.idcli)
inner join tbprodutos as V
on (P.idpro = V.idpro);

select sum(valor) as Total from tbprodutos;

