-- SELECT №1: Select appointments for a customer named "John Doe" (= with non-correlated subqueries result)
SELECT id
FROM appointments
WHERE customers_id = (SELECT id FROM customers WHERE name = 'John Doe');

-- SELECT №2: Select customers who made payments via "Credit Card" (IN with non-correlated subqueries result)
SELECT id, name
FROM customers
WHERE id IN (SELECT customer_id FROM payments WHERE payment_method = 'Credit Card');

-- SELECT №3: Select services that are not associated with any product (NOT IN with non-correlated subqueries result)
SELECT id, name
FROM services
WHERE id NOT IN (SELECT service_id FROM services_products);

-- SELECT №4: Select employees who have appointments (EXISTS with non-correlated subqueries result)
SELECT id, name
FROM employees e
WHERE EXISTS (SELECT * FROM appointments a WHERE e.id = a.emploees_id);

-- SELECT №5: Select customers who have no appointments ( NOT EXISTS with non-correlated subqueries result)
SELECT id, name
FROM customers c
WHERE NOT EXISTS (SELECT * FROM appointments a WHERE c.id = a.customers_id);

-- SELECT №6: Select services with the same duration as appointments  ( = with correlated subqueries result)
SELECT id, name
FROM services s
WHERE duration = (SELECT duration FROM appointments a WHERE s.id = a.services_id);

-- SELECT №7: Select employees associated with a specific appointment  (IN with correlated subqueries result)
SELECT id, name
FROM employees
WHERE id IN (SELECT emploees_id FROM appointments WHERE id = 1);

-- SELECT №8: Select services not associated with a specific product ( NOT IN with correlated subqueries result)
SELECT id, name
FROM services
WHERE id NOT IN (SELECT id FROM services_products WHERE product_id = 1);

-- SELECT №9: Select customers with cancelled appointments (EXISTS with correlated subqueries result)
SELECT id, name
FROM customers c
WHERE EXISTS (SELECT id FROM appointments WHERE customers_id = c.id AND status = 'Cancelled');

-- SELECT №10: Select appointments with no associated payments ( NOT EXISTS with correlated subqueries result)
SELECT id
FROM appointments a
WHERE NOT EXISTS (SELECT id FROM payments WHERE appointment_id = a.id);


-- UPDATE №1 = with non-correlated subqueries result
UPDATE services
SET price = price * 1.1
WHERE id IN (SELECT services_id FROM appointments WHERE services_id = services.id);

-- UPDATE №2 IN with non-correlated subqueries result
UPDATE products
SET quantity = quantity + 10
WHERE id IN (SELECT product_id FROM services_products WHERE service_id = 5);

-- UPDATE №3 NOT IN with non-correlated subqueries result
UPDATE employees
SET salary = salary * 1.05
WHERE id NOT IN (SELECT emploees_id FROM appointments WHERE id = 1);

-- UPDATE №4 EXISTS with non-correlated subqueries result
UPDATE customers
SET email = 'newemail@example.com'
WHERE id IN (SELECT customers_id FROM appointments WHERE status = 'Cancelled');

-- UPDATE №5  NOT EXISTS with non-correlated subqueries result
UPDATE appointments
SET status = 'Completed'
WHERE id NOT IN (SELECT appointment_id FROM payments);

-- UPDATE №6  = with correlated subqueries result
UPDATE products
SET cost = cost * 1.1
WHERE id = (SELECT product_id FROM services_products WHERE service_id = 1);

-- UPDATE №7 IN with correlated subqueries result
UPDATE appointments
SET status = 'Cancelled'
WHERE id IN (SELECT appointment_id FROM payments WHERE payment_method = 'Cash');

-- UPDATE №8 NOT IN with correlated subqueries result
UPDATE customers
SET phone = '123-456-7890'
WHERE id NOT IN (SELECT customer_id FROM payments WHERE payment_method = 'Credit Card');

-- UPDATE №9 EXISTS with correlated subqueries resul
UPDATE services
SET description = 'Updated description'
WHERE id IN (SELECT services_id FROM appointments WHERE status = 'Completed');

-- UPDATE №10 NOT EXISTS with correlated subqueries resul
UPDATE appointments
SET appointment_datetime = '2025-01-01 10:00:00'
WHERE id NOT IN (SELECT appointment_id FROM payments);


-- Disable foreign key restriction
SET FOREIGN_KEY_CHECKS = 0;

-- DELETE №1  = with non-correlated subqueries result
DELETE FROM customers
WHERE id = (SELECT customers_id FROM appointments WHERE status = 'Cancelled');

-- DELETE №2 IN with non-correlated subqueries result
DELETE FROM products
WHERE id IN (SELECT product_id FROM services_products WHERE service_id = 5);

-- DELETE №3 NOT IN with non-correlated subqueries result
DELETE FROM employees
WHERE id NOT IN (SELECT emploees_id FROM appointments WHERE id = 2);

-- DELETE №4 EXISTS with non-correlated subqueries result
DELETE FROM appointments
WHERE id IN (SELECT appointment_id FROM payments WHERE amount < 50);

-- DELETE №5 NOT EXISTS with non-correlated subqueries result
DELETE FROM services
WHERE id NOT IN (SELECT services_id FROM appointments);

-- DELETE №6  = with correlated subqueries result
DELETE FROM appointments
WHERE id IN (SELECT id FROM appointments WHERE status = 'Completed');

-- DELETE №7 IN with correlated subqueries result
DELETE FROM appointments
WHERE id IN (SELECT appointment_id FROM payments WHERE payment_method = 'Cash');

-- DELETE №8  NOT IN with correlated subqueries result
DELETE FROM customers
WHERE id NOT IN (SELECT customer_id FROM payments WHERE payment_method = 'Credit Card');

-- DELETE №9 EXISTS with correlated subqueries resul
DELETE FROM services_products
WHERE service_id IN (SELECT services_id FROM appointments);

-- DELETE №10 NOT EXISTS with correlated subqueries resul
DELETE FROM appointments
WHERE id NOT IN (SELECT appointment_id FROM payments);

-- Enable foreign key constraint
SET FOREIGN_KEY_CHECKS = 1;


-- UNION: Combine results of two SELECT statements, removing duplicate rows
(SELECT id, name FROM customers)
UNION
(SELECT id, name FROM employees);

-- UNION ALL: Combine results of two SELECT statements, keeping duplicate rows
(SELECT id, name FROM customers)
UNION ALL
(SELECT id, name FROM employees);

-- INTERSECT: Return rows that are common to two SELECT statements
(SELECT id, name FROM customers)
INTERSECT
(SELECT id, name FROM employees);

-- EXCEPT: Return distinct rows that are in the first SELECT statement but not in the second
(SELECT id, name FROM customers)
EXCEPT
(SELECT id, name FROM employees);
