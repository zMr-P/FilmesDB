-- 1 \\

SELECT Nome, 
       Ano 
       FROM Filmes

-- 2 \\

SELECT Nome, 
       Ano, 
       Duracao 
       FROM Filmes 
       ORDER BY Ano asc

-- 3 \\

SELECT Nome,
       Ano,
       Duracao 
       FROM Filmes
       WHERE Nome = 'De Volta para o Futuro'

-- 4 \\

SELECT Nome,
       Ano,
       Duracao 
       FROM Filmes
       WHERE Ano = 1997

-- 5 \\

SELECT Nome,
       Ano,
       Duracao 
       FROM Filmes
       WHERE Ano > 2000

-- 6 \\

SELECT Nome,
       Ano,
       Duracao 
       FROM Filmes
       WHERE Duracao > 100 AND Duracao < 150
       ORDER BY Duracao asc

-- 7 \\

SELECT Ano,
       COUNT(ano) Quantidade 
       FROM Filmes
       GROUP BY Ano   
       ORDER BY Quantidade desc

-- 8 \\

SELECT PrimeiroNome,
       UltimoNome,
       Genero 
       FROM Atores
       WHERE Genero = 'M'

-- 9 \\

SELECT PrimeiroNome,
       UltimoNome, 
       Genero 
       FROM Atores
       Where Genero = 'F'
       ORDER BY PrimeiroNome asc

-- 10 \\

SELECT F.Nome,
       G.Genero 
       FROM Filmes F
       INNER JOIN FilmesGenero on F.Id = FilmesGenero.IdFilme
       INNER JOIN Generos G on G.ID = FilmesGenero.IdGenero 

-- 11 \\

SELECT F.Nome,
       G.Genero 
       FROM Filmes F
       INNER JOIN FilmesGenero on F.Id = FilmesGenero.IdFilme
       INNER JOIN Generos G on G.ID = FilmesGenero.IdGenero 
       WHERE Genero = 'Mistério'

-- 12 \\

SELECT F.Nome,
       A.PrimeiroNome,
       A.UltimoNome,
       EF.Papel 
       FROM Filmes F
       INNER JOIN ElencoFilme EF on F.ID = EF.IdFilme
       INNER JOIN Atores A on A.Id = EF.IdAtor 



	   
