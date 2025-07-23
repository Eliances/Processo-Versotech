/*4 - Situação por pedido: Escreva uma query que retorne a situação atual de cada pedido da base. A consulta deve retornar as colunas 
id, valor, data e situacao. A situacao deve obedecer a seguinte regra: 
Se possui data de cancelamento preenchido: CANCELADO
Se possui data de faturamento preenchido: FATURADO
Caso não possua data de cancelamento e nem faturamento: PENDENTE*/
SELECT 	P.id_pedido id,
		P.valor_total valor,
        P.data_emissao data,
        CASE
        	WHEN P.data_cancelamento IS NOT NULL THEN 'CANCELADO'
            ELSE (CASE
                  	WHEN P.data_faturamento IS NOT NULL THEN 'FATURADO'
                  	ELSE 'PENDENTE'
                 END)
		END AS situacao
FROM PEDIDO P