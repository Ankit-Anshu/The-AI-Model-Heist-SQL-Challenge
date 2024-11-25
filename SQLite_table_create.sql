-- Create Database is not needed in SQLite, as it works with a single file-based database.


-- Creating the employees table
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    access_level INTEGER,
    join_date TEXT, 
    salary INTEGER
);

-- Creating the building_access table
CREATE TABLE building_access (
    access_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,  
    entry_exit TEXT(10),  
    access_point TEXT
);

-- Creating the system_logs table
CREATE TABLE system_logs (
    log_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,
    action TEXT,
    file_accessed TEXT,
    ip_address TEXT
);

-- Creating the network_traffic table
CREATE TABLE network_traffic (
    traffic_id INTEGER PRIMARY KEY,
    timestamp TEXT,
    source_ip TEXT(15),
    destination_ip TEXT(15),
    data_size_mb REAL  
);

-- Creating the employee_devices table
CREATE TABLE employee_devices (
    device_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    device_type TEXT,
    system_ip TEXT(15)
);

-- Creating the security_interviews table
CREATE TABLE security_interviews (
    interview_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,
    statement TEXT
);
