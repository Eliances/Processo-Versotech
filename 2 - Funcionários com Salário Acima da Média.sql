/*2 - Funcionários com Salário Acima da Média: Escreva uma query para listar os funcionários que possuem um salário acima da média 
salarial de todos os funcionários. A consulta deve mostrar as colunas id, nome, e salário, ordenadas pelo salário em ordem descendente.*/

SELECT 	V.id_vendedor id,
		V.nome,
        V.salario
FROM VENDEDORES V
WHERE V.salario >= (SELECT AVG(salario) FROM VENDEDORES)
ORDER BY V.salario DESC