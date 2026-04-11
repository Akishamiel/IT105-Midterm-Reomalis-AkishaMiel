# 🏥 Medical Appointment Scheduling System

## 👤 Student Information
- **Name:** Akisha Miel A. Reomalis
- **Course:** IT105
- **Project:** Midterm Database Portfolio

---

## 📚 System Description

The **Appointment System Database** is a relational design tailored for the core operations of a medical clinic or hospital. It is built to:
- Manage comprehensive **patient records** and contact details.
- Maintain **doctor profiles** and their specific areas of expertise.
- Catalog **medical services** and procedures with associated pricing.
- Schedule and track **appointments** efficiently while maintaining data integrity.

This project focuses on backend architecture and logical data relationships to prevent anomalies.

---

## 🗄️ Tables Description

| Table | Purpose | Key Columns |
|-------|---------|-------------|
| **Patients** | Stores personal/contact info | PatientID, FirstName, LastName, Email, Phone, DOB |
| **Doctors** | Stores medical staff profiles | DoctorID, FirstName, LastName, Specialization, Email |
| **Services** | Catalog of medical offerings | ServiceID, ServiceName, Description, Price |
| **Appointments** | Links patients, doctors, & services | AppointmentID, PatientID, DoctorID, ServiceID, ApptDate, Status |

**Relationships:**
- **One Patient** can schedule many Appointments.
- **One Doctor** can be assigned to many Appointments.
- **One Service** can be linked to many Appointments.

---

## ✅ Features Implemented

| Feature | Status | Location |
|---------|--------|----------|
| Database Schema | ✅ Done | `/sql/schema.sql` |
| 10+ Records per Table | ✅ Done | `/sql/data.sql` |
| Normalization (UNF→3NF) | ✅ Done | `/docs/normalization.md` |
| SELECT Query | ✅ Done | `/sql/queries.sql` |
| INSERT Query | ✅ Done | `/sql/queries.sql` |
| UPDATE Query | ✅ Done | `/sql/queries.sql` |
| DELETE Query | ✅ Done | `/sql/queries.sql` |
| JOIN Query (Reports) | ✅ Done | `/sql/queries.sql` |
| SUBQUERY Logic | ✅ Done | `/sql/queries.sql` |
| Indexing Demonstration | ✅ Done | `/docs/indexing.md` |
| README Documentation | ✅ Done | `README.md` |

---

## Reflection

Through this project, I learned how crucial database design is before writing any code. Understanding normalization (1NF to 3NF) helped me realize how to break down large, messy datasets into clean, logical tables that prevent data duplication. I also learned that while inserting and selecting data is straightforward, using `JOIN`s is essential for reassembling data into something meaningful for users. Finally, testing database indexing showed me how databases can remain fast and scalable even as data grows.
