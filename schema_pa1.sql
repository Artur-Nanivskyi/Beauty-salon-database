CREATE TABLE services (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    duration INT NOT NULL,
    price DOUBLE(10, 2) NOT NULL
);
INSERT INTO services (id, name, description, duration, price)
VALUES
    (1, 'Haircut', 'Professional haircut service', 30, 25),
    (2, 'Manicure', 'Professional manicure service', 120, 50),
    (3, 'Skincare', 'Professional skincare service', 40, 60),
    (4,'Tanning', 'Professional tanning service', 60, 100),
    (5, 'Сurling hair', 'Professional curling hair',120,80 ),
    (6, 'Pedicure', 'Professional pedicure service', 90, 70),
    (7, 'Massage', 'Relaxing massage service', 60, 80),
    (8, 'Facial', 'Deep cleansing facial', 45, 50),
    (9, 'Waxing', 'Professional waxing service', 30, 40),
    (10, 'Hairstyling', 'Creative hairstyling service', 75, 60),
    (11, 'Makeup', 'Professional makeup service', 60, 70),
    (12, 'Nail Art', 'Creative nail art service', 90, 100),
    (13, 'Spa Package', 'Complete spa package', 120, 150),
    (14, 'Eyelash Extensions', 'Eyelash extensions service', 90, 120),
    (15, 'Teeth Whitening', 'Teeth whitening service', 45, 90);




CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    cost DOUBLE (10, 2) NOT NULL
);
INSERT INTO products (id, name, description, quantity, cost)
VALUES
    (1, 'Shampoo', 'High-quality shampoo', 50, 10.99),
    (2, 'Hair Dryer', 'Professional hair dryer', 20, 45.99),
    (3, 'Nail Polish', 'Assorted nail polish colors', 100, 5.99),
    (4, 'Conditioner', 'Moisturizing hair conditioner', 40, 8.99),
    (5, 'Flat Iron', 'Professional flat iron', 15, 65.99),
    (6, 'Cuticle Oil', 'Nourishing cuticle oil', 80, 3.99),
    (7, 'Hair Color', 'Assorted hair color shades', 60, 12.99),
    (8, 'Face Mask', 'Hydrating face mask', 50, 7.99),
    (9, 'Body Lotion', 'Soothing body lotion', 70, 9.99),
    (10, 'Sunscreen', 'Broad-spectrum sunscreen', 30, 15.99),
    (11, 'Curling Wand', 'Professional curling wand', 25, 55.99),
    (12, 'Nail File Set', 'Professional nail file set', 90, 4.99),
    (13, 'Massage Oil', 'Aromatherapy massage oil', 40, 14.99),
    (14, 'Exfoliating Scrub', 'Gentle exfoliating scrub', 55, 6.99),
    (15, 'Hair Mask', 'Deep conditioning hair mask', 35, 19.99);



CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(255),
    address TEXT
);
INSERT INTO customers (id, name, phone, email, address)
VALUES
    (1, 'John Doe', '123-456-7890', 'john.doe@example.com', '123 Main St, Cityville'),
    (2, 'Jane Smith', '987-654-3210', 'jane.smith@example.com', '456 Oak St, Townsville'),
    (3, 'Alice Johnson', '555-7890', 'alice.j@example.com', '789 Pine St, Villagetown'),
    (4, 'Bob Williams', '555-4321', 'bob.w@example.com', '101 Cedar St, Hillside'),
    (5, 'Eva Davis', '555-8765', 'eva.d@example.com', '202 Maple St, Laketown'),
    (6, 'Mike Anderson', '555-2109', 'mike.a@example.com', '303 Birch St, Parkville'),
    (7, 'Sophie Brown', '555-6543', 'sophie.b@example.com', '404 Oak St, Forestville'),
    (8, 'Charlie Smith', '555-1098', 'charlie.s@example.com', '505 Elm St, Riverdale'),
    (9, 'Olivia White', '555-5432', 'olivia.w@example.com', '606 Walnut St, Mountainview'),
    (10, 'Max Taylor', '555-9876', 'max.t@example.com', '707 Spruce St, Lakeside'),
    (11, 'Lily Harris', '555-3210', 'lily.h@example.com', '808 Pine St, Beachville'),
    (12, 'Tom Wilson', '555-7654', 'tom.w@example.com', '909 Cedar St, Valleytown'),
    (13, 'Zoe Turner', '555-2109', 'zoe.t@example.com', '1010 Birch St, Hilltop'),
    (14, 'Oscar Moore', '555-6543', 'oscar.m@example.com', '1111 Oak St, Meadowville'),
    (15, 'Mia Allen', '555-0987', 'mia.a@example.com', '1212 Elm St, Lakeshore');

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary DOUBLE(10, 2) NOT NULL
);
INSERT INTO employees (id, name, phone, email, position, salary)
VALUES
    (1, 'Stylist A', '555-1234', 'stylista@example.com', 'Stylist', 3500.00),
    (2, 'Manicurist B', '555-5678', 'manicuristb@example.com', 'Manicurist', 2800.00),
    (3, 'Stylist C', '555-1235', 'stylistc@example.com', 'Stylist', 3200.00),
    (4, 'Manicurist D', '555-5679', 'manicuristd@example.com', 'Manicurist', 2700.00),
    (5, 'Skincare Specialist', '555-2468', 'skincare@example.com', 'Skincare Specialist', 3000.00),
    (6, 'Tanning Expert', '555-1357', 'tanning@example.com', 'Tanning Expert', 2800.00),
    (7, 'Hairstylist E', '555-9876', 'hairstylise@example.com', 'Hairstylist', 3500.00),
    (8, 'Makeup Artist', '555-5432', 'makeup@example.com', 'Makeup Artist', 2500.00),
    (9, 'Nail Artist', '555-2109', 'nailartist@example.com', 'Nail Artist', 2700.00),
    (10, 'Spa Therapist', '555-6543', 'spa@example.com', 'Spa Therapist', 3200.00),
    (11, 'Eyelash Technician', '555-1098', 'eyelash@example.com', 'Eyelash Technician', 3000.00),
    (12, 'Teeth Whitening Specialist', '555-7890', 'teethwhitening@example.com', 'Teeth Whitening Specialist', 2800.00),
    (13, 'Pedicurist', '555-4321', 'pedicure@example.com', 'Pedicurist', 2600.00),
    (14, 'Massage Therapist', '555-8765', 'massage@example.com', 'Massage Therapist', 3000.00),
    (15, 'Facialist', '555-3210', 'facial@example.com', 'Facialist', 2700.00);


CREATE TABLE appointments (
    id INT PRIMARY KEY,
    emploees_id INT,
    customers_id INT,
    services_id INT,
    appointment_datetime DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (emploees_id) REFERENCES employees(id),
    FOREIGN KEY (customers_id) REFERENCES customers(id),
    FOREIGN KEY (services_id) REFERENCES services(id));

    -- Inserting sample data into the appointments table
INSERT INTO appointments (id, emploees_id, customers_id, services_id, appointment_datetime, status)
VALUES
    (1, 1, 1, 1, '2024-04-17 09:00:00', 'Cancelled'),
    (2, 2, 2, 2, '2024-04-17 10:30:00', 'Completed'),
    (3, 3, 3, 3, '2024-04-18 11:00:00', 'Completed'),
    (4, 4, 4, 4, '2024-04-18 13:30:00', 'Cancelled'),
    (5, 5, 5, 5, '2024-04-19 15:00:00', 'Completed'),
    (6, 1, 2, 3, '2024-04-20 09:30:00', 'Cancelled'),
    (7, 2, 3, 4, '2024-04-20 11:00:00',  'Completed'),
    (8, 3, 4, 5, '2024-04-21 12:00:00', ' Completed'),
    (10, 5, 1, 2, '2024-04-22 15:00:00', 'Cancelled'),
    (11, 1, 3, 4, '2024-04-23 10:00:00', 'Completed'),
    (12, 2, 4, 5, '2024-04-23 11:30:00', 'Completed'),
    (13, 3, 5, 1, '2024-04-24 13:00:00', 'Cancelled'),
    (14, 4, 1, 2, '2024-04-24 14:30:00', 'Completed'),
    (15, 5, 2, 3, '2024-04-25 16:00:00', 'Cancelled'),
    (16, 1, 4, 4, '2024-04-25 17:30:00', 'Completed');

CREATE TABLE payments (
    id INT PRIMARY KEY,
    customer_id INT,
    appointment_id INT,
    amount DOUBLE(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (appointment_id) REFERENCES appointments(id)
);
INSERT INTO payments (id, customer_id, appointment_id, amount, payment_method, payment_date)
VALUES
    (1, 1, 1, 25.00, 'Credit Card', '2024-02-14'),
    (2, 2, 2, 50.00, 'Cash', '2024-02-15'),
    (3, 3, 3, 60.00, 'Credit Card', '2024-02-16'),
    (4, 4, 4, 80.00, 'Cash', '2024-02-17'),
    (5, 5, 5, 70.00, 'Credit Card', '2024-02-18'),
    (6, 6, 6, 50.00, 'Cash', '2024-02-19'),
    (7, 7, 7, 80.00, 'Credit Card', '2024-02-20'),
    (8, 8, 8, 40.00, 'Cash', '2024-02-21'),
    (9, 9, 9, 30.00, 'Credit Card', '2024-02-22'),
    (10, 10, 10, 60.00, 'Cash', '2024-02-23'),
    (11, 11, 11, 70.00, 'Credit Card', '2024-02-24'),
    (12, 12, 12, 100.00, 'Cash', '2024-02-25'),
    (13, 13, 13, 150.00, 'Credit Card', '2024-02-26'),
    (14, 14, 14, 120.00, 'Cash', '2024-02-27'),
    (15, 15, 15, 90.00, 'Credit Card', '2024-02-28');

