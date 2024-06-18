INSERT INTO clientes (nome, razao_social, endereco, email)
VALUES
    ('João Silva', 'Silva & Cia Ltda', 'Rua das Flores, 123', 'joao.silva@example.com'),
    ('Maria Santos', 'Santos Importadora', 'Av. Principal, 456', 'maria.santos@example.com'),
    ('José Oliveira', 'Oliveira & Filhos', 'Travessa dos Artistas, 789', 'jose.oliveira@example.com'),
    ('Ana Souza', 'Souza Distribuidora', 'Praça da Paz, 321', 'ana.souza@example.com'),
    ('Carlos Pereira', 'Pereira Indústria', 'Alameda dos Esportes, 567', 'carlos.pereira@example.com'),
    ('Amanda Almeida', 'Almeida Comércio', 'Rua das Árvores, 890', 'amanda.almeida@example.com'),
    ('Pedro Costa', 'Costa & Costa Ltda', 'Avenida dos Ventos, 234', 'pedro.costa@example.com'),
    ('Juliana Ferreira', 'Ferreira Transportes', 'Estrada da Montanha, 678', 'juliana.ferreira@example.com'),
    ('Lucas Mendes', 'Mendes Exportadora', 'Rodovia do Sol, 345', 'lucas.mendes@example.com'),
    ('Fernanda Lima', 'Lima Distribuidora', 'Avenida das Estrelas, 901', 'fernanda.lima@example.com');


-- Inserção de 10 produtos com dados fixos
INSERT INTO produtos (descricao, preco, quantidade_estoque, ativo)
VALUES
    ('Camisa', 49.99, 50, 'SIM'),
    ('Calça Jeans', 89.90, 30, 'SIM'),
    ('Tênis Esportivo', 129.99, 20, 'SIM'),
    ('Óculos de Sol', 79.90, 15, 'SIM'),
    ('Relógio de Pulso', 199.99, 10, 'SIM'),
    ('Mochila', 149.99, 25, 'SIM'),
    ('Boné', 29.99, 40, 'SIM'),
    ('Meias (par)', 9.99, 100, 'SIM'),
    ('Shorts de Praia', 69.90, 35, 'SIM'),
    ('Chapéu de Sol', 39.99, 30, 'SIM');

-- Inserção de 10 pedidos de venda com 3 itens de venda cada
-- Cada pedido será associado a três produtos diferentes
INSERT INTO pedido_venda (cliente_id, emissao, total, status)
VALUES
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO'),
    (1, NOW(), 0, 'CONCLUIDO');

-- Inserção de itens de venda para cada pedido
-- Associando três produtos diferentes a cada pedido
INSERT INTO pedido_venda_item (pedido_venda_id, produto_id, quantidade, valor_unitario, valor_total)
VALUES
    (1, 1, 2, 49.99, 99.98),    -- Pedido 1, Produto 1
    (1, 3, 1, 129.99, 129.99),  -- Pedido 1, Produto 3
    (1, 7, 3, 29.99, 89.97),    -- Pedido 1, Produto 7

    (2, 2, 1, 89.90, 89.90),    -- Pedido 2, Produto 2
    (2, 4, 2, 79.90, 159.80),   -- Pedido 2, Produto 4
    (2, 8, 5, 9.99, 49.95),     -- Pedido 2, Produto 8

    (3, 5, 1, 199.99, 199.99),  -- Pedido 3, Produto 5
    (3, 6, 2, 149.99, 299.98),  -- Pedido 3, Produto 6
    (3, 9, 4, 69.90, 279.60),   -- Pedido 3, Produto 9

    (4, 3, 1, 129.99, 129.99),  -- Pedido 4, Produto 3
    (4, 5, 1, 199.99, 199.99),  -- Pedido 4, Produto 5
    (4, 10, 2, 39.99, 79.98),   -- Pedido 4, Produto 10

    (5, 1, 3, 49.99, 149.97),   -- Pedido 5, Produto 1
    (5, 4, 1, 79.90, 79.90),    -- Pedido 5, Produto 4
    (5, 6, 2, 149.99, 299.98),  -- Pedido 5, Produto 6

    (6, 2, 2, 89.90, 179.80),   -- Pedido 6, Produto 2
    (6, 3, 1, 129.99, 129.99),  -- Pedido 6, Produto 3
    (6, 8, 3, 9.99, 29.97),     -- Pedido 6, Produto 8

    (7, 5, 1, 199.99, 199.99),  -- Pedido 7, Produto 5
    (7, 7, 2, 29.99, 59.98),    -- Pedido 7, Produto 7
    (7, 9, 3, 69.90, 209.70),   -- Pedido 7, Produto 9

    (8, 2, 1, 89.90, 89.90),    -- Pedido 8, Produto 2
    (8, 4, 2, 79.90, 159.80),   -- Pedido 8, Produto 4
    (8, 10, 4, 39.99, 159.96),  -- Pedido 8, Produto 10

    (9, 1, 2, 49.99, 99.98),    -- Pedido 9, Produto 1
    (9, 5, 1, 199.99, 199.99),  -- Pedido 9, Produto 5
    (9, 6, 3, 149.99, 449.97),  -- Pedido 9, Produto 6

    (10, 3, 1, 129.99, 129.99), -- Pedido 10, Produto 3
    (10, 7, 2, 29.99, 59.98),   -- Pedido 10, Produto 7
    (10, 8, 4, 9.99, 39.96);    -- Pedido 10, Produto 8


