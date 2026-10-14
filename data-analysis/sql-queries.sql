-- Total bookings per service
SELECT
    Service,
    COUNT(*) AS TotalBookings
FROM Appointments
GROUP BY Service;

-- Revenue by service
SELECT
    Service,
    SUM(Amount) AS Revenue
FROM Appointments
GROUP BY Service;

-- Cancelled appointments
SELECT *
FROM Appointments
WHERE Status = 'Cancelled';

-- Monthly revenue
SELECT
    MONTH(Date) AS Month,
    SUM(Amount) AS Revenue
FROM Appointments
GROUP BY MONTH(Date);
