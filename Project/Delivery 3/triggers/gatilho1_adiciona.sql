.mode columns
.headers on
.null value NULL
PRAGMA foreign_keys = ON;


-- Ao adicionar um produto a uma compra, retira quantidade do stock da loja (se stock restante > 0)
CREATE TRIGGER IF NOT EXISTS updateStockAfterCompra
AFTER INSERT ON ProdutoCompra
FOR EACH ROW
WHEN (select (quantidade - NEW.quantidade) from Stock 
      where idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra)) > 0
BEGIN
    UPDATE Stock
    SET quantidade = quantidade - NEW.quantidade
    WHERE (idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra));
END;



-- Ao adicionar um produto a uma compra, retira o produto do stock da loja (se stock final igualar 0)
CREATE TRIGGER IF NOT EXISTS removeStockAfterCompra
AFTER INSERT ON ProdutoCompra
FOR EACH ROW
WHEN (select (quantidade - NEW.quantidade) from Stock 
      where idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra)) == 0
BEGIN
    DELETE FROM Stock
    WHERE (idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra));
END;



-- Verifica, quando se adiciona um produto a uma compra, se esse produto esta disponivel na loja
CREATE TRIGGER IF NOT EXISTS checkStockBeforeCompra
AFTER INSERT ON ProdutoCompra
FOR EACH ROW
WHEN NOT EXISTS (select * from Stock 
      where (idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra)))
BEGIN
    SELECT RAISE(ROLLBACK, 'O produto nao esta disponivel na loja');
END;

-- Verifica, quando se adiciona um produto a uma compra, se esse produto esta disponivel na loja
CREATE TRIGGER IF NOT EXISTS checkStockBeforeCompra_v2
AFTER INSERT ON ProdutoCompra
FOR EACH ROW
WHEN (select (quantidade - NEW.quantidade) from Stock 
      where idProduto = NEW.idProduto AND
      idLoja = (select idLoja from Compra
                where idCompra = NEW.idCompra)) < 0
BEGIN
    SELECT RAISE(ROLLBACK, 'Quantidade invalida');
END;