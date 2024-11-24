-- STEP 1: Find who was in the building during the incident (2 AM - 4 AM)
SELECT 
    e.name,
    ba.timestamp,
    ba.entry_exit,
    ba.access_point
FROM building_access ba
JOIN employees e ON ba.employee_id = e.employee_id
WHERE ba.timestamp BETWEEN '2024-11-15 02:00:00' AND '2024-11-15 04:00:00'
ORDER BY ba.timestamp;

-- STEP 2: Check what files were accessed during this time period
SELECT 
    e.name,
    sl.timestamp,
    sl.action,
    sl.file_accessed
FROM system_logs sl
JOIN employees e ON sl.employee_id = e.employee_id
WHERE sl.timestamp BETWEEN '2024-11-15 02:00:00' AND '2024-11-15 04:00:00'
ORDER BY sl.timestamp;

-- STEP 3: Look specifically for access to the AI model file
SELECT 
    e.name,
    sl.timestamp,
    sl.action,
    sl.file_accessed
FROM system_logs sl
JOIN employees e ON sl.employee_id = e.employee_id
WHERE sl.file_accessed LIKE '%ai_model%'
ORDER BY sl.timestamp;

-- STEP 4: Check for suspicious network traffic (large data transfers)
SELECT 
    nt.timestamp,
    nt.source_ip,
    nt.destination_ip,
    nt.data_size_mb,
    e.name as employee_name
FROM network_traffic nt
JOIN employee_devices ed ON nt.source_ip = ed.system_ip
JOIN employees e ON ed.employee_id = e.employee_id
WHERE nt.data_size_mb > 400
ORDER BY nt.data_size_mb DESC;


-- STEP 5: Check for suspicious network traffic (large data transfers) specifically for access to the AI model file
SELECT 
    e.name AS employee_name,
    COALESCE(sl.timestamp, nt.timestamp) AS timestamp,
    sl.action,
    sl.file_accessed,
    nt.source_ip,
    nt.data_size_mb AS file_size_mb
FROM employees e
LEFT JOIN system_logs sl ON e.employee_id = sl.employee_id
LEFT JOIN employee_devices ed ON e.employee_id = ed.employee_id
LEFT JOIN network_traffic nt ON ed.system_ip = nt.source_ip
WHERE sl.file_accessed LIKE '%ai_model%'
   AND nt.data_size_mb > 400
order by file_size_mb desc;


-- STEP 6: Get complete activity log for suspicious employee

SELECT 
    e.name,
    e.department,
    ba.timestamp AS building_access_time,
    ba.entry_exit,
    sl.timestamp AS system_access_time,
    sl.action,
    sl.file_accessed,
    nt.timestamp AS network_time,
    nt.data_size_mb
FROM employees e
LEFT JOIN building_access ba ON e.employee_id = ba.employee_id 
    AND ba.timestamp BETWEEN '2024-11-15 02:00:00' AND '2024-11-15 04:00:00'
LEFT JOIN system_logs sl ON e.employee_id = sl.employee_id 
    AND sl.timestamp BETWEEN '2024-11-15 02:00:00' AND '2024-11-15 04:00:00'
LEFT JOIN employee_devices ed ON e.employee_id = ed.employee_id
LEFT JOIN network_traffic nt ON ed.system_ip = nt.source_ip 
    AND nt.timestamp BETWEEN '2024-11-15 02:00:00' AND '2024-11-15 04:00:00'
WHERE e.name IN ('Priya Patel', 'Sai Singh', 'Rahul Sharma')
ORDER BY ba.timestamp, sl.timestamp, nt.timestamp;


-- STEP 7: Check their security interview statement
SELECT
    e.name,
    si.timestamp as interview_time,
    si.statement
FROM security_interviews si
JOIN employees e ON si.employee_id = e.employee_id
WHERE e.name In ('Priya Patel',"Sai Singh", "Rahul Sharma");

-- FINAL SUMMARY QUERY: Compile all evidence against the suspect(Priya Patel)
SELECT 
    'Building Access' as evidence_type,
    timestamp,
    concat(entry_exit, ' through ',access_point,' during suspicious hours') as description
FROM building_access 
WHERE employee_id = 2 
    AND timestamp BETWEEN '2024-11-15 01:00:00' AND '2024-11-15 05:00:00'
UNION ALL
SELECT 
    'File Access' as evidence_type,
    timestamp,
    CONCAT(action ,' ', file_accessed) as description
FROM system_logs
WHERE employee_id = 2 
    AND timestamp BETWEEN '2024-11-15 01:00:00' AND '2024-11-15 05:00:00'
UNION ALL
SELECT 
    'Network Traffic' as evidence_type,
    timestamp,
    CONCAT('Transferred ', data_size_mb, 'MB of data to ', destination_ip) as description
FROM network_traffic
WHERE source_ip = '2.57.95.218'
    AND timestamp BETWEEN '2024-11-15 01:00:00' AND '2024-11-15 05:00:00'
ORDER BY timestamp;

