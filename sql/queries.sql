USE AppointmentSystemDB;

-- 1. SELECT: Retrieve all upcoming scheduled appointments
SELECT * FROM Appointments WHERE Status = 'Scheduled';

-- 2. INSERT: Add a new appointment
INSERT INTO Appointments (PatientID, DoctorID, ServiceID, AppointmentDate, Status) 
VALUES (1, 3, 1, '2026-04-25 10:00:00', 'Scheduled');

-- 3. UPDATE: Change the status of an appointment to 'Completed'
UPDATE Appointments 
SET Status = 'Completed' 
WHERE AppointmentID = 1;

-- 4. DELETE: Remove a cancelled appointment
DELETE FROM Appointments 
WHERE AppointmentID = 5;

-- 5. JOIN: View appointment details with Patient Names, Doctor Names, and Service Names
SELECT 
    a.AppointmentID, 
    CONCAT(p.FirstName, ' ', p.LastName) AS PatientName,
    CONCAT(d.FirstName, ' ', d.LastName) AS DoctorName,
    s.ServiceName,
    a.AppointmentDate,
    s.Price
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
JOIN Services s ON a.ServiceID = s.ServiceID;

-- 6. SUBQUERY: Find patients who have booked a service that costs more than 1500
SELECT FirstName, LastName, Phone 
FROM Patients 
WHERE PatientID IN (
    SELECT PatientID 
    FROM Appointments 
    WHERE ServiceID IN (
        SELECT ServiceID FROM Services WHERE Price > 1500
    )
);