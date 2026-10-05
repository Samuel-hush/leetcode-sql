-- ================================================
-- 题目：LC178 分数排名
-- 考点：窗口函数 DENSE_RANK
-- ================================================
-- 要求：Scores 表按分数降序排名，相同分数名次相同（1,1,2,3…）
-- 涉及表：Scores（id, score）
-- 套路：
--   · 并列且连续用 DENSE_RANK，并列跳号用 RANK，不并列用 ROW_NUMBER
-- ================================================

SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores;
