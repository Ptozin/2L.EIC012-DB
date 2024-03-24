.mode columns
.headers on
.null value NULL
PRAGMA foreign_keys = ON;

.print ''
.print 'Existem os seguintes funcionarios na empresa:'
.print ''

SELECT nif, salario, dataNascimento, cast((strftime('%J', 'now') - strftime('%J', dataNascimento))/365 as int) as Idade 
FROM Funcionario natural join Pessoa
WHERE  nif = idFuncionario;

.print ''
.print 'Insere-se as 2 seguintes pessoas:'
.print ''

INSERT INTO Pessoa values (1, 'Bruno G.', 123456123,'2007-01-01');
INSERT INTO Pessoa values (2, 'Ne Nelson', 321123312 ,'2000-01-01');

.print ''
.print 'As pessoas inseridas têm as seguintes idades:'
.print ''

SELECT nif, nome, cast((strftime('%J', 'now') - strftime('%J', dataNascimento))/365 as int) as Idade
FROM Pessoa WHERE (nif = 1 OR nif = 2);

.print ''
.print 'Pretende-se tornar Bruno G. um funcionário:'
.print ''

INSERT INTO Funcionario values (1, 666);

.print ''
.print 'Verifica-se que não foi inserido como funcionário'
.print ''

SELECT nif, salario, dataNascimento, cast((strftime('%J', 'now') - strftime('%J', dataNascimento))/365 as int) as Idade 
FROM Funcionario natural join Pessoa
WHERE  nif = idFuncionario;

.print ''
.print 'Pretende-se tornar Ne Nelson um funcionário:'
.print ''

INSERT INTO Funcionario values (2, 666);

.print ''
.print 'Verifica-se que foi inserido como funcionário:'
.print ''

SELECT nif, salario, dataNascimento, cast((strftime('%J', 'now') - strftime('%J', dataNascimento))/365 as int) as Idade 
FROM Funcionario natural join Pessoa
WHERE  nif = idFuncionario;

.print ''
.print 'Pretende-se mudar a data de nascimento de Ne Nelson:'
.print ''

UPDATE Pessoa SET dataNascimento = '2007-01-01' WHERE nif = 2;

.print ''
.print 'Verifica-se que foi não é possível fazer a alteração dado que teria idade inferior a 18'
.print ''

SELECT nif, salario, dataNascimento, cast((strftime('%J', 'now') - strftime('%J', dataNascimento))/365 as int) as Idade 
FROM Funcionario natural join Pessoa
WHERE  nif = idFuncionario;