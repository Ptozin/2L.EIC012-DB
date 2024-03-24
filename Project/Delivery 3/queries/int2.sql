.mode columns
.headers on
.nullvalue NULL

-- Número de horas que cada funcionário trabalhou desde o ano de 2022

select Funcionario.idFuncionario, nome, salario,  sum(abs( strftime('%s', horaFim) - strftime('%s', horaInicio ))) / 3600 as numHoras
from (Funcionario join HorarioFuncionario on Funcionario.idFuncionario = nif) natural join Horario natural join Pessoa
where (Funcionario.idFuncionario = HorarioFuncionario.idFuncionario AND  strftime('%J', Horario.data) >= 2459580) -- 2022-01-01 em formato julian day
group by nif
order by salario DESC;
