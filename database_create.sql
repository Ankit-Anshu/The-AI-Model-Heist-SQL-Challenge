CREATE DATABASE VortexAI;

USE VortexAI;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    access_level INT,
    join_date DATE,
    salary INT
);

CREATE TABLE building_access (
    access_id INT PRIMARY KEY,
    employee_id INT,
    timestamp TIMESTAMP,
    entry_exit VARCHAR(10),
    access_point VARCHAR(50)
);

CREATE TABLE system_logs (
    log_id INT PRIMARY KEY,
    employee_id INT,
    timestamp TIMESTAMP,
    action VARCHAR(100),
    file_accessed VARCHAR(100),
    ip_address VARCHAR(20)
);

CREATE TABLE network_traffic (
    traffic_id INT PRIMARY KEY,
    timestamp TIMESTAMP,
    source_ip VARCHAR(15),
    destination_ip VARCHAR(15),
    data_size_mb DECIMAL(10,2)
);

CREATE TABLE employee_devices (
    device_id INT PRIMARY KEY,
    employee_id INT,
    device_type VARCHAR(50),
    system_ip VARCHAR(15)
);

CREATE TABLE security_interviews (
    interview_id INT PRIMARY KEY,
    employee_id INT,
    timestamp TIMESTAMP,
    statement TEXT
);