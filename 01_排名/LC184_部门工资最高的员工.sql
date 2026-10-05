-- ================================================
-- 题目：LC184 部门工资最高的员工
-- 考点：子查询 + MAX
-- ================================================
-- 要求：找出每个部门工资最高的员工（姓名、部门、工资）
-- 涉及表：Employee（id, name, salary, departmentId）、Department（id, name）
-- 套路：
--   · 每组取最大：先 GROUP BY 组 + MAX，再用 (组,值) IN 子查询反查人
-- ================================================

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE (e.departmentId, e.salary) IN
      (SELECT departmentId, MAX(salary) FROM Employee GROUP BY departmentId);
