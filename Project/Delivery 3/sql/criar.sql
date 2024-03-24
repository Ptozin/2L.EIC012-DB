--
-- File generated with SQLiteStudio v3.3.3 on qua jan 22 15:53:57 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

-- Table: Horario
DROP TABLE IF EXISTS Horario;

CREATE TABLE Horario (
    idHorario  INTEGER PRIMARY KEY,
    data       DATE    NOT NULL,
    horaInicio TIME    NOT NULL,
    horaFim    TIME    NOT NULL,
    CONSTRAINT Unique_horario UNIQUE (
        data,
        horaInicio,
        horaFim
    ),
    CONSTRAINT fim_posterior_inicio CHECK (horaFim > horaInicio) 
);


-- Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    nif            INTEGER PRIMARY KEY,
    nome           TEXT    NOT NULL,
    telefone       INTEGER NOT NULL,
    dataNascimento DATE    NOT NULL
);


-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario (
    idFuncionario INTEGER PRIMARY KEY
                          REFERENCES Pessoa (nif) ON DELETE CASCADE
                                                  ON UPDATE CASCADE,
    salario       INTEGER NOT NULL
                          CONSTRAINT check_salario CHECK (salario > 0) 
);


-- Table: HorarioFuncionario
DROP TABLE IF EXISTS HorarioFuncionario;

CREATE TABLE HorarioFuncionario (
    idHorario     INTEGER REFERENCES Horario (idHorario) ON DELETE CASCADE
                                                         ON UPDATE CASCADE,
    idFuncionario INTEGER REFERENCES Funcionario (idFuncionario) ON DELETE CASCADE
                                                                 ON UPDATE CASCADE,
    CONSTRAINT pk PRIMARY KEY (
        idHorario,
        idFuncionario
    )
);


-- Table: Cliente
DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente (
    idCliente INTEGER PRIMARY KEY
                      REFERENCES Pessoa (nif) ON DELETE CASCADE
                                              ON UPDATE CASCADE,
    morada    TEXT    NOT NULL,
    email     TEXT    NOT NULL
);


-- Table: Empresa
DROP TABLE IF EXISTS Empresa;

CREATE TABLE Empresa (
    nifEmpresa  INTEGER PRIMARY KEY,
    nomeEmpresa TEXT    NOT NULL
);


-- Table: ClienteEmpresa
DROP TABLE IF EXISTS ClienteEmpresa;

CREATE TABLE ClienteEmpresa (
    idCliente  INTEGER REFERENCES Cliente (idCliente) ON DELETE CASCADE
                                                      ON UPDATE CASCADE,
    nifEmpresa INTEGER REFERENCES Empresa (nifEmpresa) ON DELETE CASCADE
                                                       ON UPDATE CASCADE,
    PRIMARY KEY (
        idCliente,
        nifEmpresa
    )
);


-- Table: ClienteSingular
DROP TABLE IF EXISTS ClienteSingular;

CREATE TABLE ClienteSingular (
    idCliente INTEGER PRIMARY KEY
                    REFERENCES Cliente (idCliente) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
);


-- Table: Categoria
DROP TABLE IF EXISTS Categoria;

CREATE TABLE Categoria (
    idCategoria INTEGER PRIMARY KEY,
    nome        TEXT    NOT NULL
);


-- Table: Produto
DROP TABLE IF EXISTS Produto;

CREATE TABLE Produto (
    idProduto   INTEGER PRIMARY KEY,
    nome        TEXT    NOT NULL,
    descricao   TEXT    NOT NULL,
    preco       INTEGER NOT NULL
                        CONSTRAINT ck_preco CHECK (preco > 0),
    fabricante  TEXT    NOT NULL,
    idCategoria INTEGER REFERENCES Categoria (idCategoria) ON DELETE CASCADE
                                                           ON UPDATE CASCADE
);


-- Table: Loja
DROP TABLE IF EXISTS Loja;

CREATE TABLE Loja (
    idLoja    INTEGER PRIMARY KEY,
    telefone  INTEGER UNIQUE
                      NOT NULL,
    morada    STRING  UNIQUE
                      NOT NULL,
    idGerente INTEGER UNIQUE
                      NOT NULL
                      REFERENCES Funcionario (idFuncionario) ON DELETE CASCADE
                                                             ON UPDATE CASCADE
);


-- Table: HorarioLoja
DROP TABLE IF EXISTS HorarioLoja;

CREATE TABLE HorarioLoja (
    idHorario INTEGER REFERENCES Horario (idHorario) ON DELETE CASCADE
                                                     ON UPDATE CASCADE,
    idLoja    INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                               ON UPDATE CASCADE
);


-- Table: LocalDeTrabalho
DROP TABLE IF EXISTS LocalDeTrabalho;

CREATE TABLE LocalDeTrabalho (
    idFuncionario INTEGER REFERENCES Funcionario (idFuncionario) ON DELETE CASCADE
                                                                 ON UPDATE CASCADE,
    idLoja        INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                                   ON UPDATE CASCADE,
    CONSTRAINT pk PRIMARY KEY (
        idFuncionario,
        idLoja
    )
);


-- Table: Stock
DROP TABLE IF EXISTS Stock;

CREATE TABLE Stock (
    idProduto  INTEGER REFERENCES Produto (idProduto) ON DELETE CASCADE
                                                      ON UPDATE CASCADE,
    idLoja     INTEGER REFERENCES Loja (idLoja),
    quantidade INTEGER CHECK (quantidade >= 0),
    PRIMARY KEY (
        idProduto,
        idLoja
    )
);


-- Table: EncomendaStock
DROP TABLE IF EXISTS EncomendaStock;

CREATE TABLE EncomendaStock (
    idEncomenda INTEGER PRIMARY KEY,
    idLoja      INTEGER,
    idProduto   INTEGER REFERENCES Produto (idProduto) ON DELETE CASCADE
                                                       ON UPDATE CASCADE,
    quantidade  INTEGER NOT NULL
                        CHECK (quantidade > 0) 
);


-- Table: Compra
DROP TABLE IF EXISTS Compra;

CREATE TABLE Compra (
    idCompra      INTEGER PRIMARY KEY AUTOINCREMENT,
    dataCompra    DATE    NOT NULL,
    horaCompra    TIME    NOT NULL,
    idLoja        INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                                   ON UPDATE CASCADE,
    idFuncionario INTEGER REFERENCES Funcionario (idFuncionario) ON DELETE CASCADE
                                                                 ON UPDATE CASCADE,
    idCliente     INTEGER REFERENCES Cliente (idCliente) ON DELETE CASCADE
                                                         ON UPDATE CASCADE,
    preco         REAL    NOT NULL,
    UNIQUE (
        idCompra,
        dataCompra,
        horaCompra
    )
);


-- Table: Expedicao
DROP TABLE IF EXISTS Expedicao;

CREATE TABLE Expedicao (
    idExpedicao   INTEGER PRIMARY KEY,
    dataEnvio     DATE    NOT NULL,
    horaEnvio     TIME    NOT NULL,
    portes        INTEGER NOT NULL
                          CHECK (portes > 0),
    idCompra      INTEGER,
    idFuncionario INTEGER REFERENCES Funcionario (idFuncionario) ON DELETE CASCADE
                                                                 ON UPDATE CASCADE,
    dataCompra    DATE,
    horaCompra    TIME,
    CHECK ( ( (dataEnvio > dataCompra) OR 
              (dataEnvio = dataCompra AND 
               horaEnvio > horaCompra) ) ),
    FOREIGN KEY (
        idCompra,
        dataCompra,
        horaCompra
    )
    REFERENCES Compra (idCompra,
    dataCompra,
    horaCompra) 
);


-- Table: ProdutoCompra
DROP TABLE IF EXISTS ProdutoCompra;

CREATE TABLE ProdutoCompra (
    idProduto  INTEGER REFERENCES Produto (idProduto) ON DELETE CASCADE
                                                      ON UPDATE CASCADE,
    idCompra   INTEGER REFERENCES Compra (idCompra) ON DELETE CASCADE
                                                    ON UPDATE CASCADE,
    quantidade INTEGER NOT NULL
                       CHECK (quantidade > 0),
    PRIMARY KEY (
        idProduto,
        idCompra
    )
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
