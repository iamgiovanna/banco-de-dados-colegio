CREATE DATABASE colegio;

use colegio;

CREATE TABLE alunos(
	matricula VarChar(5),
	nome VarChar(50), 
	endereco VarChar(50),
	cidade VarChar(30),
	codcurso char(2) PRIMARY KEY
);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10001, 'Maria Moraes', 'Rua Pe Roque,2057','Mogi Mirim',11);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10002, 'Maria Moraes', 'Rua Araras,23','Mogi Mirim',12);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10003, 'Maria Moraes', 'Rua Peraltas ,222','Mogi Guaçu',13);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10004, 'Maria das dores', 'Rua Botafogo,33','Santos',33);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10005, 'Maria Moraaes santos', 'Rua Lopes Conte,3343','Santos',32);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10006, 'Maria Mos', 'Rua Pe Roq','Santos',34);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10007, 'Maria raes', 'Rua Pe,257','Sapucaí',35);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10008, 'Maria aes', 'Rua limao ,2057','Itapira',36);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10009, 'Maria ora', 'Rua Pe agdg, 2057','Itapira',37);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10010, 'Maria Mo', 'Rua de lopes ,2057','Campinas',3);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10011, 'Maria es', 'Rua saão miguel,2057','Aparecida',28);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10012, 'Maria ores', 'Rua Perca de tempo,2057','São Paulo',29);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10013, 'Maria ras', 'Rua do sono,2057','São Paulo',25);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10014, 'Maria Mors', 'Rua soa aflitos,2057','Mogi Guaçu',26);
INSERT INTO alunos(matricula,nome,endereco,cidade,codcurso) values(10015, 'Maria Moaes', 'Rua Pe Roque,2057','Mogi Mirim',27);

CREATE TABLE cursos(

	codcurso char(2),
	foreign key (codcurso) references alunos,
	nome VarChar(50),
	coddisc1 char(2),
	coddisc2 char(2),
	coddisc3 char(2)
);
DROP TABLE cursos;

CREATE TABLE disciplinas(
	coddisc Char(2) PRIMARY KEY,
	NomeDisc VarChar(30)
);
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (11, 'Banco de Dados');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (12, 'Lógica de Programação');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (13, 'Desenvolvimento de Software1');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (21, 'Banco de Dados2');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (22, 'Programação de Computadores');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (23, 'Desenvolvimento de Software2');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (31, 'Banco de Dados3');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (32, 'Banco de Dados');
INSERT INTO disciplinas(coddisc, NomeDisc) VALUES (33, 'Desenvolvimento de Software3');



--cursos com modificação, errei chave primária e estrangeira--

CREATE TABLE cursos(
	codcurso char(2),
	foreign key (codcurso) references alunos,
	coddisc Char(2),
	foreign key (coddisc) references disciplinas,
	nome VarChar(50),
	coddisc1 char(2),
	coddisc2 char(2),
	coddisc3 char(2),
	foreign key (coddisc1) references disciplinas(coddisc),
	foreign key (coddisc2) references disciplinas(coddisc),
	foreign key (coddisc3) references disciplinas(coddisc),
);

INSERT INTO cursos(coddisc, nome, coddisc1, coddisc2, coddisc3) VALUES (11, 'Auxiliar de Informática',11,12,13);
INSERT INTO cursos(coddisc, nome, coddisc1, coddisc2, coddisc3) VALUES (33, 'Programador de computadores', 21,22,23);
INSERT INTO cursos(coddisc, nome, coddisc1, coddisc2, coddisc3) VALUES (33, 'Técnico em Informática', 31,32,33);