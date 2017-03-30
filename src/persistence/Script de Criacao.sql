-- *******************
-- CRIACAO DO BANCO --
-- *******************
CREATE DATABASE bd_nutrilife
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- **********************
-- CRIACAO DAS TABELAS --
-- **********************

USE bd_nutrilife;

-- *********************
-- Tabela: CATEGORIAS --
-- *********************
CREATE TABLE IF NOT EXISTS CATEGORIAS(
  ID_Categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL UNIQUE KEY
)ENGINE = INNODB;

-- ************************
-- Tabela: SUBCATEGORIAS --
-- ************************
CREATE TABLE IF NOT EXISTS SUBCATEGORIAS(
  ID_SubCategoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL UNIQUE KEY,
  idCategoria INT NOT NULL,
  FOREIGN KEY (idCategoria) REFERENCES CATEGORIAS(ID_Categoria)
)ENGINE = INNODB;

-- *******************
-- Tabela: PRODUTOS --
-- *******************
CREATE TABLE IF NOT EXISTS PRODUTOS(
  ID_Produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL UNIQUE KEY,
  Descricao VARCHAR(200),
  Preco FLOAT NOT NULL,
  Disponibilidade BOOLEAN NOT NULL DEFAULT FALSE,
  idSubCategoria INT NOT NULL,
  FOREIGN KEY (idSubCategoria) REFERENCES SUBCATEGORIA(ID_SubCategoria)
)ENGINE = INNODB;

-- **********************
-- Tabela: IMGPRODUTOS --
-- **********************
CREATE TABLE IF NOT EXISTS IMGPRODUTOS(
  ID_Imagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SRC VARCHAR(300) NOT NULL,
  idProduto INT NOT NULL,
  FOREIGN KEY (idProduto) REFERENCES PRODUTOS(ID_Produto)
)ENGINE = INNODB;

-- ********************
-- Tabela: PROMOCOES --
-- ********************
CREATE TABLE IF NOT EXISTS PROMOCOES(
  ID_Promocao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Titulo VARCHAR(50),
  Descricao VARCHAR(200),
  Preco FLOAT NOT NULL,
  SRC_Img VARCHAR(300) NOT NULL
  )ENGINE = INNODB;

-- *******************
-- Tabela: RECEITAS --
-- *******************
CREATE TABLE IF NOT EXISTS RECEITAS(
  ID_Receita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(80) NOT NULL UNIQUE KEY,
  Ingredientes VARCHAR(200),
  ModoDePreparo VARCHAR(300),
  SRC_Img VARCHAR(300)
)ENGINE = INNODB;

-- *******************
-- Tabela: USUARIOS --
-- *******************
CREATE TABLE IF NOT EXISTS USUARIOS(
  ID_Usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Email VARCHAR(150),
  Login VARCHAR(50) NOT NULL UNIQUE KEY,
  Senha VARCHAR(50) NOT NULL
)ENGINE = INNODB;
  