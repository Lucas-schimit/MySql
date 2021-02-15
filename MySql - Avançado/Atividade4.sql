create database db_cidade_das_carnes;

use db_cidade_das_carnes;


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

insert into tb_categoria(classe,qualidade) value("Carne Bovina", 1);
insert into tb_categoria(classe,qualidade) value("Carne Suina", 2);
insert into tb_categoria(classe,qualidade) value("Peixe", 3);
insert into tb_categoria(classe,qualidade) value("Carne processada", 4);
insert into tb_categoria(classe,qualidade) value("Carne temperada", 5);


insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Picanha", 57,30,1);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Pernil", 30,20,2);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Salmao", 67,20,3);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Salcicha", 30,20,4);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Bife temperado", 40,20,5);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Frango a Passarinho", 35,30,5);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Bisteca Suina", 35,60,2);
insert into tb_produto(Nome_Produto ,Valor_Produto,quantidade,ID_categoria) value("Tilapia", 50,60,3);

select * from tb_produto where Valor_Produto>50;
select * from tb_produto where Valor_Produto between 2 and 60;
select * from tb_produto where Nome_Produto like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.ID_categoria;
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.ID_categoria where tb_categoria.id =5;