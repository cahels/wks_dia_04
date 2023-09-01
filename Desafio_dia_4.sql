 CREATE DATABASE lanchonete;
 USE lanchonete;

CREATE TABLE cardapio(
	nome VARCHAR(40) NOT NULL,
    preco INT PRIMARY KEY,
    categoria VARCHAR(40)
    

);

CREATE TABLE funcionario (
    nome VARCHAR(100) NOT NULL,
    id INT,
    setor VARCHAR(50)

);

CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
    sexo CHAR,
	mesa INT
);





ALTER TABLE cliente ADD COLUMN cpf VARCHAR(15);
ALTER TABLE funcionario ADD COLUMN sexo CHAR;
ALTER TABLE cardapio ADD COLUMN id INT;

INSERT INTO
cliente(nome, sexo, mesa, cpf)
VALUES('Joseph','M', 12,'665.231.321-32'),
('Josh','M', 14, '196.435.721-35'),
('Janine','F', 19,'196.425.741-35');


INSERT INTO 
cardapio(preco, id, nome, categoria)
VALUES('4.3',1, 'Coxinha', 'Salgado'),
('3.3',2, 'Pudim', 'Sobremesa'),
('1.3',3, 'Cafe', 'Bebida');


INSERT INTO
funcionario(nome, id, setor, sexo)
VALUES('Jose', 443,'Cozinha', 'M'),
('Jane', 988,'Atendimento', 'F'),
('Jolyne', 777,'Limpeza', 'F');

ALTER TABLE cliente DROP COLUMN sexo;
ALTER TABLE funcionario DROP COLUMN id;
ALTER TABLE cardapio DROP COLUMN categoria;




SELECT * FROM cliente;
SELECT * FROM cardapio;
SELECT * FROM funcionario;





SELECT * FROM cardapio WHERE preco > 3;
SELECT preco, nome, categoria FROM cardapio WHERE preco = 1.3 
LIMIT 0, 10000;

SELECT * FROM lanchonete.nintendogames;