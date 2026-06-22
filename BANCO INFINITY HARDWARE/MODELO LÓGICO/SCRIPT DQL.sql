-- ==========================================================
-- SCRIPT DQL - ESTATÍSTICAS E RELATÓRIOS
-- PROJETO: INFINITY HARDWARE
-- ==========================================================

USE infinity_hardware_db;

-- ==========================================================
-- 1. ESTATÍSTICAS DE PREÇOS DOS PRODUTOS
-- AVG, MAX e MIN
-- ==========================================================

SELECT
categoria,
ROUND(AVG(preco_unitario),2) AS preco_medio,
MAX(preco_unitario) AS maior_preco,
MIN(preco_unitario) AS menor_preco
FROM produtos
GROUP BY categoria;

-- ==========================================================
-- 2. ESTATÍSTICAS GERAIS DO ESTOQUE
-- ==========================================================

SELECT
ROUND(AVG(quantidade_estoque),2) AS media_estoque,
MAX(quantidade_estoque) AS maior_estoque,
MIN(quantidade_estoque) AS menor_estoque
FROM produtos;

-- ==========================================================
-- 3. RELATÓRIO DE QUANTIDADE DE PRODUTOS POR CATEGORIA
-- COUNT
-- ==========================================================

SELECT
categoria,
COUNT(*) AS total_produtos
FROM produtos
GROUP BY categoria
ORDER BY total_produtos DESC;

-- ==========================================================
-- 4. VALOR TOTAL EM ESTOQUE POR CATEGORIA
-- SUM
-- ==========================================================

SELECT
categoria,
SUM(preco_unitario * quantidade_estoque) AS valor_total_estoque
FROM produtos
GROUP BY categoria
ORDER BY valor_total_estoque DESC;

-- ==========================================================
-- 5. TOTAL DE PEDIDOS POR MARKETPLACE
-- COUNT
-- ==========================================================

SELECT
marketplace_origem,
COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY marketplace_origem;

-- ==========================================================
-- 6. FATURAMENTO TOTAL POR PEDIDO
-- JOIN + SUM
-- ==========================================================

SELECT
p.id_pedido,
p.marketplace_origem,
SUM(ip.quantidade * ip.preco_venda) AS valor_total
FROM pedidos p
INNER JOIN Itens_Pedido ip
ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido, p.marketplace_origem
ORDER BY valor_total DESC;

-- ==========================================================
-- 7. PRODUTOS MAIS VENDIDOS
-- JOIN + SUM
-- ==========================================================

SELECT
pr.id_produto,
pr.nome_produto,
pr.categoria,
SUM(ip.quantidade) AS quantidade_vendida
FROM produtos pr
INNER JOIN Itens_Pedido ip
ON pr.id_produto = ip.id_produto
GROUP BY
pr.id_produto,
pr.nome_produto,
pr.categoria
ORDER BY quantidade_vendida DESC;

-- ==========================================================
-- 8. QUANTIDADE DE PEDIDOS PROCESSADOS POR FUNCIONÁRIO
-- JOIN + COUNT
-- ==========================================================

SELECT
f.id_funcionario,
f.nome,
COUNT(p.id_pedido) AS total_pedidos_processados
FROM funcionarios f
INNER JOIN G_Entrega ge
ON f.id_funcionario = ge.id_funcionario
LEFT JOIN pedidos p
ON ge.id_funcionario = p.id_funcionario_entrega
GROUP BY
f.id_funcionario,
f.nome
ORDER BY total_pedidos_processados DESC;

-- ==========================================================
-- 9. VALOR MÉDIO, MAIOR E MENOR NOTA FISCAL
-- AVG, MAX e MIN
-- ==========================================================

SELECT
ROUND(AVG(valor_total),2) AS valor_medio_nf,
MAX(valor_total) AS maior_nf,
MIN(valor_total) AS menor_nf
FROM Notas_Fiscais;

-- ==========================================================
-- 10. RELATÓRIO COMPLETO DE PEDIDOS
-- JOIN ENTRE 4 TABELAS
-- ==========================================================

SELECT
p.id_pedido,
p.marketplace_origem,
p.status_pedido,
f.nome AS funcionario_responsavel,
pr.nome_produto,
ip.quantidade,
ip.preco_venda,
(ip.quantidade * ip.preco_venda) AS subtotal
FROM pedidos p
INNER JOIN G_Entrega ge
ON p.id_funcionario_entrega = ge.id_funcionario
INNER JOIN funcionarios f
ON ge.id_funcionario = f.id_funcionario
INNER JOIN Itens_Pedido ip
ON p.id_pedido = ip.id_pedido
INNER JOIN produtos pr
ON ip.id_produto = pr.id_produto
ORDER BY p.id_pedido;

-- ==========================================================
-- 11. FATURAMENTO POR MARKETPLACE
-- JOIN + SUM
-- ==========================================================

SELECT
p.marketplace_origem,
SUM(ip.quantidade * ip.preco_venda) AS faturamento_total
FROM pedidos p
INNER JOIN Itens_Pedido ip
ON p.id_pedido = ip.id_pedido
GROUP BY p.marketplace_origem
ORDER BY faturamento_total DESC;

-- ==========================================================
-- 12. QUANTIDADE DE PRODUTOS VENDIDOS POR CATEGORIA
-- JOIN + COUNT + SUM
-- ==========================================================

SELECT
pr.categoria,
COUNT(DISTINCT pr.id_produto) AS produtos_diferentes,
SUM(ip.quantidade) AS total_unidades_vendidas
FROM produtos pr
INNER JOIN Itens_Pedido ip
ON pr.id_produto = ip.id_produto
GROUP BY pr.categoria
ORDER BY total_unidades_vendidas DESC;