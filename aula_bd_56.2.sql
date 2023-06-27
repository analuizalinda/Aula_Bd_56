SET SQL_SAFE_UPDATES = 0;

DELETE FROM funcionarios;

#contagem de funcionarios por departamentos 
select id_departamento, count(*) as total_funcionarios
from funcionarios 
group by id_departamento;

select id_departamento, count(*) as total_funcionarios 
from funcionarios 
where salario>10000 
group by id_departamento;

select id_departamento, count(*) as total_funcionarios 
from funcionarios 
where salario between 5000 and 10000
group by id_departamento;