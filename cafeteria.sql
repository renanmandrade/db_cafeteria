-- Versão 1.0
-- Criação do banco de dados
CREATE DATABASE cafeteria;
USE cafeteria;

-- Tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de produtos
INSERT INTO produtos (nome, preco) VALUES
('Café Expresso', 5.50),
('Cappuccino', 7.00),
('Pão de Queijo', 4.50);

-- Inserção de pedidos
INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-10-22'),
(2, 1, '2025-10-22'),
(3, 3, '2025-10-21');
