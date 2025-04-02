-- Query 1
SELECT
	Nome,
	Ano
FROM Filmes


-- Query 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;


-- Query 3
SELECT * FROM Filmes
	Nome
WHERE Nome = 'De Volta para o Futuro'


--Query 4
SELECT * FROM Filmes
	Ano
WHERE Ano = 1997


--Query 5
SELECT * FROM Filmes
WHERE Ano >= 2000;


--Query 6
SELECT * FROM Filmes
WHERE Duracao >= 100 and Duracao <= 150;


--Query 7
SELECT
	Ano,
	COUNT (*) Duracao
FROM Filmes
WHERE Ano <> ''
GROUP BY Ano
ORDER BY Duracao DESC


--Query 8
SELECT * FROM Atores
WHERE Genero = 'M'


--Query 9
SELECT * FROM Atores
WHERE Genero = 'F'

SELECT * FROM Filmes
SELECT * FROM Generos


--Query 10
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


--Query 11
SELECT
	Nome,
	Genero
FROM filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério'


--Query 12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel
FROM filmes f
INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
INNER JOIN Atores a ON e.IdAtor = a.Id



