.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS InsertFuncionario
BEFORE INSERT ON Funcionario
FOR EACH ROW
WHEN (strftime('%J', 'now') - strftime('%J', (select dataNascimento FROM Pessoa WHERE nif = NEW.idFuncionario))) < 6570
BEGIN
    SELECT RAISE(ROLLBACK, "Funcionario necessita de ter idade igual ou superior a 18 anos!");
END;




CREATE TRIGGER IF NOT EXISTS UpdateIdade
BEFORE UPDATE OF dataNascimento ON Pessoa
FOR EACH ROW
WHEN (EXISTS (select * from Funcionario where idFuncionario = NEW.nif)) AND (strftime('%J', 'now') - 
(strftime('%J', (select new.dataNascimento FROM Pessoa WHERE nif = NEW.nif))) < 6570)
BEGIN
    SELECT RAISE(ROLLBACK, "Funcionario necessita de ter idade igual ou superior a 18 anos!");
END;
 