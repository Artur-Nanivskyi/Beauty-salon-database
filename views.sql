CREATE VIEW employee_daily_schedule AS
SELECT
    e.name AS employee_name,
    GROUP_CONCAT(DISTINCT s.name ORDER BY s.name ASC SEPARATOR ', ') AS services_provided,
    CONCAT_WS(', ', TIME_FORMAT(MIN(a.appointment_datetime), '%H:%i'), TIME_FORMAT(MAX(a.appointment_datetime), '%H:%i'), s.kind_of_service) AS schedule_info
FROM
    appointments a
JOIN
    employees e ON a.employees_id = e.id
JOIN
    services s ON a.services_id = s.id
WHERE
    DATE(a.appointment_datetime) = CURDATE()
GROUP BY
    e.name
ORDER BY
    (SELECT AVG(rating) FROM employee_performance WHERE employee_id = e.id AND date >= CURDATE() - INTERVAL 1 MONTH) DESC;
