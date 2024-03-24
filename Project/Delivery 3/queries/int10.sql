.mode columns
.headers on
.nullvalue NULL

-- Qual o número realizado de compras e o valor total gasto por cada cliente 

select Cliente.idCliente, nome as Nome, count(Compra.idCliente) as numCompras, sum(Compra.preco) as valorTotal
from Cliente, Pessoa inner join Compra on (Cliente.idCliente = Compra.idCliente AND Cliente.idCliente = Pessoa.nif)
group by Cliente.idCliente

UNION 

select idCliente, (select nome from Pessoa where nif = idCliente) as Nome, 0 as numCompras, 0 as valorTotal
from Cliente
where not exists (  
    select * from compra
    where (idCliente = Cliente.idCliente)
    group by idCliente
)
group by idCliente

order by numCompras desc, valortotal desc;

