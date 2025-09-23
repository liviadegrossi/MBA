CREATE TABLE Professor(
    Nome        VARCHAR(40) NOT NULL,
    NNfuncional CHAR(7)     NOT NULL,
    Grau        CHAR(7),
    Idade       DECIMAL(2)
    );

CREATE TABLE Aluno(
    Nome        VARCHAR(40) NOT NULL,
    NUSP        DECIMAL(8)  NOT NULL,
    Idade       DECIMAL(2),
    Cidade      VARCHAR(30)
    );

CREATE TABLE Turma(
    Sigla       CHAR(7)     NOT NULL,
    Numero      DECIMAL(2)  NOT NULL,
    Codigo      DECIMAL(4)  NOT NULL,
    NNalunos    DECIMAL(3)
    );

CREATE TABLE Discip(
    Sigla       CHAR(7)     NOT NULL,
    Nome        VARCHAR(25) NOT NULL,
    Siglaprereq CHAR(7),
    NNcred      DECIMAL(2)  NOT NULL
    );

CREATE TABLE Matricula(
    Codigoturma DECIMAL(4)  NOT NULL,
    NUSP        DECIMAL(8)  NOT NULL,
    Nota        DECIMAL(3)
    );

CREATE TABLE Ministra(
    NNfuncprof  CHAR(7)     NOT NULL,
    Codigo      DECIMAL(4)  NOT NULL,
    Livro       VARCHAR(50)
    );

INSERT INTO Professor VALUES ('Ari',     '1111', 'MS-1', 25);
INSERT INTO Professor VALUES ('Adao',    '2222', 'MS-2', 30);
INSERT INTO Professor VALUES ('Anselmo', '3333', 'MS-2', 31);
INSERT INTO Professor VALUES ('Amalia',  '8888', 'MS-3', 39);
INSERT INTO Professor VALUES ('Ana',     '4444', 'MS-3', 31);
INSERT INTO Professor VALUES ('Alice',   '5555', 'MS-3', 35);
INSERT INTO Professor VALUES ('Amauri',  '6666', 'MS-3', 34);
INSERT INTO Professor VALUES ('Artur',   '7777', 'MS-4', 41);
INSERT INTO Professor VALUES ('Adriana', '9999', 'MS-5', 45);

INSERT INTO Aluno VALUES ('Carlos',   1234, 21, 'Sao Carlos');
INSERT INTO Aluno VALUES ('Celso',    2345, 22, 'Sao Carlos');
INSERT INTO Aluno VALUES ('Cicero',   3456, 22, 'Araraquara');
INSERT INTO Aluno VALUES ('Carlitos', 4567, 21, 'Ibitinga');
INSERT INTO Aluno VALUES ('Catarina', 5678, 23, 'Sao Carlos');
INSERT INTO Aluno VALUES ('Cibele',   6789, 21, 'Araraquara');
INSERT INTO Aluno VALUES ('Corina',   7890, 25, 'Rio Claro');
INSERT INTO Aluno VALUES ('Celina',   8901, 27, 'Sao Carlos');
INSERT INTO Aluno VALUES ('Celia',    9012, 20, 'Rio Claro');
INSERT INTO Aluno VALUES ('Cesar',    9123, 21, 'Araraquara');
INSERT INTO aluno VALUES ('Denise',   4584, 35, 'Ibate');
INSERT INTO aluno VALUES ('Durval',   1479, null, null);
INSERT INTO Aluno VALUES ('Daniel',   1489, 19, 'Campinas');
INSERT INTO aluno VALUES ('Dora',     1469, 24, null);
INSERT INTO aluno VALUES ('Dina',     1459, null, 'Campinas');

INSERT INTO Turma VALUES ('SCE-179', 1, 100, 30);
INSERT INTO Turma VALUES ('SMA-179', 1, 101, 25);
INSERT INTO Turma VALUES ('SMA-179', 2, 102, 30);
INSERT INTO Turma VALUES ('SCE-200', 1, 103, 30);
INSERT INTO Turma VALUES ('SCE-200', 2, 104, 40);
INSERT INTO Turma VALUES ('SCE-200', 3, 105, 35);

INSERT INTO Discip VALUES ('SCE-179', 'Base de Dados',      'SMA-179', 4);
INSERT INTO Discip VALUES ('SMA-179', 'Algebra',                   '', 3);
INSERT INTO Discip VALUES ('SCE-200', 'Lab. Base de Dados', 'SCE-179', 4);

INSERT INTO Matricula VALUES (100, 1234, 8);
INSERT INTO Matricula VALUES (100, 2345, 9);
INSERT INTO Matricula VALUES (100, 4567, 7);
INSERT INTO Matricula VALUES (100, 8901, 4);
INSERT INTO Matricula VALUES (100, 9123, 9);
INSERT INTO Matricula VALUES (100, 3456, 7);
INSERT INTO Matricula VALUES (100, 9012, 6);
INSERT INTO Matricula VALUES (101, 2345, 4);
INSERT INTO Matricula VALUES (101, 3456, 2);
INSERT INTO Matricula VALUES (101, 2344, 3);
INSERT INTO Matricula VALUES (101, 4567, 4);
INSERT INTO Matricula VALUES (101, 6789, 6);
INSERT INTO Matricula VALUES (101, 7890, 10);
INSERT INTO Matricula VALUES (101, 8901, 3);
INSERT INTO Matricula VALUES (101, 9012, 9);
INSERT INTO Matricula VALUES (101, 1234, 9);
INSERT INTO Matricula VALUES (102, 2345, 7);
INSERT INTO Matricula VALUES (102, 3456, 9);
INSERT INTO Matricula VALUES (102, 4567, 10);
INSERT INTO Matricula VALUES (102, 5678, 7);
INSERT INTO Matricula VALUES (102, 9123, 9);
INSERT INTO Matricula VALUES (102, 8901, 9);
INSERT INTO Matricula VALUES (104, 2345, 7);
INSERT INTO Matricula VALUES (104, 3456, 10);
INSERT INTO Matricula VALUES (104, 4567, 4);
INSERT INTO Matricula VALUES (104, 6789, 5);
INSERT INTO Matricula VALUES (104, 7890, 9);
INSERT INTO Matricula VALUES (104, 8901, 8);
INSERT INTO Matricula VALUES (104, 9012, 9);
INSERT INTO Matricula VALUES (104, 1234, 4);
INSERT INTO Matricula VALUES (104, 5678, 8);
INSERT INTO Matricula VALUES (104, 9123, 7);

INSERT INTO Ministra VALUES ('1111', 100, 'Database Intro');
INSERT INTO Ministra VALUES ('1111', 103, 'Bases de Dados na Pratica');
INSERT INTO Ministra VALUES ('2222', 101, 'Algebra para Todos');
INSERT INTO Ministra VALUES ('3333', 100, 'Database Intro');
INSERT INTO Ministra VALUES ('3333', 103, 'Bases de Dados na Pratica');
INSERT INTO Ministra VALUES ('3333', 104, 'Bases de Dados na Pratica');
INSERT INTO Ministra VALUES ('3333', 102, 'Algebra Moderna');
INSERT INTO Ministra VALUES ('4444', 100, 'Database Intro');
INSERT INTO Ministra VALUES ('4444', 105, 'Bases de Dados');
INSERT INTO Ministra VALUES ('5555', 101, 'Algebra para Todos');
INSERT INTO Ministra VALUES ('5555', 102, 'Algebra Moderna');
INSERT INTO Ministra VALUES ('6666', 100, 'Introducao a bases de dados');
INSERT INTO Ministra VALUES ('7777', 101, 'Algebra Moderna');
INSERT INTO Ministra VALUES ('7777', 102, 'Algebra para Todos');
INSERT INTO Ministra VALUES ('9999', 100, 'Database Intro');