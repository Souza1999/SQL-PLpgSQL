
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

-- MOD

-- POWER

-- ROUND

-- TRUNC


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
