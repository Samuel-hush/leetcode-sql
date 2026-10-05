-- ================================================
-- 题目：LC177 第N高的薪水
-- 考点：LIMIT N,1 + 函数
-- ================================================
-- 要求：写函数，输入 N 返回第 N 高薪水
-- 涉及表：Employee（id, salary）
-- 套路：
--   · LIMIT N,1 的 N 是从 0 开始的偏移，第 N 高要先 SET N = N-1
-- ================================================

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
    SELECT IFNULL((SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT N, 1), NULL)
  );
END
