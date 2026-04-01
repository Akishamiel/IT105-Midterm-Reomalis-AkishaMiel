# Medical Appointment Scheduling System

## Project Title
Appointment System Database Design

## System Description
This project is a relational database designed to handle the core operations of a medical clinic or hospital. It allows administrators to manage patient records, doctor profiles, medical services offered, and schedule appointments efficiently while avoiding data anomalies.

## Tables Description
The database (`AppointmentSystemDB`) consists of 4 main tables:
1.  **Patients:** Stores personal and contact information of the clinic's patients.
2.  **Doctors:** Stores information about the medical staff, including their specializations.
3.  **Services:** Acts as a catalog of medical procedures/consultations offered, along with their prices.
4.  **Appointments:** The central transaction table linking Patients, Doctors, and Services via Foreign Keys to record scheduled visits.

## Features Implemented
* **Relational Database Architecture:** Uses Primary and Foreign keys to maintain referential integrity.
* **Normalized Data:** Structured from UNF up to 3NF to eliminate data redundancy.
* **CRUD Operations:** Includes SQL scripts for Creating, Reading, Updating, and Deleting records.
* **Advanced Queries:** Features complex SQL operations like `JOIN`s to generate readable reports and `SUBQUERY` logic for nested data retrieval.
* **Optimized Performance:** Demonstrates the use of `INDEX` creation to speed up searches on frequently queried columns.

## Reflection
Through this project, I learned how crucial database design is before writing any code. Understanding normalization (1NF to 3NF) helped me realize how to break down large, messy datasets into clean, logical tables that prevent data duplication. I also learned that while inserting and selecting data is straightforward, using `JOIN`s is essential for reassembling data into something meaningful for users. Finally, testing database indexing showed me how databases can remain fast and scalable even as data grows.