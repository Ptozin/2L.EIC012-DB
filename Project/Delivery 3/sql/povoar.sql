--
-- File generated with SQLiteStudio v3.3.3 on qua jan 26 15:52:57 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

-- Table: Horario
INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        1,
                        '2022-01-01',
                        '10:00',
                        '20:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        2,
                        '2022-01-02',
                        '10:00',
                        '20:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        3,
                        '2022-01-02',
                        '08:30',
                        '12:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        4,
                        '2022-01-02',
                        '14:00',
                        '18:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        5,
                        '2022-01-01',
                        '10:00',
                        '13:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        6,
                        '2022-01-01',
                        '13:30',
                        '20:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        7,
                        '2022-01-02',
                        '10:00',
                        '13:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        data,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        8,
                        '2022-01-02',
                        '13:30',
                        '20:00'
                    );


-- Table: Pessoa
INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       111222333,
                       'Antonio Correia',
                       913334455,
                       '2001-01-01'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       123456789,
                       'Rafael Cerqueira',
                       912345678,
                       '2001-09-08'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       240010400,
                       'Erica Silva',
                       912234455,
                       '1990-10-23'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       244334567,
                       'Pedro Moura',
                       914567890,
                       '1992-06-04'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       253509734,
                       'Carlos Silva',
                       914445566,
                       '1965-12-12'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       436783292,
                       'Joao Araujo',
                       913717812,
                       '2001-04-09'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       555666777,
                       'Juan Jesus',
                       919876543,
                       '1973-02-02'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       827347891,
                       'Raul Gillette',
                       931728371,
                       '1987-05-30'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       923783942,
                       'Sergio Costa',
                       928737384,
                       '2002-02-20'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       973467221,
                       'Daniel Couto',
                       937162738,
                       '2000-03-28'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       981237910,
                       'Pablo Esquenta',
                       937417239,
                       '1999-04-09'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       987699999,
                       'Ari Gomes',
                       954827383,
                       '2002-04-10'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       987999999,
                       'Paco Nunes',
                       944827383,
                       '2002-03-01'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       989999999,
                       'Ricardo Esteves',
                       924827383,
                       '2002-02-02'
                   );

INSERT INTO Pessoa (
                       nif,
                       nome,
                       telefone,
                       dataNascimento
                   )
                   VALUES (
                       999999999,
                       'Angel Lito',
                       934827383,
                       '2002-03-03'
                   );


-- Table: Funcionario
INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            111222333,
                            700
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            123456789,
                            700
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            253509734,
                            1200
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            436783292,
                            700
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            555666777,
                            1200
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            981237910,
                            650
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            987999999,
                            700
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            989999999,
                            1350
                        );

INSERT INTO Funcionario (
                            idFuncionario,
                            salario
                        )
                        VALUES (
                            999999999,
                            850
                        );



-- Table: HorarioFuncionario
INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   5,
                                   111222333
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   5,
                                   123456789
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   6,
                                   253509734
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   8,
                                   436783292
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   6,
                                   555666777
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   7,
                                   111222333
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   3,
                                   123456789
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   8,
                                   253509734
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   4,
                                   555666777
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   7,
                                   436783292
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   3,
                                   981237910
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   4,
                                   981237910
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   6,
                                   989999999
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   8,
                                   989999999
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   5,
                                   999999999
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   7,
                                   999999999
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   7,
                                   987999999
                               );

INSERT INTO HorarioFuncionario (
                                   idHorario,
                                   idFuncionario
                               )
                               VALUES (
                                   8,
                                   987999999
                               );


-- Table: Cliente


INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        240010400,
                        'Rua 25 de abril',
                        'ericasilva@gmail.com'
                    );

INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        244334567,
                        'rua do dragao',
                        'pedromoura@gmail.com'
                    );

INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        827347891,
                        'Rua das invasoes francesas',
                        'juanito@yahoo.net'
                    );

INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        923783942,
                        'Rua do Miradouro Sul',
                        'costasergio@hotmail.com'
                    );

INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        973467221,
                        'Rua do Cerco',
                        'elchulito@outlook.pt'
                    );

INSERT INTO Cliente (
                        idCliente,
                        morada,
                        email
                    )
                    VALUES (
                        987699999,
                        'Rua 1 de maio',
                        'notseensince2014@gmail.com'
                    );


-- Table: Empresa
INSERT INTO Empresa (
                        nifEmpresa,
                        nomeEmpresa
                    )
                    VALUES (
                        532154312,
                        'LIT'
                    );

INSERT INTO Empresa (
                        nifEmpresa,
                        nomeEmpresa
                    )
                    VALUES (
                        555678910,
                        'Aldi'
                    );

INSERT INTO Empresa (
                        nifEmpresa,
                        nomeEmpresa
                    )
                    VALUES (
                        982347923,
                        'Scammerino'
                    );


-- Table: ClienteEmpresa
INSERT INTO ClienteEmpresa (
                               idCliente,
                               nifEmpresa
                           )
                           VALUES (
                               973467221,
                               982347923
                           );

INSERT INTO ClienteEmpresa (
                               idCliente,
                               nifEmpresa
                           )
                           VALUES (
                               244334567,
                               555678910
                           );

INSERT INTO ClienteEmpresa (
                               idCliente,
                               nifEmpresa
                           )
                           VALUES (
                               987699999,
                               532154312
                           );


-- Table: ClienteSingular
INSERT INTO ClienteSingular (
                                idCliente
                            )
                            VALUES (
                                240010400
                            );

INSERT INTO ClienteSingular (
                                idCliente
                            )
                            VALUES (
                                244334567
                            );

INSERT INTO ClienteSingular (
                                idCliente
                            )
                            VALUES (
                                923783942
                            );


-- Table: Categoria
INSERT INTO Categoria (
                          idCategoria,
                          nome
                      )
                      VALUES (
                          1,
                          'Imagem'
                      );

INSERT INTO Categoria (
                          idCategoria,
                          nome
                      )
                      VALUES (
                          2,
                          'Som'
                      );

INSERT INTO Categoria (
                          idCategoria,
                          nome
                      )
                      VALUES (
                          3,
                          'Componentes'
                      );

INSERT INTO Categoria (
                          idCategoria,
                          nome
                      )
                      VALUES (
                          4,
                          'Computadores'
                      );

INSERT INTO Categoria (
                          idCategoria,
                          nome
                      )
                      VALUES (
                          5,
                          'Perifericos'
                      );


-- Table: Produto
INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        1,
                        'Asus Gladius II',
                        'Rato Gaming 16000 DPI',
                        29,
                        'ASUS',
                        5
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        2,
                        'RTX 3070ti FE',
                        '8gb GDDR6X, 275w TDP',
                        150,
                        'NVIDIA',
                        3
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        3,
                        'GoPro HERO 10',
                        'Camara de acao',
                        379,
                        'GoPro',
                        1
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        4,
                        'Coluna bluetooth',
                        '15w, 10h autonomia, Bluetooth 4.2',
                        69,
                        'JBL',
                        2
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        5,
                        'Computador Gaming i7 RTX 3060',
                        'i7 10700k, 16Gb ram, RTX 3060, SSD 500GB, Fonte 650w 80+',
                        1879.9,
                        'ASUS',
                        4
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        6,
                        'Logitech G502 SE',
                        'Rato Gaming 16000 DPI',
                        39.9,
                        'Logitech',
                        5
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        7,
                        'RX 6600XT WindForce 3x',
                        '8gb GDDR6, 160w TDP',
                        439,
                        'Gigabyte',
                        3
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        8,
                        'MSI Monitor 165hz IPS',
                        '1920x1080, 165hz, IPS, HDMI',
                        189.99,
                        'MSI',
                        1
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        9,
                        'Subwoofer 100w',
                        '100w, Bluetooth 5.0',
                        330,
                        'JBL',
                        2
                    );

INSERT INTO Produto (
                        idProduto,
                        nome,
                        descricao,
                        preco,
                        fabricante,
                        idCategoria
                    )
                    VALUES (
                        10,
                        'Computador Gaming ryzen 5 RX 6600',
                        'ryzen 5 5600x, 16Gb ram, RX 6600, SSD 500GB, Fonte 650w 80+',
                        1249.99,
                        'HP',
                        4
                    );


-- Table: Loja
INSERT INTO Loja (
                     idLoja,
                     telefone,
                     morada,
                     idGerente
                 )
                 VALUES (
                     1,
                     252909009,
                     'Rua Fernao Magalhaes',
                     253509734
                 );

INSERT INTO Loja (
                     idLoja,
                     telefone,
                     morada,
                     idGerente
                 )
                 VALUES (
                     2,
                     253912389,
                     'Rua Joao Freitas Branco',
                     555666777
                 );

INSERT INTO Loja (
                     idLoja,
                     telefone,
                     morada,
                     idGerente
                 )
                 VALUES (
                     3,
                     251098890,
                     'Rua Dr. Antonio Bernadino',
                     989999999
                 );


-- Table: HorarioLoja
INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            1,
                            2
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            1,
                            1
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            4,
                            2
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            3,
                            2
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            2,
                            1
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            1,
                            3
                        );

INSERT INTO HorarioLoja (
                            idHorario,
                            idLoja
                        )
                        VALUES (
                            2,
                            3
                        );


-- Table: LocalDeTrabalho
INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                111222333,
                                1
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                123456789,
                                2
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                253509734,
                                1
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                436783292,
                                1
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                555666777,
                                2
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                981237910,
                                2
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                999999999,
                                3
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                989999999,
                                3
                            );

INSERT INTO LocalDeTrabalho (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                987999999,
                                3
                            );


-- Table: Stock
INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      1,
                      1,
                      10
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      2,
                      1,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      3,
                      1,
                      13
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      4,
                      1,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      5,
                      1,
                      4
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      6,
                      1,
                      5
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      7,
                      1,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      8,
                      1,
                      13
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      9,
                      1,
                      6
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      10,
                      1,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      1,
                      2,
                      9
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      2,
                      2,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      3,
                      2,
                      19
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      4,
                      2,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      5,
                      2,
                      4
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      6,
                      2,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      7,
                      2,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      8,
                      2,
                      7
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      9,
                      2,
                      4
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      10,
                      2,
                      4
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      1,
                      3,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      2,
                      3,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      3,
                      3,
                      2
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      4,
                      3,
                      1
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      6,
                      3,
                      5
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      8,
                      3,
                      3
                  );

INSERT INTO Stock (
                      idProduto,
                      idLoja,
                      quantidade
                  )
                  VALUES (
                      10,
                      3,
                      5
                  );


-- Table: EncomendaStock
INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               1,
                               1,
                               10,
                               3
                           );

INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               2,
                               2,
                               5,
                               5
                           );

INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               3,
                               1,
                               1,
                               3
                           );

INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               4,
                               2,
                               6,
                               5
                           );

INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               5,
                               3,
                               1,
                               3
                           );

INSERT INTO EncomendaStock (
                               idEncomenda,
                               idLoja,
                               idProduto,
                               quantidade
                           )
                           VALUES (
                               6,
                               3,
                               4,
                               5
                           );


-- Table: Compra
INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       1,
                       '2022-01-01',
                       '10:39',
                       1,
                       111222333,
                       240010400,
                       1908.9
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       2,
                       '2022-01-01',
                       '12:00',
                       2,
                       123456789,
                       244334567,
                       379.89
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       3,
                       '2022-01-01',
                       '15:24',
                       1,
                       253509734,
                       827347891,
                       660.0
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       4,
                       '2022-01-01',
                       '16:56',
                       2,
                       555666777,
                       923783942,
                       947.0
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       5,
                       '2022-01-01',
                       '17:31',
                       1,
                       253509734,
                       973467221,
                       1399.99
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       6,
                       '2022-01-02',
                       '09:32',
                       2,
                       123456789,
                       244334567,
                       508.0
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       7,
                       '2022-01-02',
                       '10:51',
                       1,
                       111222333,
                       240010400,
                       468.0
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       8,
                       '2022-01-02',
                       '12:22',
                       2,
                       981237910,
                       923783942,
                       787.0
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       9,
                       '2022-01-02',
                       '18:50',
                       1,
                       436783292,
                       827347891,
                       229.89
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       10,
                       '2022-01-02',
                       '17:30',
                       2,
                       981237910,
                       923783942,
                       947.99
                   );

INSERT INTO Compra (
                       idCompra,
                       dataCompra,
                       horaCompra,
                       idLoja,
                       idFuncionario,
                       idCliente,
                       preco
                   )
                   VALUES (
                       11,
                       '2022-01-02',
                       '17:32',
                       3,
                       989999999,
                       244334567,
                       98.0
                   );


-- Table: Expedicao
INSERT INTO Expedicao (
                          idExpedicao,
                          dataEnvio,
                          horaEnvio,
                          portes,
                          idCompra,
                          idFuncionario,
                          dataCompra,
                          horaCompra
                      )
                      VALUES (
                          1,
                          '2022-01-02',
                          '12:00',
                          3.5,
                          1,
                          111222333,
                          '2022-01-01',
                          '10:39'
                      );

INSERT INTO Expedicao (
                          idExpedicao,
                          dataEnvio,
                          horaEnvio,
                          portes,
                          idCompra,
                          idFuncionario,
                          dataCompra,
                          horaCompra
                      )
                      VALUES (
                          2,
                          '2022-01-02',
                          '12:00',
                          3.5,
                          7,
                          111222333,
                          '2022-01-02',
                          '10:51'
                      );

INSERT INTO Expedicao (
                          idExpedicao,
                          dataEnvio,
                          horaEnvio,
                          portes,
                          idCompra,
                          idFuncionario,
                          dataCompra,
                          horaCompra
                      )
                      VALUES (
                          3,
                          '2022-01-02',
                          '12:00',
                          3.5,
                          6,
                          981237910,
                          '2022-01-02',
                          '09:32'
                      );


-- Table: ProdutoCompra
INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              1,
                              1,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              2,
                              2,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              6,
                              2,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              4,
                              4,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              10,
                              5,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              7,
                              6,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              1,
                              7,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              3,
                              8,
                              2
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              8,
                              9,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              8,
                              10,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              5,
                              1,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              8,
                              2,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              9,
                              3,
                              2
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              7,
                              4,
                              2
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              2,
                              5,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              4,
                              6,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              7,
                              7,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              1,
                              8,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              6,
                              9,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              3,
                              10,
                              2
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              1,
                              11,
                              1
                          );

INSERT INTO ProdutoCompra (
                              idProduto,
                              idCompra,
                              quantidade
                          )
                          VALUES (
                              4,
                              11,
                              1
                          );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
