.mode columns
.headers on
.nullvalue NULL

-- Qual o valor total do stock, o número de unidades distintas, o custo unitário médio e 
-- o valor do produto mais caro e do mais barato disponível em cada loja

SELECT SUM(preco*quantidade) Total,
COUNT(quantidade) as Quantidade, AVG(preco) as Media, MIN(preco) "Produto mais barato",
MAX(preco) "Produto mais caro" 
FROM Produto, Stock
WHERE(Produto.idProduto = Stock.idProduto AND quantidade > 0)
group by idLoja;