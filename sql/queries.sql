-- SQL Queries
-- Учебные примеры для Support Engineer

-- 1. Получить все записи
SELECT *
FROM users;

-- 2. Получить пользователей с определённым статусом
SELECT id, name, status
FROM users
WHERE status = 'active';

-- 3. Отсортировать пользователей
SELECT id, name
FROM users
ORDER BY name ASC;

-- 4. Ограничить количество результатов
SELECT *
FROM users
LIMIT 10;

-- 5. Найти записи с NULL
SELECT *
FROM users
WHERE email IS NULL;

-- 6. INNER JOIN
-- Получаем пользователей и связанные с ними заказы
SELECT users.id, users.name, orders.id AS order_id
FROM users
INNER JOIN orders
    ON users.id = orders.user_id;

-- 7. LEFT JOIN
-- Получаем всех пользователей,
-- даже если у них нет заказов
SELECT users.id, users.name, orders.id AS order_id
FROM users
LEFT JOIN orders
    ON users.id = orders.user_id;

-- 8. Подсчитать количество пользователей
SELECT COUNT(*) AS user_count
FROM users;

-- 9. Группировка данных
SELECT status, COUNT(*) AS count
FROM users
GROUP BY status;

-- 10. Фильтрация групп
SELECT status, COUNT(*) AS count
FROM users
GROUP BY status
HAVING COUNT(*) > 10;

-- 11. Поиск конкретного пользователя
SELECT *
FROM users
WHERE id = 123;

-- 12. Поиск по части строки
SELECT *
FROM users
WHERE name LIKE '%ivan%';

-- 13. Получить последние записи
SELECT *
FROM logs
ORDER BY created_at DESC
LIMIT 20;
