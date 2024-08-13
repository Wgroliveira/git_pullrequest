CREATE TABLE product (
    id_product INT PRIMARY KEY AUTO_INCREMENT,
    name_product VARCHAR(100) NOT NULL,
    description_product TEXT,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50)
);
INSERT INTO product (name_product, description_product, price, category)
VALUES
('Notebook', 'Notebook com 16GB de RAM e 512GB SSD', 4500.00, 'Eletrônicos'),
('Smartphone', 'Smartphone com câmera de 108MP e 128GB de armazenamento', 2500.00, 'Eletrônicos'),
('Teclado Mecânico', 'Teclado mecânico RGB com switches Cherry MX', 350.00, 'Acessórios'),
('Mouse Gamer', 'Mouse gamer com sensor de 16000 DPI', 250.00, 'Acessórios'),
('Monitor 27"', 'Monitor 4K de 27 polegadas com HDR', 1800.00, 'Eletrônicos'),
('Cadeira Gamer', 'Cadeira ergonômica com ajuste de altura e inclinação', 900.00, 'Móveis'),
('Headset', 'Headset com som surround 7.1 e microfone removível', 450.00, 'Acessórios'),
('Webcam', 'Webcam Full HD com microfone embutido', 150.00, 'Acessórios'),
('Impressora', 'Impressora multifuncional com Wi-Fi e impressão duplex', 600.00, 'Eletrônicos'),
('Tablet', 'Tablet com tela de 10.5" e 64GB de armazenamento', 1300.00, 'Eletrônicos'),
('Smartwatch', 'Smartwatch com monitoramento de atividades e GPS', 800.00, 'Eletrônicos'),
('HD Externo', 'HD externo de 2TB com conexão USB 3.0', 350.00, 'Acessórios'),
('Roteador', 'Roteador Wi-Fi de alta velocidade com 4 antenas', 400.00, 'Eletrônicos'),
('Power Bank', 'Power bank de 10000mAh com carregamento rápido', 120.00, 'Acessórios'),
('Caixa de Som Bluetooth', 'Caixa de som Bluetooth portátil com 20W de potência', 200.00, 'Acessórios');
