-- Selecione as descrições dos produtos cujas unidades são quilo, litro ou metro.
SELECT	descricao, valor
FROM	produto
WHERE	unidade	IN ('KG','L','M');

-- Consulte a média dos valores de todos os produtos
SELECT	AVG(valor)
FROM	produto;

-- Consulte a média arredondada dos valores de todos os produtos para 2 casas decimais
SELECT	ROUND(AVG(valor),2)
FROM	produto;

-- Consulte a média arredondada dos valores de todos os produtos para um número inteiro.
SELECT	ROUND(AVG(valor),0)
FROM	produto;

-- Faça uma consulta da média dos valores dos produtos com unidades quilo, litro ou metro.
SELECT	ROUND(AVG(valor),2)
FROM	produto
WHERE	unidade	IN ('KG','L','M');

-- Isso acima tem nada a ver com subconsultas, mas como já fiz, vai ficar aí.

-- Faça uma subconsulta que mostre quais produtos participam em qualquer pedido cuja quantidade seja igual a 10
SELECT	p.descricao
FROM	produto p
WHERE	p.codprod IN (SELECT	i.codprod
					  FROM		itenspedido i
					  WHERE		i.quantidade = 10);

-- A mesma subconsulta, mas sem referenciar as tabelas. O PostgreSQL permite, mas acho que é uma má prática.
SELECT 	descricao
FROM	produto
WHERE	codprod IN (SELECT	codprod
					FROM	itenspedido
					WHERE	quantidade = 10);

-- Essa subconsulta pode ser feita com JOIN.
-- Obs.: no JOIN eu posso colocar colunas de ambas tabelas no SELECT superior.
SELECT	p.descricao, i.quantidade
FROM	produto p
JOIN	itenspedido i
ON 		p.codprod = i.codprod
WHERE	i.quantidade = 10;

-- Mostre quais vendedores ganham um salário abaixo da média (sem especificar as tabelas)
SELECT	nome, salariofixo
FROM	vendedor
WHERE	salariofixo < (SELECT 	ROUND(AVG(salariofixo),2)
					   FROM		vendedor);
					   
-- Mostre quais vendedores ganham um salário abaixo da média (especificando as tabelas)
SELECT	v.nome, v.salariofixo
FROM	vendedor v
WHERE	v.salariofixo < (SELECT 	ROUND(AVG(v.salariofixo),2)
						 FROM		vendedor v);

--
select * from produto;
select * from itenspedido;
select * from cliente;
select * from pedido;
select * from vendedor;

-- Slide 6.
