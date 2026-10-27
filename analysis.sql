-- Recruitment Funnel & Hiring Analytics
-- Synthetic demonstration data only.

-- 1. Count candidates at each stage reached
SELECT stage_reached, COUNT(*) AS n
FROM candidates
GROUP BY stage_reached
ORDER BY CASE stage_reached
  WHEN 'Applied' THEN 1
  WHEN 'Screened' THEN 2
  WHEN 'Interview1' THEN 3
  WHEN 'Interview2' THEN 4
  WHEN 'Offer' THEN 5
  WHEN 'Hired' THEN 6
  ELSE 7
END;

-- 2. Hiring rate by source (hired candidates / all candidates from that source)
SELECT source,
       COUNT(*) AS total,
       SUM(CASE WHEN stage_reached = 'Hired' THEN 1 ELSE 0 END) AS hired,
       ROUND(100.0 * SUM(CASE WHEN stage_reached = 'Hired' THEN 1 ELSE 0 END) / COUNT(*), 1) AS rate
FROM candidates
GROUP BY source
ORDER BY rate DESC;

-- 3. Average days from application to hire
SELECT ROUND(AVG(julianday(hired_date) - julianday(applied_date)), 1) AS avg_days_to_hire
FROM candidates
WHERE hired_date IS NOT NULL AND hired_date <> '';

-- 4. Optional: rejection reasons by stage
SELECT stage_reached, rejected_reason, COUNT(*) AS n
FROM candidates
WHERE rejected_reason <> ''
GROUP BY stage_reached, rejected_reason
ORDER BY stage_reached, n DESC;
