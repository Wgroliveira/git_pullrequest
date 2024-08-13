CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    birth_date DATE,
    address_customer VARCHAR(255),
    city VARCHAR(100),
    state_customer VARCHAR(100),
    zip_code VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO customers (first_name, last_name, cpf, email, phone, birth_date, address_customer, city, state_customer, zip_code)
VALUES
('Maria', 'Silva', '12345678901', 'maria.silva@example.com', '11987654321', '1985-05-10', 'Rua das Flores, 123', 'São Paulo', 'SP', '01000-000'),
('João', 'Souza', '23456789012', 'joao.souza@example.com', '11987654322', '1990-08-22', 'Av. Paulista, 456', 'São Paulo', 'SP', '01001-000'),
('Ana', 'Pereira', '34567890123', 'ana.pereira@example.com', '11987654323', '1978-12-15', 'Rua Augusta, 789', 'São Paulo', 'SP', '01002-000'),
('Carlos', 'Oliveira', '45678901234', 'carlos.oliveira@example.com', '11987654324', '1995-07-30', 'Av. Ipiranga, 1011', 'São Paulo', 'SP', '01003-000'),
('Beatriz', 'Almeida', '56789012345', 'beatriz.almeida@example.com', '11987654325', '1983-11-05', 'Rua da Consolação, 1213', 'São Paulo', 'SP', '01004-000'),
('Felipe', 'Santos', '67890123456', 'felipe.santos@example.com', '11987654326', '1988-03-18', 'Av. Faria Lima, 1415', 'São Paulo', 'SP', '01005-000'),
('Mariana', 'Costa', '78901234567', 'mariana.costa@example.com', '11987654327', '1992-09-09', 'Rua Bela Cintra, 1617', 'São Paulo', 'SP', '01006-000'),
('Ricardo', 'Ribeiro', '89012345678', 'ricardo.ribeiro@example.com', '11987654328', '1980-01-25', 'Av. Rebouças, 1819', 'São Paulo', 'SP', '01007-000'),
('Juliana', 'Melo', '90123456789', 'juliana.melo@example.com', '11987654329', '1993-06-14', 'Rua Pamplona, 2021', 'São Paulo', 'SP', '01008-000'),
('Gustavo', 'Fernandes', '01234567890', 'gustavo.fernandes@example.com', '11987654330', '1986-10-02', 'Av. Brigadeiro Luis Antonio, 2223', 'São Paulo', 'SP', '01009-000');
EXPLAIN ANALYZE SELECT * FROM customers;
CREATE INDEX idx_last_name ON customers(last_name);
CREATE INDEX idx_first_name ON customers(first_name);
EXPLAIN ANALYZE SELECT * FROM customers WHERE last_name = 'Silva';
EXPLAIN ANALYZE SELECT * FROM customers WHERE first_name = 'João';
EXPLAIN ANALYZE SELECT * FROM customers WHERE first_name IN ('João', 'Carlos', 'Beatriz', 'Felipe');
EXPLAIN ANALYZE SELECT * FROM customers WHERE last_name IN ('Silva', 'Oliveira', 'Santos', 'Costa');