-- Aula 02: exemplos simples do comando SELECT
-- [BD Pedidos]

/* 
========== ========== ========== ========== ==========
Selecione o número, o código e a quantidade de produtos do pedido,
cuja quantidade seja maior que 20 
========== ========== ========== ========== ==========
*/
-- Percebe-se que dá para fazer um select ignorando um comentário, o que faz sentido sim.
SELECT	numped --, codprod, quantidade
FROM	itenspedido
WHERE	quantidade > 20;

/*
E o select abaixo, apesar de ter especificado as colunas, selecionou todas as colunas da tabela.
Ou seja, teve a mesma consequência de um SELECT * FROM.
*/
SELECT	numped, codprod, quantidade
FROM	itenspedido
WHERE	quantidade > 20;

/* 
========== ========== ========== ========== ==========
Selecione a descrição do produto, cuja unidade
é KG e o valor é maior que 9
========== ========== ========== ========== ========== 
*/

SELECT	descricao
FROM	produto
WHERE	unidade = 'KG' AND valor > 9;

/* 
========== ========== ========== ========== ==========
Selecione o código e a descrição do produto, cujo valor
esteja entre 5 e 15.5
========== ========== ========== ========== ========== 
*/
SELECT	codprod, descricao
FROM	produto
WHERE	valor BETWEEN 5 AND 15.5;

/* 
========== ========== ========== ========== ==========
Selecione o nome do vendedor cuja faixa de comissão
seja A ou B
========== ========== ========== ========== ========== 
*/
SELECT	nome
FROM	vendedor
WHERE	faixacomissao IN ('A','B');

/* 
========== ========== ========== ========== ==========
Selecione o nome e a inscrição estadual do cliente,
cuja inscrição estadual é nula.
========== ========== ========== ========== ========== 
*/
SELECT	nome, insce
FROM	cliente
WHERE	insce IS null;

/* 
========== ========== ========== ========== ==========
Selecione o nome e o salário reajustado em 15% mais 120
reais dos vendedores da faixa de comissão C. E ordene
por ordem alfabética.
========== ========== ========== ========== ========== 
*/
SELECT		nome, (salariofixo * 1.15) + 120 AS "Novo salário!"
FROM		vendedor
WHERE		faixacomissao = 'C'
ORDER BY	nome;

--
SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM vendedor;
