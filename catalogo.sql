-- Active: 1788283823527@@127.0.0.1@5432@catalogo_filmes

CREATE DATABASE catalogo_filmes;


CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT now(),
    atualizado_em TIMESTAMP NULL
);


CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    ano_lancamento DATE NOT NULL,
    genero VARCHAR(100) NOT NULL,
    nota DECIMAL(3,1) NULL,
    capa_url TEXT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT now(),
    atualizado_em TIMESTAMP NULL,

    CONSTRAINT fk_filmes_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id),

    CONSTRAINT check_nota
        CHECK (nota >= 0 AND nota <= 10)
);

INSERT INTO usuarios (nome, email, senha)
VALUES
('Eduardo', 'eduardo@email.com', '123456'),
('Felipe', 'felipe@email.com', '123456'),
('Kael', 'kael@email.com', '123456'),
('Murillo', 'murillo@email.com', '123456'),
('Renan', 'renan@email.com', '123456');


INSERT INTO filmes
(usuario_id, titulo, ano_lancamento, genero, nota, capa_url)
VALUES
(1, 'Interestelar', '2014-11-07', 'Ficção Científica', 9.5, 'https://exemplo.com/interestelar.jpg'),
(1, 'Vingadores: Ultimato', '2019-04-25', 'Ação', 9.0, 'https://exemplo.com/ultimato.jpg'),
(2, 'O Rei Leão', '2019-07-19', 'Animação', 8.5, 'https://exemplo.com/reileao.jpg'),
(3, 'Homem-Aranha', '2002-05-17', 'Ação', 8.0, 'https://exemplo.com/homemaranha.jpg'),
(4, 'Harry Potter e a Pedra Filosofal', '2001-11-23', 'Fantasia', 9.2, 'https://exemplo.com/harrypotter.jpg');


SELECT * FROM usuarios;

SELECT * FROM filmes;

SELECT
    filmes.id,
    usuarios.nome AS usuario,
    filmes.titulo,
    filmes.ano_lancamento,
    filmes.genero,
    filmes.nota,
    filmes.capa_url
FROM filmes
INNER JOIN usuarios
ON filmes.usuario_id = usuarios.id;