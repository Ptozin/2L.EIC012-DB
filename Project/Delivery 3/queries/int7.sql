.mode columns
.headers on
.nullvalue NULL

-- Listagem dos produtos de cada loja da marca NVIDIA

select distinct Loja.idLoja as Loja, Produto.nome as Nome, Produto.descricao as Descricao, Produto.preco as Preco
from Produto, Loja
inner join Stock on (Produto.idProduto = Stock.idProduto)
where Produto.fabricante like 'NVIDIA%'
GROUP BY Loja.idLoja;
