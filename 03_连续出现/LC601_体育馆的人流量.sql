-- ================================================
-- 题目：LC601 体育馆的人流量
-- 考点：自连接 三种位置
-- ================================================
-- 要求：找出 people>=100 且连续至少 3 天的所有记录
-- 涉及表：Stadium（id, visit_date, people）
-- 套路：
--   · 连续段要考虑当前行是开头/中间/结尾三种位置，用 OR 拼起来，结果 DISTINCT 去重
-- ================================================

SELECT DISTINCT s1.*
FROM Stadium s1, Stadium s2, Stadium s3
WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people >= 100
  AND ((s1.id = s2.id-1 AND s2.id = s3.id-1)
    OR (s1.id = s2.id+1 AND s1.id = s3.id-1)
    OR (s1.id = s2.id+1 AND s2.id = s3.id+1))
ORDER BY s1.id;
