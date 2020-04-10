
insert into tbcontatos2(id,nome,fone,email)
values(1,'Steve Jobs','1111-1111','steve@outlook.com');

insert into tbcontatos2(id,nome,fone,email)
values(2,'Anderson Silva','2222-2222','andersonsilva@gmai.com');

insert into tbcontatos2(id,nome,fone,email)
values(3,'Neymar','3333-3333','neymarcontato@gmail.com');

insert into tbcontatos2(id,nome,fone)
values(4,'Antonio Bandeiras','6666-6666');

insert into tbcontatos2(id,nome,fone,email)
values(5,'Brad Pitt','5555-5555','bradpitt@yahoo.com.br');

/***** Pesquisando dados na tabela (CRUD - Read) *****/

-- selecionando todos os registros da tabela
select * from tbcontatos2;

-- selecionando registros de acordo com um critério
select * from tbcontatos2 where id = 2;
select * from tbcontatos2 where nome = 'Bill Gates';
select * from tbcontatos2 where nome like 'B%';

-- selecionar por ordem alfabética (asc ou desc)
select * from tbcontatos2 order by nome asc;

-- selecionar campos específicos da tabela
select nome,fone from tbcontatos2;

-- criando 'apelidos' para os campos da tabela (relatório personalizado)
select nome as contato, fone as telefone from tbcontatos2;

/***** Alterando dados na tabela (CRUD - Update) *****/

-- Se o critério (where) for omitido, todos os registros serão alterados
update tbcontatos2 set nome='Willian Gates' where id = 1;
update tbcontatos2 set email='ironmaidem@gmail.com' where id = 4;
update tbcontatos2 set fone='9999-1234', email='linus@tux.com' where id = 2;
select * from tbcontatos2;

/***** Removendo um registro da tabela (CRUD - Delete) *****/

-- Se o critério (where) for omitido, todos os registros serão apagados
delete from tbcontatos2 where id = 5;
select * from tbcontatos2;