# Database Normalization Process: Appointment System

### Unnormalized Form (UNF)
In the beginning, all data was tracked in a single spreadsheet-like format with repeating groups and mixed data.
* **Columns:** AppointmentID, PatientName, PatientPhone, PatientDOB, DoctorName, DoctorSpecialty, ServicesRequested (e.g., "Consultation, Blood Test"), AppointmentDate, TotalPrice

### First Normal Form (1NF)
**Rules:** Eliminate repeating groups. Ensure all attributes are atomic (single, indivisible values).
* **Action:** Separated the "ServicesRequested" column so each row only contains one service. Split "PatientName" into "FirstName" and "LastName".
* **Columns:** AppointmentID, PatientFirstName, PatientLastName, PatientPhone, PatientDOB, DoctorFirstName, DoctorLastName, DoctorSpecialty, ServiceName, ServicePrice, AppointmentDate

### Second Normal Form (2NF)
**Rules:** Must be in 1NF. Remove partial dependencies (where non-key attributes depend on only a part of a composite primary key).
* **Action:** We created separate entities for things that exist independently of the appointment.
* **Table 1 (Patients):** PatientID (PK), PatientFirstName, PatientLastName, PatientPhone, PatientDOB
* **Table 2 (Doctors):** DoctorID (PK), DoctorFirstName, DoctorLastName, DoctorSpecialty
* **Table 3 (Appointments):** AppointmentID (PK), PatientID (FK), DoctorID (FK), ServiceName, ServicePrice, AppointmentDate

### Third Normal Form (3NF)
**Rules:** Must be in 2NF. Remove transitive dependencies (where a non-key attribute depends on another non-key attribute).
* **Action:** In the Appointments table from 2NF, `ServicePrice` is dependent on `ServiceName`, not just the AppointmentID. We need to separate Services into its own table.
* **Table 1 (Patients):** PatientID (PK), FirstName, LastName, Phone, Email, DateOfBirth
* **Table 2 (Doctors):** DoctorID (PK), FirstName, LastName, Specialty, Phone, Email
* **Table 3 (Services):** ServiceID (PK), ServiceName, Description, Price
* **Table 4 (Appointments):** AppointmentID (PK), PatientID (FK), DoctorID (FK), ServiceID (FK), AppointmentDate, Status