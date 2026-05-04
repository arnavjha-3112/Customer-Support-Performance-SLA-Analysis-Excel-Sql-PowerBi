-- Total Tickets / Open / Closed / Backlog
SELECT 
COUNT(*) AS total_tickets,
SUM(CASE WHEN ticket_state='Open' THEN 1 ELSE 0 END) AS open_tickets,
SUM(CASE WHEN ticket_state='Closed' THEN 1 ELSE 0 END) AS closed_tickets
FROM customer_tickets;

-- Complaint Categories Trend
SELECT ticket_type, COUNT(*) AS total_tickets
FROM customer_tickets
GROUP BY ticket_type
ORDER BY total_tickets DESC;

-- Priority Level Distribution
SELECT ticket_priority, COUNT(*) AS total_tickets
FROM customer_tickets
GROUP BY ticket_priority
ORDER BY total_tickets DESC;

-- Channel Analysis
SELECT ticket_channel, COUNT(*) AS total_tickets
FROM customer_tickets
GROUP BY ticket_channel
ORDER BY total_tickets DESC;

-- Average Resolution Time
SELECT ROUND(AVG(resolution_hours),2) AS avg_resolution_hours
FROM customer_tickets
WHERE resolution_hours IS NOT NULL;

-- SLA Compliance
SELECT sla_status, COUNT(*) AS total_tickets
FROM customer_tickets
GROUP BY sla_status;

-- Average Resolution Time by Priority
SELECT ticket_priority,
ROUND(AVG(resolution_hours),2) AS avg_resolution_hours
FROM customer_tickets
WHERE resolution_hours IS NOT NULL
GROUP BY ticket_priority
ORDER BY avg_resolution_hours DESC;

-- Customer Satisfaction Trend
SELECT customer_satisfaction_rating,
COUNT(*) AS responses
FROM customer_tickets
WHERE customer_satisfaction_rating IS NOT NULL
GROUP BY customer_satisfaction_rating
ORDER BY customer_satisfaction_rating;

-- Average Satisfaction by Ticket Type
SELECT ticket_type,
ROUND(AVG(customer_satisfaction_rating),2) AS avg_rating
FROM customer_tickets
WHERE customer_satisfaction_rating IS NOT NULL
GROUP BY ticket_type
ORDER BY avg_rating DESC;

-- Root Cause (Top Categories) 
SELECT ticket_type, COUNT(*) AS total_tickets
FROM customer_tickets
GROUP BY ticket_type
ORDER BY total_tickets DESC
LIMIT 5;

-- Recurring Issue Frequency (Subjects) 
SELECT ticket_subject, COUNT(*) AS occurrences
FROM customer_tickets
GROUP BY ticket_subject
ORDER BY occurrences DESC
LIMIT 10;

-- Closed Tickets Meeting SLA
SELECT 
ROUND(SUM(CASE WHEN sla_status='SLA Met' THEN 1 ELSE 0 END)/COUNT(*)*100,2)
AS sla_met_percent 
FROM customer_tickets;

-- Ticket Backlog Analysis (Open vs Closed Tickets)
SELECT 
COUNT(*) AS total_tickets,
SUM(CASE WHEN ticket_state = 'Open' THEN 1 ELSE 0 END) AS open_tickets,
SUM(CASE WHEN ticket_state = 'Closed' THEN 1 ELSE 0 END) AS closed_tickets,
ROUND(100.0 * SUM(CASE WHEN ticket_state = 'Open' THEN 1 ELSE 0 END)/COUNT(*),2) AS open_percent,
ROUND(100.0 * SUM(CASE WHEN ticket_state = 'Closed' THEN 1 ELSE 0 END)/COUNT(*),2) AS closed_percent
FROM customer_tickets;