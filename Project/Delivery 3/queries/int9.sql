.mode columns
.headers on
.nullvalue NULL

-- Qual o valor total de vendas por loja

select idLoja, Morada, sum(preco) as Vendas
from Loja JOIN Compra using(idLoja)
group by idLoja
order by idLoja ASC;
