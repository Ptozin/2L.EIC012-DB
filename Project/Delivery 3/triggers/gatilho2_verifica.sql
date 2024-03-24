.mode columns
.headers on
.null value NULL
PRAGMA foreign_keys = ON;

.print ''
.print 'Existem os seguintes produtos na loja 3:'
.print ''

select idLoja, idProduto, nome, quantidade, preco
from Stock natural join Produto
where idLoja = 3;

.print ''
.print 'Na loja vai se inserir uma nova compra:'
.print ''

INSERT INTO Compra values(12, '2022-01-02', '17:39', 3, 989999999, 244334567, 0);

select idLoja, idCompra, preco
from Compra 
where idLoja = 3;

.print ''
.print 'Insere-se o produto 3 à compra com id 12:'
.print ''

INSERT INTO ProdutoCompra values(3, 12, 1);

.print ''
.print 'O preco da compra com id 12 é atualizado:'
.print ''

select idLoja, idCompra, preco
from Compra 
where idLoja = 3;

.print ''
.print 'Insere-se 2 unidades do produto 8 à compra:'
.print ''

INSERT INTO ProdutoCompra values(8, 12, 2);

.print ''
.print 'O preco da compra é atualizado:'
.print ''

select idLoja, idCompra, preco
from Compra 
where idLoja = 3;

.print ''
.print 'Retira-se o produto 8 da compra:'
.print ''

DELETE FROM ProdutoCompra WHERE idCompra = 12 AND idProduto = 8;

.print ''
.print 'O preco da compra é atualizado:'
.print ''

select idLoja, idCompra, preco
from Compra 
where idLoja = 3;

