create database dbinfox;
use dbinfox;

create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

describe tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1, 'Vinicius Bueno Silva','4002-8922','viniciusbs','123456');

select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2, 'Gestor','8999-7575','gestoradm','123444');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3, 'Técnico1','5432-8998','tecnicoum','654321');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(4, 'Técnico2','8888-0000','tecnicodois','987654');

delete from tbusuarios where iduser=1;

select * from tbusuarios;


create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

select * from tbclientes;

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Vinicius Bueno Silva','Rua Tux','9090-8765','viniciusbs@gmail.com');

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Elon Musk','Rua Tesla','9145-9876','elontesla@hotmail.com');

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Mark Zukenberg','Vale do Silicio','5687-8080','mark@gmail.com');

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Bill Gates','Rua Windows','3478-1537','billgates@gmail.com');

select * from tbclientes;