SELECT
    customers.id AS customer_id,
    customers.name AS customer_name,
    customers.phone AS customer_phone,
    customers.email AS customer_email,
    SUM(payments.amount) AS total_revenue
FROM
    customers customers
JOIN
    payments payments ON customers.id = payments.customer_id
JOIN
    appointments appointments ON payments.appointment_id = appointments.id
WHERE
    appointments.appointment_datetime >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY
    customers.id, customers.name, customers.phone, customers.email
ORDER BY
    total_revenue DESC
LIMIT 3;
