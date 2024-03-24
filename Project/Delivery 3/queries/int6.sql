.mode columns
.headers on
.nullvalue NULL

--Clientes responsáveis pelas 3 compras mais caras

Select Cliente.idCliente, Pessoa.nome as Nome, Compra.preco as Preco, idLoja as Loja
FROM Cliente, Produto, Compra, ProdutoCompra, Pessoa
WHERE (Cliente.idCliente = Compra.idCliente
        AND Cliente.idCliente = Pessoa.nif)
group by nif
ORDER BY Compra.preco DESC 
limit 3;
