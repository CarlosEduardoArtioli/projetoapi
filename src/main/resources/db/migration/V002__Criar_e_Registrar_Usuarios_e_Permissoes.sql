CREATE TABLE usuario (
	codigo BIGINT(20) primary key,
	nome VARCHAR(50) not null,
	email VARCHAR(50) not null,
	nome VARCHAR(150) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	codigo BIGINT(20) primary key,
	descricao VARCHAR(50) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	codigo_usuario BIGINT(20) not null,
	codigo_permissao BIGINT(20) not null,
	PRIMARY KEY (codigo_usuario, codigo_permissao),
	FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo),
	FOREIGN KEY (codigo_permissao) REFERENCES permissao(codigo),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario (codigo, nome, email, senha) values (1, 'Administrador', 'admin@admin.com', '123456');
INSERT INTO usuario (codigo, nome, email, senha) values (2, 'Maria', 'maria@maria.com', '654321');

INSERT INTO permissao (codigo, descricao) values (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (codigo, descricao) values (2, 'ROLE_REMOVER_CATEGORIA');
INSERT INTO permissao (codigo, descricao) values (3, 'ROLE_PESQUISAR_CATEGORIA');

INSERT INTO permissao (codigo, descricao) values (4, 'ROLE_CADASTRAR_CIDADE');
INSERT INTO permissao (codigo, descricao) values (5, 'ROLE_REMOVER_CIDADE');
INSERT INTO permissao (codigo, descricao) values (6, 'ROLE_PESQUISAR_CIDADE');

INSERT INTO permissao (codigo, descricao) values (7, 'ROLE_CADASTRAR_CLIENTE');
INSERT INTO permissao (codigo, descricao) values (8, 'ROLE_REMOVER_CLIENTE');
INSERT INTO permissao (codigo, descricao) values (9, 'ROLE_PESQUISAR_CLIENTE');

INSERT INTO permissao (codigo, descricao) values (10, 'ROLE_CADASTRAR_PRODUTO');
INSERT INTO permissao (codigo, descricao) values (11, 'ROLE_REMOVER_PRODUTO');
INSERT INTO permissao (codigo, descricao) values (12, 'ROLE_PESQUISAR_PRODUTO');

INSERT INTO permissao (codigo, descricao) values (13, 'ROLE_CADASTRAR_PEDIDO');
INSERT INTO permissao (codigo, descricao) values (14, 'ROLE_REMOVER_PEDIDO');
INSERT INTO permissao (codigo, descricao) values (15, 'ROLE_PESQUISAR_PEDIDO');

--admin
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 3);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 4);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 6);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 7);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 8);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 9);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 10);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 11);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 12);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 13);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 14);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values(1, 15);


--maria
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,3);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,4);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) values (2,6);