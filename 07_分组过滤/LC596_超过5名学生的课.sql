-- ================================================
-- 题目：LC596 超过5名学生的课
-- 考点：GROUP BY + COUNT DISTINCT
-- ================================================
-- 要求：找出学生数（去重）≥5 的课程
-- 涉及表：Courses（student, class）
-- 套路：
--   · 学生可能重复选课，用 COUNT(DISTINCT student) 而不是 COUNT(*)
-- ================================================

SELECT class FROM Courses GROUP BY class HAVING COUNT(DISTINCT student) >= 5;
