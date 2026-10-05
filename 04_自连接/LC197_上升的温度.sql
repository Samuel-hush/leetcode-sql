-- ================================================
-- 题目：LC197 上升的温度
-- 考点：自连接 + DATEDIFF
-- ================================================
-- 要求：找出今天温度比昨天高的 id
-- 涉及表：Weather（id, recordDate, temperature）
-- 套路：
--   · 相邻两天用 DATEDIFF(今天,昨天)=1，别用 id 差 1（日期可能不连续）
-- ================================================

SELECT w1.id
FROM Weather w1 JOIN Weather w2
  ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
