CREATE TABLE IF NOT EXISTS Categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(130) NOT NULL
) ENGINE=InnoDB CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS Produto(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	preco NUMERIC(12,2) NOT NULL,
	idcategoria INT NOT NULL
) ENGINE=InnoDB CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS Cidade(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(150) NOT NULL,
   estado CHAR(2) NOT NULL
) ENGINE=InnoDB CHARSET=UTF8;
   
CREATE TABLE IF NOT EXISTS Cliente(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(200) NOT NULL,
   telefone VARCHAR(20) NOT NULL,
   cidade_id INT NOT NULL
)ENGINE=InnoDB CHARSET=UTF8;

ALTER TABLE Produto ADD CONSTRAINT
fk_categoria_produto FOREIGN KEY(idcategoria)
REFERENCES Categoria(id);

ALTER TABLE Cliente ADD CONSTRAINT
fk_cliente_cidade FOREIGN KEY(cidade_id)
REFERENCES cidade(id);


INSERT INTO cidade(nome, estado) VALUES ('Macatuba', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('Bauru', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('Barra Bonita', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('A', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('B', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('C', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('D', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('E', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('F', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('G', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('H', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('I', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('J', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('K', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('L', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('M', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('N', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('O', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('P', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('Q', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('R', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('S', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('T', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('U', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('V', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('X', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('Z', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('AA', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('BB', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('CC', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('DD', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('EE', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('FF', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('GG', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('HH', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('II', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('JJ', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('LL', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('MM', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('NN', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('OO', 'SP');
INSERT INTO cidade(nome, estado) VALUES ('PP', 'SP');

INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Rogério', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Roseli', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Rahul', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó A', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Leticia', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('a', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('b', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('c', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó d', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('e', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('f', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('g', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('h', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó i', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('j', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('k', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('l', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('m', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó n', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('o', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('p', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('q', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('r', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó s', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('t', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('u', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('v', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('x', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó y', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('z', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('aa', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('bb', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('cc', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó dd', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('ee', '8888888',2);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('ff', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('gg', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('hh', '999999',1);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('Vó ii', '999999',3);
INSERT INTO cliente(nome, telefone, cidade_id) VALUES ('jj', '8888888',2);

INSERT INTO Categoria (nome) VALUES ('Jogos');
INSERT INTO Categoria (nome) VALUES ('Peças de Computador');
INSERT INTO Categoria (nome) VALUES ('Consoles');

INSERT INTO Produto (nome, preco, idcategoria) VALUES ('GTA V', '59.99', '1');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('Ark Survival', '199.90', '1');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('Counter-Strike Global Ofensive', '59.99', '1');

INSERT INTO Produto (nome, preco, idcategoria) VALUES ('i5 9100', '1550.00', '2');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('RTX 2080 TI', '3589.90', '2');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('SSD 1TB', '1090.00', '2');

INSERT INTO Produto (nome, preco, idcategoria) VALUES ('PS4', '1536.99', '3');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('XBOX ONE X', '1727.90', '3');
INSERT INTO Produto (nome, preco, idcategoria) VALUES ('Nintendo Switch', '1990.99', '3');