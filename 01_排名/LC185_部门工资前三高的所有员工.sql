-- ================================================
-- 题目：LC185 部门工资前三高的所有员工
-- 考点：窗口函数 PARTITION BY
-- ================================================
-- 要求：找出每个部门工资前三高的所有员工（并列算）
-- 涉及表：Employee（id, name, salary, departmentId）、Department（id, name）
-- 套路：
--   · 每组取前 N：DENSE_RANK() OVER (PARTITION BY 组 ORDER BY 值 DESC) 外层 WHERE rk<=N
-- ================================================

SELECT Department, Employee, Salary
FROM (
  SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
         DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rk
  FROM Employee e JOIN Department d ON e.departmentId = d.id
) t
WHERE rk <= 3;
