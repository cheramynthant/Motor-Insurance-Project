-- USE CASE QUERIES

-- 1. List all active customers
SELECT first_name, last_name, email FROM user_personal_info WHERE status = 'active';

-- 2. Fetch vehicle models by a specific make
SELECT vm.model_desc FROM vehicle_model vm JOIN vehicle_make vmk ON vm.make_id = vmk.make_id WHERE vmk.make_desc = 'Tata Motors';

-- 3. Show all brokers operating in active status
SELECT broker_name, broker_org_name FROM broker_info WHERE status = 'active';

-- 4. List all quotes for a particular user
SELECT quote_id, final_premium, quote_date FROM quote_info WHERE user_id = 1;

-- 5. Get total premium paid by each user
SELECT up.user_id, up.first_name, SUM(ps.total_premium) AS total_paid
FROM premium_summary ps
JOIN quote_info qi ON qi.quote_id = ps.quote_id
JOIN user_personal_info up ON qi.user_id = up.user_id
GROUP BY up.user_id;

-- 6. Find vehicles with inactive models
SELECT vm.model_desc FROM vehicle_model vm WHERE status = 'inactive';

-- 7. Get average premium for each plan type
SELECT coverage_type, AVG(base_premium) AS avg_base
FROM product_config
GROUP BY coverage_type;


-- 8. List all users with their city and state
SELECT u.first_name, u.last_name, c.city_name, s.state_name
FROM user_personal_info u
JOIN city c ON u.city = c.city_id
JOIN state s ON u.state = s.state_id;

-- 9. Users Who Paid Above-Average Premium
SELECT first_name, last_name
FROM user_personal_info
WHERE user_id IN (
    SELECT qi.user_id
    FROM quote_info qi
    JOIN premium_summary ps ON qi.quote_id = ps.quote_id
    GROUP BY qi.user_id
    HAVING SUM(ps.total_premium) > (
        SELECT AVG(total_premium) FROM premium_summary
    )
);


-- 10. List models along with their make
SELECT vm.model_desc, vmk.make_desc FROM vehicle_model vm JOIN vehicle_make vmk ON vm.make_id = vmk.make_id;

-- 11. Find top 3 users with highest total premium
SELECT up.first_name, SUM(ps.total_premium) AS total_premium
FROM premium_summary ps
JOIN quote_info qi ON qi.quote_id = ps.quote_id
JOIN user_personal_info up ON qi.user_id = up.user_id
GROUP BY up.user_id
ORDER BY total_premium DESC
LIMIT 3;

-- 12 List all quotes along with product config
SELECT q.quote_id, q.final_premium, pc.product_name
FROM quote_info q
JOIN product_config pc ON q.config_id = pc.config_id;

-- 13.City with the Highest Number of Users
SELECT c.city_name, COUNT(u.user_id) AS user_count
FROM user_personal_info u
JOIN city c ON u.city = c.city_id
GROUP BY c.city_name
ORDER BY user_count DESC
LIMIT 1;


-- 14.Procedure: Get all quotes by user
DELIMITER //
CREATE PROCEDURE GetQuotesByUser(IN uid INT)
BEGIN
    SELECT quote_id, final_premium, quote_date FROM quote_info WHERE user_id = uid;
END //
DELIMITER ;

CALL GetQuotesByUser(5);

-- 15. Function: Calculate premium with tax
DELIMITER //
CREATE FUNCTION CalculateTotalPremium(base DECIMAL(10,2), tax DECIMAL(5,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN base + (base * tax / 100);
END //
DELIMITER ;

SELECT CalculateTotalPremium(5000.00, 18.0);
