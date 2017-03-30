USE bd_nutrilife;

-- ***********************
-- INSERINDO CATEGORIAS --
-- ***********************
INSERT INTO CATEGORIAS(Nome) VALUES('Suplementos');
INSERT INTO CATEGORIAS(Nome) VALUES('Combos');
INSERT INTO CATEGORIAS(Nome) VALUES('Naturais');

-- **************************
-- INSERINDO SUBCATEGORIAS --
-- **************************
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Termogênico', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Proteína', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Pré-Treino', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Hipercalórico', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('BCAA', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Creatina', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Pré-Hormonal', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Acessórios', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Pasta de Amendoim', 1);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Barra de Proteina', 1);

INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Ganho de Massa Muscular', 2);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Definição', 2);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Emagrecimento', 2);

INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Fitoterápicos', 3);
INSERT INTO CATEGORIAS(Nome, idCategoria) VALUES('Óleo de Côco', 3);