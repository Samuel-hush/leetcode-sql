-- ================================================
-- 题目：LC262 行程和用户
-- 考点：占比 + 多表过滤
-- ================================================
-- 要求：求每天未被禁用户的行程取消率（status=cancelled 算取消）
-- 涉及表：Trips（id, client_id, driver_id, city_id, status, request_at）、Users（users_id, banned, role）
-- 套路：
--   · 占比类：SUM(条件转0/1)/COUNT(*)，再 ROUND；过滤被禁用户用 JOIN 加 banned=No
-- ================================================

SELECT t.request_at AS Day,
       ROUND(SUM(t.status != 'completed') / COUNT(*), 2) AS "Cancellation Rate"
FROM Trips t
JOIN Users c ON t.client_id = c.users_id AND c.banned = 'No'
JOIN Users d ON t.driver_id = d.users_id AND d.banned = 'No'
WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at;
