.mode columns
.headers on
.null value NULL
PRAGMA foreign_keys = ON;

INSERT INTO Compra values (20, '2022-01-01', '10:40', 1, 111222333, 240010400, 0);

.print ''
.print 'Foi introduzido a seguinte compra:'
.print ''

select idCompra, idLoja, idCliente
from Compra
where idCompra = 20;

.print ''
.print 'A loja no qual a compra fora registada tem os seguintes produtos:'
.print ''

select idLoja, idProduto, nome, quantidade
from Stock natural join Produto
where idLoja = 1;

.print ''
.print 'Vamos tentar adicionar o produto 4 à compra:'
.print ''

INSERT INTO ProdutoCompra values (4, 20, 1);

.print ''
.print 'Stock corrente dos produtos na loja:'
.print ''

select idLoja, idProduto, nome, quantidade
from Stock natural join Produto
where idLoja = 1;
.print ''
.print 'Como se pode observar, a quantidade do produto decrementou em 1'
.print ''

.print ''
.print 'Vamos tentar adicionar 2 unidades do produto 7 à compra:'
.print ''

INSERT INTO ProdutoCompra values (7, 20, 2);

.print ''
.print 'Stock corrente dos produtos na loja:'
.print ''

select idLoja, idProduto, nome, quantidade
from Stock natural join Produto
where idLoja = 1;
.print ''
.print 'Como se pode observar, a loja ja nao tem stock disponível do produto'
.print ''

.print ''
.print 'Vamos tentar adicionar 8 unidades do produto 6 à compra:'
.print ''

INSERT INTO ProdutoCompra values (6, 20, 8);

.print ''
.print 'Podemos confirmar que o produto nao foi adicionado à compra:'
.print ''

select * 
from ProdutoCompra
where idCompra = 20; 
