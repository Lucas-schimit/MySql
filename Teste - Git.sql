select @@VERSION;


create database db_servico_rh;

use db_servico_rh;

create table tb_funcionario(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
primary key(id));

select * from tb_funcionario