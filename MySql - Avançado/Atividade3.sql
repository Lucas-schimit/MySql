create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
classe varchar(255) not null,
qualidade int not null,
primary key(id));


create table tb_produto(
id bigint auto_increment, 
Nome_Produto varchar(255) not null,
Valor_Produto float not null,  
quantidade float not null, 
ID_categoria bigint not null,
primary key(id),
foreign key (ID_categoria) references tb_categoria (id) );

select * from tb_produto;




insert into tb_categoria(classe,qualidade) value("Hipertenso", 1);
insert into tb_categoria(classe,qualidade) value("respiratorio", 2);
insert into tb_categoria(classe,qualidade) value("Cardioco", 3);
insert into tb_categoria(classe,qualidade) value("Dermatologico", 4);
insert into tb_categoria(classe,qualidade) value("ortopedico", 5);

insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Beanblock", 50,100,1);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Seretide", 100,20,2);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Motilium", 23,20,3);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Roacutan", 27,20,4);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Aclasta", 30,20,5);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Calicida", 40,60,5);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Broncolis", 29,60,2);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Propranaolol", 29,60,3);

select * from tb_produto where Valor_Produto>50;

select * from tb_produto where Valor_Produto between 2 and 60;

select * from tb_produto where Nome_Produto like "%B%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.ID_categoria;
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.ID_categoria where tb_categoria.id =2;