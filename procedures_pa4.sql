-- assignment 4 stored procedure which demonstrates how to work with IN/OUT parametr

DELIMITER //

CREATE PROCEDURE get_customer_details(
    IN cust_id INT,
    OUT cust_name VARCHAR(255),
    OUT cust_phone VARCHAR(20),
    OUT cust_email VARCHAR(255),
    OUT cust_address TEXT
)
BEGIN
    SELECT name, phone, email, address
    INTO cust_name, cust_phone, cust_email, cust_address
    FROM customers
    WHERE id = cust_id;
END//

DELIMITER ;






DELIMITER //

CREATE PROCEDURE update_appointment_employees(INOUT appointment_id_1 INT, INOUT appointment_id_2 INT)
BEGIN
    DECLARE employee_id_1 INT;
    DECLARE employee_id_2 INT;
    DECLARE service_id_1 INT;
    DECLARE service_id_2 INT;
    DECLARE can_perform_1 BOOLEAN;
    DECLARE can_perform_2 BOOLEAN;
    DECLARE rollback_done BOOLEAN DEFAULT FALSE;

    -- Start transaction
    START TRANSACTION;

    -- Update employees for appointment 1
    SELECT employee_id, service_id INTO employee_id_1, service_id_1
    FROM appointments a
    JOIN employees_services es ON a.services_id = es.service_id
    WHERE a.id = appointment_id_1
    LIMIT 1;

    SET can_perform_1 = EXISTS (
        SELECT 1 FROM employees_services
        WHERE employee_id = employee_id_1 AND service_id = service_id_1
    );

    -- Rollback if the assigned employee can't perform the service for appointment 1
    IF NOT can_perform_1 AND NOT rollback_done THEN
        ROLLBACK;
        SET appointment_id_1 = -1; -- Set appointment_id_1 to an invalid value
        SET rollback_done = TRUE; -- Mark rollback as done
    END IF;

    -- Update employees for appointment 2
    SELECT employee_id, service_id INTO employee_id_2, service_id_2
    FROM appointments a
    JOIN employees_services es ON a.services_id = es.service_id
    WHERE a.id = appointment_id_2
    LIMIT 1;

    SET can_perform_2 = EXISTS (
        SELECT 1 FROM employees_services
        WHERE employee_id = employee_id_2 AND service_id = service_id_2
    );

    -- Rollback if the assigned employee can't perform the service for appointment 2
    IF NOT can_perform_2 AND NOT rollback_done THEN
        ROLLBACK;
        SET appointment_id_2 = -1; -- Set appointment_id_2 to an invalid value
        SET rollback_done = TRUE; -- Mark rollback as done
    END IF;

    -- Update employees for appointment 1
    UPDATE appointments
    SET id = employee_id_1
    WHERE id = appointment_id_1;

    -- Update employees for appointment 2
    UPDATE appointments
    SET id = employee_id_2
    WHERE id = appointment_id_2;

    -- Commit transaction
    COMMIT;
END //

DELIMITER ;
