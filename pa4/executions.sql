CALL get_customer_details(1, @cust_name, @cust_phone, @cust_email, @cust_address);
SELECT @cust_name, @cust_phone, @cust_email, @cust_address;




-- Example 1: Update both appointments
CALL update_appointment_employees(1, 2);

-- Example 2: Update only one appointment (first appointment fails)
CALL update_appointment_employees(-1, 3);

-- Example 3: Update only one appointment (second appointment fails)
CALL update_appointment_employees(4, -1);

-- Example 4: Both appointments fail to update
CALL update_appointment_employees(-1, -1);

