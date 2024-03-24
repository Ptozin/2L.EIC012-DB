.mode columns
.header on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS updateStockAfterCompra;
DROP TRIGGER IF EXISTS removeStockAfterCompra;
DROP TRIGGER IF EXISTS checkStockBeforeCompra;
DROP TRIGGER IF EXISTS checkStockBeforeCompra_v2;