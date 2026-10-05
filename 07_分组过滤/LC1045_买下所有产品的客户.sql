-- ================================================
-- 题目：LC1045 买下所有产品的客户
-- 考点：GROUP BY + 子查询
-- ================================================
-- 要求：找出买了所有产品的客户
-- 涉及表：Customer（customer_id, product_key）、Product（product_key）
-- 套路：
--   · 买了全部：该客户去重产品数 = 产品总数，用子查询比
-- ================================================

SELECT customer_id FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);
