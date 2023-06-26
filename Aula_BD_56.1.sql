#criar tabela do banco de dados
create table departamentos(
id int,
nome varchar(60),
primary key(id)
);

insert into departamentos 
values 
(1, 'financeiro'),
(2, 'vendas'),
(3, 'desenvolvimento de produtos'),
(4, 'ti'),
(5,'juridico'),
(6,'qualidade'),
(7,'administração'),
(8,'atendimento ao cliente'),
(9,'recursos humanos'),
(10,'markenting'),
(11,'produção'),
(12,'executivo'),
(13,'gerente financeiro'),
(14,'gerente marketing'),
(15,'gerente de produção');


#alteiração da tabela funcionários,
#adicionando a coluna id_departamento como chave estrangeira 
#fazendo referÊncia a tabela departamento
ALTER TABLE funcionarios
ADD COLUMN id_departamento INT,
ADD CONSTRAINT fk_funcionarios_departamentos
FOREIGN KEY (id_departamento) REFERENCES departamentos(id);

#selecionando todos os funcionarios
select * from funcionarios; 

#atualizando os funcionarios para o departamento de financeiro
update funcionarios
set id_departamento = 1
where id = 1;

select * from funcionarios where id = 1;

#atualizando os funcionarios 2 3 ou 4 para o departamento de vendas 
update funcionarios
set id_departamento = 2
where id = 2 or id = 3 or id = 4 or id = 5;
 
#atualizando os funcionarios 6 7 8 ou 9 para o departamento de ti
update funcionarios 
set id_departamento = 4 
where id = 6 or id = 7 or id = 8 or id = 9;

#atualizando os funcionarios 10 11 12 ou 13 para o departamento de juridico
update funcionarios 
set id_departamento = 5 
where id = 10 or id = 11 or id = 12 or id = 13;

#atualizando os funcionarios 14 15 16 ou 17 para o departamento de recursos humanos 
update funcionarios 
set id_departamento = 9
where id = 14 or id = 15 or id = 16 or id = 17;

#descobindo id do funcionario com maior salários
select * from funcionarios order by salario desc;

#atualiza o funcionario com o maior salario para departamento "executivo"
update funcionarios 
set id_departamento = 12
where id = 44;

#atualiza o funcionario com o maior salario para departamento 'gerente financeiro'
update funcionarios 
set id_departamento = 13 
where id 
