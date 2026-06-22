# Infinity Hardware – Sistema de Gestão para E-commerce

Projeto acadêmico de modelagem e implementação de Banco de Dados Relacional desenvolvido para consolidar os conceitos de herança, integridade referencial, chaves compostas e consultas complexas trabalhados ao longo do semestre.

---

## Integrantes do Grupo
* Matheus Leite dos Santos
* Nicole Kethelen Lima Cavalcante
* Samuel Rocha do Nascimento
* João Vitor Gomes de Farias

---

## O Cenário: Infinity Hardware
A **Infinity Hardware** é uma empresa especializada na comercialização de produtos eletrônicos e equipamentos tecnológicos por meio de grandes plataformas de e-commerce e marketplaces (como Amazon, Shopee e Mercado Livre). Seu catálogo inclui itens como receptores de TV, computadores, notebooks, periféricos e caixas de som.

### Funcionamento Operacional
1. **Recebimento de Pedidos:** As vendas feitas nas plataformas são integradas automaticamente ao sistema.
2. **Controle de Estoque:** Atualização automática da quantidade de produtos disponíveis após cada venda.
3. **Separação e Conferência:** Funcionários do setor de logística localizam os itens no estoque e efetuam a checagem.
4. **Emissão de Nota Fiscal:** Geração automática do documento fiscal para fins de controle e compliance.
5. **Empacotamento e Despacho:** Preparação adequada do produto para transporte pelas transportadoras parceiras.

---

## Estrutura do Projeto

O repositório está dividido nas seguintes pastas para facilitar a avaliação técnica:

* **`/modelo-logico`**: Contém o diagrama DER (Diagrama Entidade-Relacionamento) estruturado e exportado via *draw.io*, ilustrando o mapeamento de herança (tabelas de funcionários e setores) e os relacionamentos 1:1, 1:N e N:M.
* **`/scripts-sql`**: 
    * `01_estrutura_infinity.sql`: Script contendo os comandos DDL de criação do banco de dados, tabelas, restrições (`CONSTRAINTS`) e chaves.
    * `02_carga_dados_infinity.sql`: Script contendo a carga DML inicial com mais de 100 registros reais simulando a operação da loja.
    * `03_consultas_relatorios.sql`: Script DQL com relatórios gerenciais utilizando agregações (`SUM`, `AVG`, `COUNT`, `MAX`, `MIN`) combinadas com múltiplos `JOINs`.

---

## Tecnologias Utilizadas
* **SGBD:** MySQL / MariaDB
* **Modelagem:** draw.io
* **Versionamento:** Git e GitHub