-- Case & Expression
-- Gives value when condition is met or provide null
-- when no condition is met

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN condition3 THEN result3
    ELSE other_result
END;

SELECT cust_id,amount
CASE 
    WHEN amount > 100 THEN "Expenside"
    WHEN amount = 100 THEN "Moderate"
    ELSE "Inexpensive"
END AS productStatus
FROM payment;

-- =========================================

-- Providing value instead of condition

CASE Expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    WHEN value3 THEN result3
    ELSE other_result
END;

SELECT cust_id,amount
CASE amount
    WHEN 500  THEN "Prime Customer"
    WHEN 100 THEN "Plus Customer"
    ELSE "Regular Customer"
END AS customerStatus
FROM payment;