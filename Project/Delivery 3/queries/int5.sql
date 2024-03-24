.mode columns
.headers on
.nullvalue NULL

-- Listagem dos produtos mais comprados

select idProduto, nome, preco, sum(quantidade) as numComps
from   Produto join ProdutoCompra using(idProduto)
group by idProduto
order by numComps DESC, preco DESC
LIMIT 3;
