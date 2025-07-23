/*3 - Resumo por cliente: Escreva uma query para listar todos os clientes e o valor total de pedidos já transmitidos. 
A consulta deve retornar as colunas id, razao_social, total, ordenadas pelo total em ordem descendente.*/

SELECT 	C.id_cliente id,
        C.razao_social,
        SUM (P.valor_total) total
FROM CLIENTES C
LEFT JOIN PEDIDO P ON C.id_cliente = P.id_Cliente
GROUP BY id, razao_social
ORDER BY total DESC