-- ================================================
-- 题目：LC175 组合两个表
-- 考点：LEFT JOIN
-- ================================================
-- 要求：无论有没有地址，都返回每个人的姓名和城市/州
-- 涉及表：Person（personId, firstName, lastName）、Address（addressId, personId, city, state）
-- 套路：
--   · 保留左表全量用 LEFT JOIN，右表没匹配就是 NULL
-- ================================================

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p LEFT JOIN Address a ON p.personId = a.personId;
