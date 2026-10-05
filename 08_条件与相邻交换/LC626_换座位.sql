-- ================================================
-- 题目：LC626 换座位
-- 考点：CASE + 奇偶
-- ================================================
-- 要求：相邻座位互换（1↔2、3↔4…）
-- 涉及表：Seat（id, student）
-- 套路：
--   · 相邻交换的坑在最后一个奇数位，要单独判断 id = MAX(id)
-- ================================================

SELECT
  CASE WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN id
       WHEN id % 2 = 1 THEN id + 1
       ELSE id - 1
  END AS id,
  student
FROM Seat
ORDER BY id;
