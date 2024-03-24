.mode columns
.headers on
.nullvalue NULL

--Média de salários dos funcionários de cada loja

select idLoja, morada, cast(avg(salario) as int) as mediaSalario
from (Loja natural join LocalDeTrabalho) join Funcionario on LocalDeTrabalho.idFuncionario = Funcionario.idFuncionario
group by idLoja;
