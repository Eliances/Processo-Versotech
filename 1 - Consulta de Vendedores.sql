/*1- Consulta de Vendedores: Escreva uma query para listar todos os vendedores ativos, mostrando as colunas id, nome, salario. 
Ordene o resultado pelo nome em ordem ascendente.*/

SELECT 	V.id_vendedor id,
	    V.nome,
        V.salario 
FROM VENDEDORES V
WHERE V.inativo = 'f'
ORDER BY nome ASC