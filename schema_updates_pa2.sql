
-- many-to-many relationships with tables
CREATE TABLE services_products (
    service_id INT,
    product_id INT,
    PRIMARY KEY (service_id, product_id),
    FOREIGN KEY (service_id) REFERENCES services(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO services_products (service_id, product_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15);

-- many-to-many relationships with tables
CREATE TABLE employees_services (
    employee_id INT,
    service_id INT,
    PRIMARY KEY (employee_id, service_id),
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (service_id) REFERENCES services(id)
);

INSERT INTO employees_services (employee_id, service_id) VALUES
    (7, 1),
    (7, 10),
    (7, 15),
    (8, 11),
    (8, 14),
    (9, 2),
    (9, 12),
    (10, 3),
    (10, 8),
    (11, 4),
    (11, 13),
    (12, 5),
    (12, 11),
    (13, 6),
    (13, 9);

