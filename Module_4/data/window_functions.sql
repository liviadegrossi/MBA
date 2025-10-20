-- Select the oldest and youngest students per city
SELECT Cidade, Min(Idade), Max(Idade)
FROM Aluno
GROUP BY Cidade;

-- Select and show the information about the oldest and youngest students per city
SELECT nome, cidade, idade, 
	MIN(idade) OVER(Partition by cidade) IdMin, 
	MAX(idade) OVER(Partition by cidade) IdMax
FROM aluno;


-- Using window functions with an aggregate function
SELECT nome, cidade, idade, Min(idade) OVER(Partition by cidade)
FROM aluno;