/*5 - Produtos mais vendidos: Escreva uma query que retorne o produto mais vendido ( em quantidade ), incluindo o valor total vendido 
deste produto, quantidade de pedidos em que ele apareceu e para quantos clientes diferentes ele foi vendido. A consulta deve retornar 
as colunas id_produto, quantidade_vendida, total_vendido, clientes, pedidos. Caso haja empate em quantidade de vendas, utilizar o total 
vendido como critério de desempate.*/

SELECT	IP.id_produto,
        SUM (IP.quantidade) quantidade_vendida,
        SUM ((IP.quantidade)* IP.preco_praticado) total_vendido,
        COUNT (IP.*) pedidos,
        COUNT (DISTINCT (P.id_cliente)) clientes
FROM ITENS_PEDIDO IP
LEFT JOIN PEDIDO P ON IP.id_pedido = P.id_pedido 
GROUP BY IP.id_produto
ORDER BY pedidos DESC
LIMIT 1