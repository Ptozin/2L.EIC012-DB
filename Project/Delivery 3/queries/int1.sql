.mode columns
.headers on
.nullvalue NULL

-- Número de clientes de cada tipo (singular ou empresa)

select  (select count(*) from Cliente) as TotalClientes,
        (select count(*) from ClienteSingular) as ClientesSingular,
        (select count(*) from ClienteEmpresa) as ClientesEmpresa;
        
