CREATE TABLE Random_Sample (
	Id INT,
	Dados NUMERIC DEFAULT random()*1000
);

INSERT INTO Random_Sample
	SELECT * FROM Generate_Series(1, 1000000);

VACUUM ANALYZE random_sample;

-- Analyzing the table
SELECT RelName, RelTuples, RelPages, Pg_Relation_Size(OId)
FROM pg_Class WHERE RelName = 'random_sample';

-- Analyzing the performance of random sampling
EXPLAIN ANALYZE SELECT * FROM random_sample
WHERE 100*Random() <.10;

EXPLAIN ANALYZE SELECT * FROM random_sample
ORDER BY Random() LIMIT 1000;

EXPLAIN ANALYZE SELECT * FROM random_sample
WHERE Random() < 0.012 LIMIT 1000;

-- Cardinality reduction - histograms
--1. Identidy the min and max values for age (feature)
SELECT Min(idade) as Mi, Max(idade) as Ma
FROM aluno

--2. Create the values for the active domain, removing the k-min and k-max
SELECT Bins.B as idade, CASE WHEN Tab.Conta IS NULL THEN 0 ELSE Tab.Conta END Contagem
FROM 
	(WITH Lim AS 
		(SELECT Min(idade) as Mi, Max(idade) as Ma FROM aluno)
		SELECT Generate_Series(Lim.Mi+1, Lim.Ma-1) as B FROM Lim) as Bins
	LEFT OUTER JOIN
	(SELECT idade, Count(*) as Conta
		FROM aluno
		GROUP BY idade) as Tab 
	ON Bins.B = Tab.idade

-- 2. An alternative is to create equal bins
SELECT Floor(idade/5.00)*5 as Ini, Count(*) AS Conta
FROM aluno
GROUP BY Ini
ORDER BY Ini;

-- 
WITH MinMax AS (SELECT Min(idade) AS Mi, Max(idade) AS Ma FROM aluno)
SELECT idade, Width_bucket(idade, (SELECT Mi FROM MinMax), (SELECT Ma FROM MinMax), 4) as Bin, Count(*) as Conta
FROM aluno
GROUP BY idade
ORDER BY idade;

SELECT Bin, Min(idade), Max(idade), Count(*)
FROM (SELECT *, NTILE(10) OVER(ORDER BY idade) AS Bin FROM aluno)
GROUP BY Bin
ORDER BY Bin;