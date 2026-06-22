-- =====================================================================
-- SCRIPT DDL - CRIAÇÃO DO SCHEMA E TABELAS (INFINITY HARDWARE)
-- INTEGRANTES: Matheus, Nicole, Samuel, Sarah e João Vitor
-- =====================================================================

CREATE DATABASE IF NOT EXISTS infinity_hardware_db;
USE infinity_hardware_db;

-- 1. TABELA MÃE: funcionarios
CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    CONSTRAINT pk_funcionarios PRIMARY KEY (id_funcionario),
    CONSTRAINT uq_funcionarios_cpf UNIQUE (cpf)
);

-- 2. TABELA FILHA: G_Entrega (Logística/Separação/Despacho)
CREATE TABLE G_Entrega (
    id_funcionario INT,
    turno_trabalho VARCHAR(20) NOT NULL,
    CONSTRAINT pk_g_entrega PRIMARY KEY (id_funcionario),
    CONSTRAINT fk_g_entrega_func FOREIGN KEY (id_funcionario) 
        REFERENCES funcionarios (id_funcionario) ON DELETE CASCADE
);

-- 3. TABELA FILHA: G_Vendas (Anúncios/Marketplaces)
CREATE TABLE G_Vendas (
    id_funcionario INT,
    percentual_comissao DECIMAL(4, 2) NOT NULL,
    CONSTRAINT pk_g_vendas PRIMARY KEY (id_funcionario),
    CONSTRAINT fk_g_vendas_func FOREIGN KEY (id_funcionario) 
        REFERENCES funcionarios (id_funcionario) ON DELETE CASCADE
);

-- 4. TABELA: produtos (Estoque de Eletrônicos e Hardwares)
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL, 
    preco_unitario DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL DEFAULT 0,
    CONSTRAINT pk_produtos PRIMARY KEY (id_produto)
);

-- 5. TABELA: pedidos (Vendas consolidadas nos Marketplaces)
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT,
    marketplace_origem VARCHAR(50) NOT NULL, -- Amazon, Shopee, Mercado Livre
    data_pedido DATETIME NOT NULL,
    status_pedido VARCHAR(30) NOT NULL, 
    id_funcionario_entrega INT NULL, -- FK para quem da logística processou o pedido
    CONSTRAINT pk_pedidos PRIMARY KEY (id_pedido),
    CONSTRAINT fk_pedidos_entrega FOREIGN KEY (id_funcionario_entrega) 
        REFERENCES G_Entrega (id_funcionario) ON DELETE SET NULL
);

-- 6. TABELA ASSOCIATIVA (N:M): Itens_Pedido
CREATE TABLE Itens_Pedido (
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_venda DECIMAL(10, 2) NOT NULL, 
    CONSTRAINT pk_itens_pedido PRIMARY KEY (id_pedido, id_produto),
    CONSTRAINT fk_itens_id_pedido FOREIGN KEY (id_pedido) 
        REFERENCES pedidos (id_pedido) ON DELETE CASCADE,
    CONSTRAINT fk_itens_id_produto FOREIGN KEY (id_produto) 
        REFERENCES produtos (id_produto)
);

-- 7. TABELA (1:1): Notas_Fiscais
CREATE TABLE Notas_Fiscais (
    id_nota_fiscal INT AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    chave_acesso VARCHAR(44) NOT NULL,
    data_emissao DATETIME NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    CONSTRAINT pk_notas_fiscais PRIMARY KEY (id_nota_fiscal),
    CONSTRAINT uq_nf_pedido UNIQUE (id_pedido),
    CONSTRAINT uq_nf_chave UNIQUE (chave_acesso),
    CONSTRAINT fk_notas_fiscais_pedido FOREIGN KEY (id_pedido) 
        REFERENCES pedidos (id_pedido) ON DELETE RESTRICT
);