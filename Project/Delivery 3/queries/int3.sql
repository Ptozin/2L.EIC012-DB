.mode columns
.headers on
.nullvalue NULL

-- Listagem dos produtos de cada loja que necessitam de restock 
-- (<=2 unidades disponíveis ou simplesmente não existem na loja)

select idProduto, nome, idLoja, quantidade 
from Produto natural join Stock natural join Loja
where quantidade <= 2

UNION

select idProduto, nome, idLoja, 0 as quantidade
from Produto, Loja
where not exists (  select idProduto
                    from Stock
                    where Produto.idProduto = Stock.idProduto and
                    Loja.idLoja = Stock.idLoja)

order by idLoja, quantidade;
