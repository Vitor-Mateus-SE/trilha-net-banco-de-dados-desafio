--#1 
SELECT Nome,Ano FROM dbo.Filmes

--#2
SELECT Nome,Ano FROM dbo.Filmes ORDER BY Ano

--#3
SELECT * FROM filmes WHERE Nome= 'de volta para o futuro';

--#4
SELECT * FROM filmes WHERE Ano= 1997

--#5
SELECT * FROM filmes WHERE Ano >= 2000

--#6
SELECT * FROM filmes WHERE Duracao > 100 AND Duracao < 150 ORDER  BY Duracao

--#7
SELECT 
Ano,
COUNT (*) AS total_filmes
FROM 
Filmes
GROUP BY 
Ano
ORDER BY COUNT(*) DESC;

--#8
SELECT PrimeiroNome,UltimoNome
FROM dbo.Atores WHERE Genero = 'M'

--#9
SELECT PrimeiroNome,UltimoNome
FROM dbo.Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--#10
SELECT 
    Filmes.Nome AS nome_filme,
    Generos.Genero
	AS genero
FROM  
    Filmes
JOIN
    Generos
	ON Filmes.Id =
	Generos.Id

--#11
SELECT 
    Filmes.Nome AS nome_filme,
    Generos.Genero
	AS genero
FROM  
    Filmes
	
JOIN
    Generos
	ON Filmes.Id =
	Generos.Id
	WHERE Genero = 'Mistério'

--#12
SELECT Filmes.Nome AS nome_filmes,
Atores.PrimeiroNome AS nome_1,
Atores.UltimoNome AS nome_2,
ElencoFilme.Papel AS papel
FROM Filmes
JOIN
Atores
ON Atores.ID = Filmes.Id
JOIN
ElencoFilme
ON  ElencoFilme.IdAtor = Atores.Id

