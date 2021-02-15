create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255),
vida float,
primary key(id));

create table tb_personagem(
id bigint auto_increment, 
Nome_Personagem varchar(255) not null,
Poder_de_ataque float not null,  
Poder_de_defesa float not null, 
ID_Classe bigint not null,
primary key(id),
foreign key (ID_Classe) references tb_classe (id) );

select * from tb_personagem;
insert into tb_classe(classe,vida) value("Lutador1", 30000);
insert into tb_classe(classe,vida) value("Lutador2", 20000);
insert into tb_classe(classe,vida) value("Lutador3", 10000);
insert into tb_classe(classe,vida) value("MegaLutador1", 50000);
insert into tb_classe(classe,vida) value("MegaLutador2", 60000);


insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("Sniper", 3000,2000,2);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("SniperEspecialista", 10000,5000,5);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("Fuzileiro", 1000,1000,3);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("FuzileiroEspecialista", 2500,2000,4);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("FuzileiroNaval", 3500,4000,5);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("BrigadeiroDoAR", 20000,7000,5);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("Almirante", 20500,8000,5);
insert into tb_personagem(Nome_Personagem,Poder_de_ataque,Poder_de_defesa,ID_Classe) value("Cabo", 1500,1000,3);

select * from tb_personagem where Poder_de_ataque>2000;

select * from tb_personagem where  Poder_de_defesa between 1000 and 2000;

select * from tb_personagem where  Nome_Personagem like "%C%";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.ID_Classe;
select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.ID_Classe where tb_classe.Id =5;


