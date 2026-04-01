USE AppointmentSystemDB;

-- Insert 10 Patients
INSERT INTO Patients (FirstName, LastName, Phone, Email, DateOfBirth) VALUES
('Juan', 'Dela Cruz', '09171112222', 'juan@example.com', '1985-04-12'),
('Maria', 'Santos', '09182223333', 'maria.santos@example.com', '1990-08-25'),
('Pedro', 'Reyes', '09193334444', 'pedro.reyes@example.com', '1978-11-05'),
('Ana', 'Gonzales', '09204445555', 'ana.g@example.com', '2001-02-14'),
('Luis', 'Garcia', '09215556666', 'luis.garcia@example.com', '1995-09-30'),
('Elena', 'Torres', '09226667777', 'elena.t@example.com', '1982-12-11'),
('Carlos', 'Mendoza', '09237778888', 'carlos.m@example.com', '1970-07-04'),
('Rosa', 'Bautista', '09248889999', 'rosa.b@example.com', '1999-05-20'),
('Miguel', 'Cruz', '09259990000', 'miguel.c@example.com', '1988-10-15'),
('Sofia', 'Villanueva', '09260001111', 'sofia.v@example.com', '2005-01-22');

-- Insert 10 Doctors
INSERT INTO Doctors (FirstName, LastName, Specialty, Phone, Email) VALUES
('Ricardo', 'Dantes', 'Cardiology', '09170001122', 'dr.dantes@hospital.com'),
('Liza', 'Soberano', 'Dermatology', '09170003344', 'dr.soberano@hospital.com'),
('Vic', 'Sotto', 'Pediatrics', '09170005566', 'dr.sotto@hospital.com'),
('Anne', 'Curtis', 'Neurology', '09170007788', 'dr.curtis@hospital.com'),
('Coco', 'Martin', 'Orthopedics', '09170009900', 'dr.martin@hospital.com'),
('Kathryn', 'Bernardo', 'Psychiatry', '09180001234', 'dr.bernardo@hospital.com'),
('Daniel', 'Padilla', 'General Practice', '09180005678', 'dr.padilla@hospital.com'),
('Nadine', 'Lustre', 'Ophthalmology', '09180009012', 'dr.lustre@hospital.com'),
('James', 'Reid', 'Dentistry', '09190003456', 'dr.reid@hospital.com'),
('Maine', 'Mendoza', 'ENT', '09190007890', 'dr.mendoza@hospital.com');

-- Insert 10 Services
INSERT INTO Services (ServiceName, Description, Price) VALUES
('General Consultation', 'Standard health checkup and consultation.', 500.00),
('Blood Test', 'Complete blood count (CBC) and lipid profile.', 1200.00),
('X-Ray', 'Standard chest or bone X-ray.', 800.00),
('Dental Cleaning', 'Routine teeth cleaning and scaling.', 1500.00),
('Skin Assessment', 'Evaluation of skin conditions or moles.', 1000.00),
('Therapy Session', 'One hour counseling and psychological evaluation.', 2000.00),
('Eye Exam', 'Vision test and eye health screening.', 750.00),
('Physical Therapy', 'Rehabilitation exercises for injuries.', 1800.00),
('ECG', 'Electrocardiogram for heart health check.', 1100.00),
('Vaccination', 'Standard flu or hepatitis vaccine administration.', 950.00);

-- Insert 10 Appointments
INSERT INTO Appointments (PatientID, DoctorID, ServiceID, AppointmentDate, Status) VALUES
(1, 7, 1, '2026-04-10 09:00:00', 'Scheduled'),
(2, 2, 5, '2026-04-11 10:30:00', 'Scheduled'),
(3, 1, 9, '2026-04-12 14:00:00', 'Completed'),
(4, 3, 10, '2026-04-13 11:15:00', 'Scheduled'),
(5, 5, 3, '2026-04-14 08:45:00', 'Cancelled'),
(6, 6, 6, '2026-04-15 15:30:00', 'Scheduled'),
(7, 4, 1, '2026-04-16 13:00:00', 'Completed'),
(8, 8, 7, '2026-04-17 09:45:00', 'Scheduled'),
(9, 9, 4, '2026-04-18 16:00:00', 'Scheduled'),
(10, 10, 1, '2026-04-19 10:00:00', 'Scheduled');