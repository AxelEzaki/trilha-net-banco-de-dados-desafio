-- 1
SELECT Nome, Ano FROM Filmes

-- 2 (A imagem de exemplo e o enunciado falam para selecionar coisas diferentes. Aí, na dúvida, deixei as duas querys
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
  
-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7 (Confesso que esse fiquei confuso, mas fiquei utilizando como base a imagem)
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY COUNT(Duracao) DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT 
	F.Nome,
  G.Genero
FROM Filmes F
	INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
  INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT 
	F.Nome,
  G.Genero
FROM Filmes F
	INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
  INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- 12
SELECT 
	F.Nome,
  A.PrimeiroNome,
  A.UltimoNome,
  EF.Papel
FROM Filmes F
	INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
  INNER JOIN Atores A ON A.Id = EF.IdAtor
