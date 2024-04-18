# Beauty salon database

### Table of content
[1.Practical assignment 1](#practical-assignment1)

[2.Practical assignment 2](#practical-assignment2)

[3.Practical assignment 3](#practical-assignment3)

[4.Practical assignment 4](#practical-assignment4)

[5.Practical assignment 5](#practical-assignment5)

## General Information
- Welcome to my repo!
- This schema provides a basic structure to manage the essential aspects of a beauty salon's operations. It allows for the tracking of services, products, customers, appointments, payments, and employees. You can further expand and customize this schema based on specific requirements and additional features of your salon management system.
<img width="617" alt="Знімок екрана 2024-04-18 о 16 55 35" src="https://github.com/Artur-Nanivskyi/Beauty-salon-database/assets/148461779/9a198dc6-c3da-426f-b7e8-de8a305828d5">

<a name="practical-assignment1"></a>
### Practical assignment 1 
This assigment contains schema with following tables!

1. **Services Table**:
   - Stores information about the services offered by the salon, including name, description, duration, and price.

2. **Products Table**:
   - Contains details about the products sold or used by the salon, including name, description, quantity, and cost.

3. **Customers Table**:
   - Stores information about salon customers, such as name, phone number, email address, and physical address.

4. **Appointments Table**:
   - Records details of appointments booked at the salon, including employee ID, customer ID, service ID, date, time, and status.

5. **Payments Table**:
   - Stores information about payments made by customers, including customer ID, appointment ID, amount, method, and date.

6. **Employees Table**:
   - Contains details about salon employees, including name, phone number, email address, position, and salary.

<a name="practical-assignment2"></a>
## Practical assignment 2
This assignment contains schema with following tables!

7. **Services_Products Table**:
   - Establishes a many-to-many relationship between services and products, indicating which products are associated with each service.

8. **Employees_Services Table**:
   - Establishes a many-to-many relationship between employees and services, indicating which services each employee can provide.
  

<a name="practical-assignment3"></a>
### Practical Assignment 3

This practical assignment focuses on SQL subqueries and set operations. It includes the following tasks:

1. **Queries for clauses with non-correlated subquery results**:
- = with non-correlated subquery result
- IN with non-correlated subquery result
- NOT IN with non-correlated subquery result
- EXISTS with non-correlated subquery result
- NOT EXISTS with non-correlated subquery result
2. **Queries for clauses with correlated subquery results**:
- = with correlated subquery result
- IN with correlated subquery result
- NOT IN with correlated subquery result
- EXISTS with correlated subquery result
- NOT EXISTS with correlated subquery result
  
**SELECT queries that include the clause UNION / UNION ALL / INTERSECT / EXCEPT**

<a name="practical-assignment4"></a>
### Practical assignment 4

This assignment focuses on demonstrating proficiency in working with stored procedures and implementing transactional mechanisms in SQL. The assignment comprises the following components:

1. **procedures_pa4.sql**:
- This file contains SQL scripts for implementing stored procedures. It includes examples showcasing how to work with various parameter types such as IN, OUT, and INOUT.
2. **executions_pa4.sql**:
- This file includes SQL scripts demonstrating the execution of stored procedures and the transactional mechanism. Each script is accompanied by readable comments explaining the purpose of the script and the expected result.

<a name="practical-assignment5"></a>
### Practical assignment 5


1. **Employee Daily Schedule View**:

This view presents the daily schedule for each employee, automatically identifying the current day for real-time updates. The schedule includes:

- Employee Name
- Services Provided (comma-separated)
- Time Slot (start time to end time)
- Service Type
- The ordering of the schedule prioritizes employees based on their position or performance over the last month. The view enhances scheduling efficiency and service organization.
