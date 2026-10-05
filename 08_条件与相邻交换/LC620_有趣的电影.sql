-- ================================================
-- 题目：LC620 有趣的电影
-- 考点：奇偶 + 排序
-- ================================================
-- 要求：奇数 id、description 非 boring、按 rating 降序
-- 涉及表：cinema（id, movie, description, rating）
-- 套路：
--   · 奇偶判断用 id % 2 = 1
-- ================================================

SELECT * FROM cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;
