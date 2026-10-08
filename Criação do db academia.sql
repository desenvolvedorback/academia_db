-- Cria a base de dados.
DROP DATABASE IF EXISTS academia_db;
CREATE DATABASE academia_db;
USE academia_db;

-- Cria a tabela de planos.
CREATE TABLE planos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL UNIQUE,
  valor_mensal DECIMAL(10,2) NOT NULL,
  duracao_meses INT NOT NULL,
  descricao TEXT
);

-- Cria a tabela de alunos.
CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_plano INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(15) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  data_matricula DATE NOT NULL,
  peso DECIMAL(5,2),
  altura DECIMAL(3,2),

  -- Chave estrangeira que conecta os alunos aos planos.
  FOREIGN KEY (id_plano) REFERENCES planos(id)
);
