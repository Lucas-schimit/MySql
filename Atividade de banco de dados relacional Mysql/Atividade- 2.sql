create database db_E_Commercer;

use db_E_Commercer;

create table tb_produtos( 
id_produto bigint auto_increment,
produto varchar(255) not null, 
valor float not null, 
descricaoProduto varchar(255) not null, 
quantidade bigint not null,
primary key(id_produto));

select * from tb_produtos; 

insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("bolacha",3.50,"Negresco", 50);
        
 insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Coca-Cola",501,"Refrigerante", 100);   
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Pão",1000,"Massa", 200);   
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Salsicha",13.50,"Processado", 1000);  
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Batata",2500,"Verdura", 1200);         
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Tomate",2000,"Verdura", 4);   
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Pimentão",100,"Verdura", 10);   
        
insert into tb_produtos(produto,valor, descricaoProduto, quantidade)
		values("Panceta",1000,"Carne", 2);   
        
select * from tb_produtos where valor> 500;

select * from tb_produtos where valor<500;

update tb_produtos set valor = 35 where id_produto = 4;