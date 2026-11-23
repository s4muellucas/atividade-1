-- apaga o banco se já existir e cria de novo
DROP DATABASE IF EXISTS suporte_select;
CREATE DATABASE suporte_select;
-- escolhe o banco para usar
USE suporte_select;

CREATE TABLE funcionario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  cargo VARCHAR(50)
);

CREATE TABLE chamado (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descricao TEXT,
  data_abertura DATETIME,
  status VARCHAR(20),
  prioridade VARCHAR(10)
);

-- o id não vai: o MySQL cria sozinho
INSERT INTO funcionario (nome, email, cargo) VALUES
  ('Helena Matos', 'helena@empresa.com', 'Analista'),
  ('Igor Pires', 'igor@empresa.com', 'Gerente'),
  ('Julia Nunes', 'julia@empresa.com', 'Analista'),
  ('Kleber Souza', 'kleber@empresa.com', 'Assistente'),
  ('Larissa Melo', 'larissa@empresa.com', 'Analista'),
  ('Mauro Dias', 'mauro@empresa.com', 'Diretor');

INSERT INTO chamado (descricao, data_abertura, status, prioridade) VALUES
  ('Internet sem conexao', '2026-11-10 09:15:00', 'aberto', 'alta'),
  ('Erro no sistema de vendas', '2026-11-10 10:40:00', 'em andamento', 'alta'),
  ('Impressora nao imprime', '2026-11-11 08:50:00', 'fechado', 'baixa'),
  ('Senha bloqueada', '2026-11-11 14:20:00', 'fechado', 'media'),
  ('Computador lento', '2026-11-12 09:00:00', 'aberto', 'media'),
  ('Internet instavel no setor financeiro', '2026-11-12 15:30:00', 'em andamento', 'alta'),
  ('Monitor sem imagem', '2026-11-16 08:30:00', 'aberto', 'baixa'),
  ('Backup nao concluido', '2026-11-17 17:45:00', 'em andamento', 'alta'),
  ('Email nao envia', '2026-11-18 09:25:00', 'aberto', 'alta'),
  ('Atualizar sistema operacional', '2026-11-19 13:00:00', 'fechado', 'baixa');
SELECT * FROM funcionario;
SELECT * FROM chamado;

