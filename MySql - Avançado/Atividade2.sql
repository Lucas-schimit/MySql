create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
ranking float,
primary key(id));


create table tb_pizza(
id bigint auto_increment, 
Nome_Pizza varchar(255) not null,
valor float not null,  
adicional float not null, 
ID_categoria bigint not null,
primary key(id),
foreign key (ID_categoria) references tb_categoria (id) );

select * from tb_pizza;

insert into tb_categoria(categoria,ranking) value("Basica", 1);
insert into tb_categoria(categoria,ranking) value("Media", 2);
insert into tb_categoria(categoria,ranking) value("Alta", 3);
insert into tb_categoria(categoria,ranking) value("Prêmio", 4);
insert into tb_categoria(categoria,ranking) value("Exclusive", 5);

insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria) value("Quatro_Queijos", 47,3,2);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("Bahiana", 52,7,4);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("A moda do chefe", 29,2,1);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("A moda da casa", 70,2,5);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("Bacon", 40,2,3);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("Frango", 30,2,3);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("Francgo com Bacon", 45,7,4);
insert into tb_pizza(Nome_Pizza,valor,adicional,ID_categoria ) value("Australiana", 80,2,5);


select * from tb_pizza where valor>45;

select * from tb_pizza where valor between 29 and 60; 

select * from tb_pizza where Nome_Pizza  like "%C%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.ID_categoria;

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.ID_categoria where tb_categoria.id =5;