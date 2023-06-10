
-- ********** FUNÇÕES PARA NÚMEROS **********
-- ABS(n): seleciona o valor absoluto (desconsidera o sinal).
SELECT ABS(-30);
SELECT ABS(+30);

-- CEIL(n): arredonda sempre para o inteiro igual ou para o inteiro maior.
SELECT CEIL(16.0);
SELECT CEIL(16.1);

-- FLOOR(n): arredonda sempre para o inteiro igual ou para o inteiro menor.
SELECT FLOOR(99.0);
SELECT FLOOR(99.9);

-- MOD(a1,a2): retorna o resto de uma divisão.
SELECT MOD(10,3);
SELECT MOD(10,4);
SELECT MOD(10,5);
-- Quando o divisor é maior que o dividendo, é retornado o dividendo. 
SELECT MOD(10,100);	
SELECT MOD(8,56);	
SELECT MOD(47,48);

-- POWER(a1,a2): eleva o primeiro número ao segundo número.
SELECT POWER(2,3);
SELECT POWER(3,2);
SELECT POWER(5,4);

-- ROUND(n,a): arredonda o primeiro número (n) em quantas casas decimais forem escolhidas(a)
-- E se se não for escolhida a quantidade de casas decimais, então é 0, isto é, o número será inteiro.
SELECT ROUND(16.193,1);
SELECT ROUND(16.193,2);
SELECT ROUND(16.193,5);
SELECT ROUND(9.4);
SELECT ROUND(9.6);
SELECT ROUND(9.5);

-- TRUNC(n,a): não aredonda, apenas mantém o número como está com a quantidade de casas decimais definidas.
SELECT TRUNC(42.8495);
SELECT TRUNC(42.8495,2);
SELECT TRUNC(42.8495,5);
SELECT TRUNC(42.8495,7)


-- ********** FUNÇÕES PARA CARACTERES **********
-- CONCAT(a,b) ou ||: concatena strings.
SELECT	CONCAT(CONCAT(primeironome, ' é '), cargo)
FROM	empregado
WHERE	matricula = 12;

/*
	Tem 2 CONCAT's porque tem duas concatenações. 
	Se tivesse 3 concatenações, teria que ter 3
	CONCAT's. Porém, usar || é mais simples.
*/

SELECT	primeironome || ' é ' || cargo
FROM	empregado
WHERE	matricula = 6;


-- INITCAP(s): retorna a primeira string maiúscula e as restantes minúsculas.
SELECT INITCAP('initcap');
SELECT INITCAP('iNITICAP');

-- LOWER 

-- REPLACE

-- SUBSTR

-- UPPER

-- LENGHT

-- RPAD


-- ********** FUNÇÕES DE CONVERSÃO **********
--

--

--

--

--


-- ********** FUNÇÕES DE DATAS **********

--

--

--

--

--


-- ********** FUNÇÕES GENÉRICAS **********

--

--

--

--
