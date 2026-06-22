USE infinity_hardware_db;

-- =====================================================
-- FUNCIONÁRIOS (10)
-- =====================================================

INSERT INTO funcionarios (nome, cpf, email, data_admissao) VALUES
('Carlos Silva','111.111.111-11','carlos@infinity.com','2024-01-10'),
('Ana Souza','222.222.222-22','ana@infinity.com','2024-01-15'),
('Pedro Lima','333.333.333-33','pedro@infinity.com','2024-02-01'),
('Mariana Costa','444.444.444-44','mariana@infinity.com','2024-02-12'),
('Lucas Santos','555.555.555-55','lucas@infinity.com','2024-03-01'),
('Fernanda Alves','666.666.666-66','fernanda@infinity.com','2024-03-15'),
('Gabriel Rocha','777.777.777-77','gabriel@infinity.com','2024-04-10'),
('Juliana Martins','888.888.888-88','juliana@infinity.com','2024-04-20'),
('Ricardo Pereira','999.999.999-99','ricardo@infinity.com','2024-05-01'),
('Patricia Gomes','101.101.101-10','patricia@infinity.com','2024-05-15');

-- =====================================================
-- G_ENTREGA (5)
-- =====================================================

INSERT INTO G_Entrega VALUES
(1,'Manhã'),
(2,'Tarde'),
(3,'Noite'),
(4,'Manhã'),
(5,'Tarde');

-- =====================================================
-- G_VENDAS (5)
-- =====================================================

INSERT INTO G_Vendas VALUES
(6,5.00),
(7,6.50),
(8,7.00),
(9,8.00),
(10,10.00);

-- =====================================================
-- PRODUTOS (60)
-- =====================================================

INSERT INTO produtos (nome_produto,categoria,preco_unitario,quantidade_estoque) VALUES

('Gabinete Gamer RedDragon','Gabinete',399.90,20),
('Gabinete Rise Mode Glass','Gabinete',299.90,15),
('Gabinete Corsair 4000D','Gabinete',649.90,10),
('Gabinete NZXT H5 Flow','Gabinete',799.90,8),
('Gabinete Cooler Master TD500','Gabinete',699.90,12),

('Mouse Logitech G203','Mouse',149.90,30),
('Mouse Logitech G502','Mouse',299.90,20),
('Mouse Redragon Cobra','Mouse',129.90,25),
('Mouse HyperX Pulsefire','Mouse',199.90,18),
('Mouse Razer DeathAdder','Mouse',249.90,15),

('ASUS Prime B550M','Placa Mae',799.90,12),
('Gigabyte B550M DS3H','Placa Mae',749.90,15),
('MSI B450M Pro','Placa Mae',599.90,10),
('ASRock B660M','Placa Mae',899.90,9),
('ASUS TUF B760M','Placa Mae',1199.90,8),

('Ryzen 5 5600','Processador',899.90,20),
('Ryzen 7 5700X','Processador',1299.90,15),
('Ryzen 9 5900X','Processador',1999.90,8),
('Intel i5 12400F','Processador',999.90,18),
('Intel i7 12700K','Processador',1999.90,10),

('Kingston Fury 8GB','Memoria RAM',149.90,50),
('Kingston Fury 16GB','Memoria RAM',299.90,40),
('Corsair Vengeance 16GB','Memoria RAM',329.90,35),
('Corsair Vengeance 32GB','Memoria RAM',649.90,20),
('XPG Spectrix 16GB','Memoria RAM',349.90,25),

('SSD Kingston 240GB','SSD',169.90,40),
('SSD Kingston 480GB','SSD',249.90,35),
('SSD Kingston 1TB','SSD',429.90,30),
('SSD Samsung 980 1TB','SSD',599.90,20),
('SSD WD Green 480GB','SSD',239.90,25),

('RTX 4060 8GB','Placa de Video',2199.90,12),
('RTX 4060 Ti','Placa de Video',2999.90,10),
('RTX 4070','Placa de Video',4199.90,8),
('RX 7600','Placa de Video',1899.90,10),
('RX 7700 XT','Placa de Video',2999.90,8),

('Fonte Corsair 550W','Fonte',349.90,25),
('Fonte Corsair 650W','Fonte',449.90,20),
('Fonte Redragon 600W','Fonte',299.90,25),
('Fonte MSI 750W','Fonte',599.90,15),
('Fonte Gigabyte 850W','Fonte',699.90,10),

('Cooler Master Hyper 212','Cooler',199.90,20),
('Water Cooler Rise 240mm','Cooler',349.90,15),
('Water Cooler Corsair H100','Cooler',699.90,10),
('Cooler DeepCool AK400','Cooler',229.90,18),
('Cooler Gammaxx 400','Cooler',159.90,20),

('Teclado Redragon Kumara','Teclado',199.90,25),
('Teclado HyperX Alloy','Teclado',399.90,12),
('Teclado Logitech G213','Teclado',299.90,15),
('Teclado Razer Cynosa','Teclado',349.90,12),
('Teclado Corsair K55','Teclado',429.90,10),

('Monitor LG 24','Monitor',899.90,10),
('Monitor Samsung 27','Monitor',1199.90,8),
('Headset HyperX Cloud','Headset',399.90,15),
('Headset Logitech G432','Headset',349.90,15),
('Webcam Logitech C920','Webcam',399.90,10),
('Adaptador WiFi TP-Link','Rede',99.90,30),
('Switch 8 Portas TP-Link','Rede',149.90,20),
('Nobreak Intelbras','Energia',699.90,8),
('Estabilizador SMS','Energia',249.90,12),
('Pasta Térmica Cooler Master','Acessório',39.90,50);

-- =====================================================
-- PEDIDOS (10)
-- =====================================================

INSERT INTO pedidos
(marketplace_origem,data_pedido,status_pedido,id_funcionario_entrega)
VALUES
('Amazon','2025-05-01 10:00:00','Entregue',1),
('Shopee','2025-05-02 11:00:00','Entregue',2),
('Mercado Livre','2025-05-03 12:00:00','Enviado',3),
('Amazon','2025-05-04 13:00:00','Processando',4),
('Shopee','2025-05-05 14:00:00','Entregue',5),
('Mercado Livre','2025-05-06 15:00:00','Entregue',1),
('Amazon','2025-05-07 16:00:00','Enviado',2),
('Shopee','2025-05-08 17:00:00','Processando',3),
('Mercado Livre','2025-05-09 18:00:00','Entregue',4),
('Amazon','2025-05-10 19:00:00','Entregue',5);

-- =====================================================
-- ITENS PEDIDO (20)
-- =====================================================

INSERT INTO Itens_Pedido VALUES
(1,16,1,899.90),
(1,22,2,299.90),
(2,31,1,2199.90),
(2,37,1,449.90),
(3,6,2,149.90),
(3,46,1,199.90),
(4,17,1,1299.90),
(4,28,1,249.90),
(5,33,1,4199.90),
(5,52,1,399.90),
(6,11,1,799.90),
(6,21,2,149.90),
(7,18,1,1999.90),
(7,34,1,1899.90),
(8,7,1,299.90),
(8,47,1,399.90),
(9,19,1,999.90),
(9,39,1,599.90),
(10,20,1,1999.90),
(10,51,1,1199.90);

-- =====================================================
-- NOTAS FISCAIS (10)
-- =====================================================

INSERT INTO Notas_Fiscais
(id_pedido,chave_acesso,data_emissao,valor_total)
VALUES
(1,'11111111111111111111111111111111111111111111','2025-05-01 11:00:00',1499.70),
(2,'22222222222222222222222222222222222222222222','2025-05-02 12:00:00',2649.80),
(3,'33333333333333333333333333333333333333333333','2025-05-03 13:00:00',499.70),
(4,'44444444444444444444444444444444444444444444','2025-05-04 14:00:00',1549.80),
(5,'55555555555555555555555555555555555555555555','2025-05-05 15:00:00',4599.80),
(6,'66666666666666666666666666666666666666666666','2025-05-06 16:00:00',1099.70),
(7,'77777777777777777777777777777777777777777777','2025-05-07 17:00:00',3899.80),
(8,'88888888888888888888888888888888888888888888','2025-05-08 18:00:00',699.80),
(9,'99999999999999999999999999999999999999999999','2025-05-09 19:00:00',1599.80),
(10,'10101010101010101010101010101010101010101010','2025-05-10 20:00:00',3199.80);