create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
descricao_cargo varchar(255),
primary key(id));

select * from tb_funcionarios;

INSERT into tb_funcionarios(nome, idade, salario,descricao_cargo ) 
values ("Lucas", 25, 25000, "Diretor de pesquisa");

INSERT into tb_funcionarios(nome, idade, salario,descricao_cargo ) 
values ("Luana", 30, 30000, "CEO");

INSERT into tb_funcionarios(nome, idade, salario,descricao_cargo ) 
values ("Naiara", 18, 1000, "Aprendiz");

INSERT into tb_funcionarios(nome, idade, salario,descricao_cargo ) 
values ("Nivaldo", 67, 20000, "Gerente de Vendas");

INSERT into tb_funcionarios(nome, idade, salario,descricao_cargo ) 
values ("Isaias", 30, 15000, "Gerente de Logistica");

select * from tb_funcionarios where salario> 20000;

select * from tb_funcionarios where salario< 20000;

update tb_funcionarios set idade = 35 where id = 5;