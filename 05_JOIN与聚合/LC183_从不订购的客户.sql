-- ================================================
-- 题目：LC183 从不订购的客户
-- 考点：LEFT JOIN + IS NULL
-- ================================================
-- 要求：找出从没下过单的客户
-- 涉及表：Customers（id, name）、Orders（id, customerId）
-- 套路：
--   · 找没关联上的：LEFT JOIN ... WHERE 右表主键 IS NULL
-- ================================================

SELECT c.name AS Customers
FROM Customers c LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;
