create database faculdade; 

use faculdade;

create table cursos(
idCurso INT auto_increment primary key,
Nome VARCHAR(50) NOT NULL,
duracao INT NOT NULL,
periodo VARCHAR(30) NOT NULL
);

CREATE TABLE tbAlunos (
	 rgm INT PRIMARY KEY,
     nome VARCHAR(50) NOT NULL,
     sexo VARCHAR(1) NOT NULL,
     email VARCHAR(50) NOT NULL,
     dtnascto DATE NOT NULL
	 );
     
drop table tbAlunos;

INSERT INTO tbAlunos (rgm, nome, sexo, email, dtnascto, idCurso) 
values (202, "Pedro Souza", "M", "pedro@uol.com.br", "1999-09-14", "2");

INSERT INTO tbAlunos (rgm, nome, sexo, email, dtnascto, idCurso) 
values (201, "Ana Silva", "F", "ana@gmail.com", "2000-09-14", "3");

INSERT INTO cursos (Nome, duracao, periodo) 
values ("Biologia", 8, "matutino");

INSERT INTO cursos (Nome, duracao, periodo) 
values ("ADS", 4, "matutino");

INSERT INTO cursos (Nome, duracao, periodo) 
values ("ADS", 4, "noturno");

ALTER TABLE tbAlunos
	ADD idCurso INT;
    
ALTER TABLE tbAlunos
	modify idCurso INT NOT NULL;

ALTER TABLE tbAlunos
	ADD CONSTRAINT FK_idCurso
		FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso);

DELETE FROM tbAlunos
WHERE rgm > 0;

DELETE FROM cursos
WHERE idCurso > 0;

SELECT * FROM faculdade.cursos; 
SELECT * FROM faculdade.tbAlunos;

---------------------------------------------------------

Create table customers (
customerNumber INT auto_increment primary key,
customerName VARCHAR(40),
contactLastName VARCHAR(40),
contactFirstName VARCHAR(40),
phone VARCHAR(40),
addressLine1 VARCHAR(40),
addressLine2 VARCHAR(40),
city VARCHAR (40),
state VARCHAR(40),
postalCode VARCHAR(40),
country VARCHAR(40),
salesRepEmployeeNumber INT,
creditLimit FLOAT
);

create table orders(
orderNumber INT PRIMARY KEY AUTO_INCREMENT,
orderDate DATE,
requiredDate DATE,
shippedDate DATE,
ordemStatus CHAR(1),
comments VARCHAR(30),
customerNumber INT,
FOREIGN KEY orders(customerNumber) REFERENCES customers(customerNumber)
);

ALTER TABLE customers
	ADD CONSTRAINT FK_customerNumber
		FOREIGN KEY (customerNumber) REFERENCES orders(customerNumber);
        
DROP TABLE orders;