SELECT
    e.employee_id,
    e.service_id,
    s.name,
    GROUP_CONCAT(p.name) AS related_products
FROM
    employees_services AS e
JOIN
    services AS s ON e.service_id = s.id
JOIN
    services_products AS sp ON e.service_id = sp.service_id
JOIN
    products AS p ON sp.product_id = p.id
GROUP BY
    e.employee_id, e.service_id;



-- select №2 for assignment 2
SELECT s.id AS service_id, name, COUNT(sp.product_id) AS product_count
FROM services s
LEFT JOIN services_products sp ON s.id = sp.service_id
GROUP BY s.id, s.name;
