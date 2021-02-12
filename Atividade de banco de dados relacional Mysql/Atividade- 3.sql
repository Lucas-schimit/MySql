create database db_registro_Escola;

use db_registro_Escola;

create table tb_aluno( 
id_aluno bigint auto_increment,
nome varchar(255) not null, 
nota float not null, 
curso varchar(255) not null, 
turma bigint not null,
primary key(id_aluno));

select * from tb_aluno;


insert into tb_aluno(nome,nota, curso, turma)
		values("Lucas",10,"Engenharia da Computação", 002);
        
insert into tb_aluno(nome,nota, curso, turma)
		values("Leonardo",8,"Engenharia da Computação", 002);
        
 insert into tb_aluno(nome,nota, curso, turma)
		values("William",5,"Engenharia da Computação", 002);  
        
 insert into tb_aluno(nome,nota, curso, turma)
		values("Hugo",1,"Admistração", 001); 
        
insert into tb_aluno(nome,nota, curso, turma)
		values("Carlos",10,"Engenharia Eletrica", 005); 
        
insert into tb_aluno(nome,nota, curso, turma)
		values("Carlos",8,"Biologia", 008); 
        
insert into tb_aluno(nome,nota, curso, turma)
		values("Marcelo",7.5,"Engenharia Quimica", 010);
        
        
insert into tb_aluno(nome,nota, curso, turma)
		values("Talita",6.5,"Psicologia", 011);
        
select * from tb_aluno where nota> 7;      
 
select * from tb_aluno where nota< 7; 
  
update tb_aluno  set nota = 2 where id_aluno = 4;