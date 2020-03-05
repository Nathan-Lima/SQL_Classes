-- DDL
-- (ALTER - ADD / MODIFY)

USE faculdade;

ALTER TABLE tbAlunos ADD
sexo CHAR(1);

ALTER TABLE tbAlunos
MODIFY sexo CHAR(1) NOT NULL;

USE faculdade;

INSERT INTO tbalunos(
rgm, nome, email, dtnascto, sexo)
VALUES (201, "Ana Silva", "ana@gmail.com", "2000-05-10", "F"),
	   (202, "Pedro Souza", "Pedro@gmail.com", "1999-09-14", "M");

SELECT * FROM faculdade.tbalunos;

create table cursos(
idCurso INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
duracao INT NOT NULL,
periodo VARCHAR(30)NOT NULL
);