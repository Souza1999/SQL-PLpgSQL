-- Usando o BD filmes.

select * from pg_language;

-- Exemplo para inserir categoria
CREATE OR REPLACE FUNCTION InsereCategoria(cod INTEGER, nome VARCHAR(25))RETURNS VOID AS
$$
BEGIN
	INSERT INTO categorias VALUES (cod, nome);
END;
$$
LANGUAGE 'plpgsql';

SELECT InsereCategoria(8, 'Terror');


-- Mostra o título e ano dos filmes de uma categoria
CREATE OR REPLACE function mostra_filmes (v_categoria IN categorias.desccateg%type) returns void as 
$$
DECLARE
	vfilme cursor (v_categoria categorias.desccateg%type) for
		select titulo, ano
		from filmes f 
		join categorias c 
		on f.codcateg = c.codcateg
		where desccateg = v_categoria;
BEGIN
	FOR v_f IN vfilme(v_categoria) LOOP
		raise notice 'Título = %',v_f.titulo;
		raise notice 'Ano = %',v_f.ano;
	END LOOP;
END;
$$ 
LANGUAGE 'plpgsql';

SELECT mostra_filmes('Ação')
-- A saída é em "Messages".


-- Contar a quantidade de filmes em uma categoria
Create or replace function contafilme (
	cat IN categorias.desccateg%type
) RETURNS integer as 
$$
declare 
	totalfilme integer;
Begin
	Select count(*) into totalfilme
	from filmes f 
	join categorias c 
	on f.codcateg = c.codcateg
	Where desccateg = cat;
	Return totalfilme;
End;
$$ LANGUAGE 'plpgsql';

SELECT contafilme('Ação');


-- Cotação de dolar / real
Create or replace function DolarToReal(
	dolar in numeric, cotacao numeric
) Returns numeric As 
$$
Begin
	Return dolar * cotacao;
End;
$$ 
LANGUAGE 'plpgsql';

select DolarToReal(100, 4.88)


-- Mostra quantos filmes um ator fez a partir do nome dele como parâmetro de uma procedure
CREATE OR REPLACE PROCEDURE mostraNumFilmes(nome varchar(25))
LANGUAGE 'plpgsql' AS 
$$
DECLARE
	contador integer := 0;
BEGIN
	Select count(*) INTO contador
	From artistas a 
	join personagens p 
	on a.codart = p.codart
	Where a.nomeart = nome;
	RAISE NOTICE '% Fez % filme(s)', nome, contador;
END $$;

call mostraNumFilmes('Joaquin Phoenix');
Call mostraNumFilmes('Cameron Diaz');

--
select * from categorias;
select * from filmes;
