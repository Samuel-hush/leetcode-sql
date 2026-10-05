-- ================================================
-- 题目：LC181 超过经理收入的员工
-- 考点：自连接
-- ================================================
-- 要求：找出工资比自己经理高的员工
-- 涉及表：Employee（id, name, salary, managerId）
-- 套路：
--   · 同表自己比自己：JOIN 自己，一边员工一边经理
-- ================================================

SELECT e1.name AS Employee
FROM Employee e1 JOIN Employee e2 ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
