-- ================================================
-- 题目：LC176 第二高的薪水
-- 考点：LIMIT OFFSET + IFNULL
-- ================================================
-- 要求：返回第二高薪水，不存在则返回 NULL
-- 涉及表：Employee（id, salary）
-- 套路：
--   · DISTINCT 去重 → ORDER BY DESC → LIMIT 1,1 取第二条 → IFNULL 兜底 NULL
-- ================================================

SELECT IFNULL(
  (SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT 1, 1),
  NULL
) AS SecondHighestSalary;
