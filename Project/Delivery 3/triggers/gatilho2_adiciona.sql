.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- ao adicionar um produto de uma compra, o preco do produto é acrescentado à compra

CREATE TRIGGER IF NOT EXISTS adicionaPrecoCompra
AFTER INSERT ON ProdutoCompra
FOR EACH ROW
BEGIN
    UPDATE Compra
    SET preco = preco + (select Produto.preco*NEW.quantidade from ProdutoCompra natural join Produto where idProduto = NEW.idProduto)
    WHERE idCompra = new.idCompra;
END;


-- ao remover um produto de uma compra, o preco do produto é retirado à compra
CREATE TRIGGER IF NOT EXISTS retiraPrecoCompra
AFTER DELETE ON ProdutoCompra
FOR EACH ROW
BEGIN
    UPDATE Compra
    SET preco = preco - (select preco*old.quantidade from ProdutoCompra natural join Produto where idProduto = old.idProduto)
    WHERE idCompra = old.idCompra;
END;