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
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Termogênico', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Proteína', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Pré-Treino', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Hipercalórico', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('BCAA', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Creatina', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Pré-Hormonal', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Acessórios', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Pasta de Amendoim', 1);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Barra de Proteina', 1);

INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Ganho de Massa Muscular', 2);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Definição', 2);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Emagrecimento', 2);

INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Fitoterápicos', 3);
INSERT INTO SUBCATEGORIAS(Nome, idCategoria) VALUES('Óleo de Côco', 3);

-- **********************
-- INSERINDO PROMOCOES --
-- **********************

INSERT INTO PROMOCOES(SRC_Img) VALUES('http://localhost/api/img1.png');
INSERT INTO PROMOCOES(SRC_Img) VALUES('http://localhost/api/img2.png');
INSERT INTO PROMOCOES(SRC_Img) VALUES('http://localhost/api/img3.png');
INSERT INTO PROMOCOES(SRC_Img) VALUES('http://localhost/api/img4.png');


-- **********************
-- INSERINDO PRODUTOS --
-- **********************

INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein', 'Produto para blablablbala', 280, 1, 2, 1);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Hyper', 'Produto para blablablbala', 280, 1, 3, 1);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Bomba Baiana 1', 'Produto para blablablbala', 280, 1, 2, 1);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 3', 'Produto para blablablbala', 280, 1, 13, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 4', 'Produto para blablablbala', 111, 1, 13, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 5', 'Produto para blablablbala', 280, 1, 5, 1);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 16', 'Produto para blablablbala', 99.30, 1, 11, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 17', 'Produto para blablablbala', 280, 1, 13, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 18', 'Produto para blablablbala', 567, 1, 11, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 19', 'Produto para blablablbala', 280, 1, 12, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 20', 'Produto para blablablbala', 280, 1, 13, 2);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 21', 'Produto para blablablbala', 890, 1, 14, 3);
INSERT INTO PRODUTOS(Nome, Descricao, Preco, Disponibilidade, idSubCategoria, idCategoria) VALUES('Whey Protein 22', 'Produto para blablablbala', 280, 1, 14, 3);