--
-- File generated with SQLiteStudio v3.4.6 on Mon Nov 25 15:23:18 2024
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: building_access
DROP TABLE IF EXISTS building_access;
CREATE TABLE IF NOT EXISTS building_access (
    access_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,  -- SQLite uses TEXT for datetime values
    entry_exit TEXT(10),  -- Use TEXT for variable length strings
    access_point TEXT
);
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (1, 22, '2024-11-15 03:36:00', 'ENTRY', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (2, 17, '2024-11-15 01:50:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (3, 6, '2024-11-15 04:18:00', 'ENTRY', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (4, 3, '2024-11-15 03:19:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (5, 2, '2024-11-15 03:34:00', 'ENTRY', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (6, 5, '2024-11-15 02:26:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (7, 19, '2024-11-15 01:15:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (8, 20, '2024-11-15 02:22:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (9, 17, '2024-11-15 02:05:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (10, 11, '2024-11-15 04:15:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (11, 1, '2024-11-15 03:51:00', 'ENTRY', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (12, 1, '2024-11-15 03:50:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (13, 10, '2024-11-15 03:05:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (14, 2, '2024-11-15 04:39:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (15, 11, '2024-11-15 03:45:00', 'ENTRY', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (16, 11, '2024-11-15 02:00:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (17, 6, '2024-11-15 02:28:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (18, 26, '2024-11-15 03:53:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (19, 23, '2024-11-15 03:10:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (20, 30, '2024-11-15 04:18:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (21, 9, '2024-11-15 03:10:00', 'ENTRY', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (22, 2, '2024-11-15 04:00:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (23, 24, '2024-11-15 03:17:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (24, 9, '2024-11-15 03:13:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (25, 24, '2024-11-15 04:30:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (26, 5, '2024-11-15 03:31:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (27, 15, '2024-11-15 04:39:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (28, 2, '2024-11-15 04:50:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (29, 7, '2024-11-15 04:41:00', 'ENTRY', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (30, 9, '2024-11-15 01:06:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (31, 21, '2024-11-15 01:35:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (32, 24, '2024-11-15 03:42:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (33, 25, '2024-11-15 02:56:00', 'ENTRY', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (34, 18, '2024-11-15 02:33:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (35, 30, '2024-11-15 03:35:00', 'ENTRY', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (36, 30, '2024-11-15 02:45:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (37, 16, '2024-11-15 01:50:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (38, 12, '2024-11-15 04:36:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (39, 2, '2024-11-15 01:53:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (40, 5, '2024-11-15 04:21:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (41, 9, '2024-11-15 01:20:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (42, 25, '2024-11-15 03:01:00', 'ENTRY', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (43, 30, '2024-11-15 02:25:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (44, 14, '2024-11-15 04:22:00', 'EXIT', 'Main Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (45, 15, '2024-11-15 03:44:00', 'EXIT', 'Side Door');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (46, 16, '2024-11-15 03:53:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (47, 26, '2024-11-15 01:50:00', 'EXIT', 'Back Gate');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (48, 2, '2024-11-15 01:29:00', 'ENTRY', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (49, 21, '2024-11-15 04:15:00', 'EXIT', 'Parking');
INSERT INTO building_access (access_id, employee_id, timestamp, entry_exit, access_point) VALUES (50, 17, '2024-11-15 04:37:00', 'EXIT', 'Side Door');

-- Table: employee_devices
DROP TABLE IF EXISTS employee_devices;
CREATE TABLE IF NOT EXISTS employee_devices (
    device_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    device_type TEXT,
    system_ip TEXT(15)
);
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (1, 21, 'Laptop', '129.245.207.83');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (2, 2, 'Tablet', '2.57.95.218');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (3, 28, 'Laptop', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (4, 19, 'Laptop', '220.181.105.179');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (5, 28, 'Laptop', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (6, 13, 'Laptop', '212.0.222.126');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (7, 16, 'Desktop', '81.225.22.170');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (8, 22, 'Desktop', '101.209.55.185');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (9, 17, 'Desktop', '166.19.192.147');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (10, 1, 'Desktop', '69.20.136.223');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (11, 27, 'Tablet', '20.55.105.192');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (12, 15, 'Desktop', '30.90.171.172');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (13, 25, 'Desktop', '157.122.195.183');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (14, 12, 'Desktop', '66.71.153.92');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (15, 5, 'Tablet', '81.0.14.234');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (16, 12, 'Desktop', '66.71.153.92');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (17, 13, 'Laptop', '212.0.222.126');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (18, 12, 'Laptop', '66.71.153.92');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (19, 1, 'Laptop', '69.20.136.223');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (20, 20, 'Desktop', '154.171.236.54');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (21, 8, 'Desktop', '112.188.22.204');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (22, 8, 'Tablet', '112.188.22.204');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (23, 7, 'Tablet', '77.214.206.107');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (24, 28, 'Tablet', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (25, 10, 'Tablet', '177.43.193.240');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (26, 19, 'Tablet', '220.181.105.179');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (27, 21, 'Tablet', '129.245.207.83');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (28, 13, 'Laptop', '212.0.222.126');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (29, 22, 'Laptop', '101.209.55.185');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (30, 6, 'Tablet', '39.208.50.81');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (31, 9, 'Tablet', '220.144.197.72');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (32, 25, 'Laptop', '157.122.195.183');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (33, 11, 'Desktop', '184.220.181.33');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (34, 16, 'Tablet', '81.225.22.170');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (35, 28, 'Laptop', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (36, 17, 'Tablet', '166.19.192.147');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (37, 13, 'Desktop', '212.0.222.126');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (38, 25, 'Desktop', '157.122.195.183');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (39, 16, 'Laptop', '81.225.22.170');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (40, 15, 'Tablet', '30.90.171.172');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (41, 9, 'Desktop', '220.144.197.72');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (42, 28, 'Tablet', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (43, 28, 'Tablet', '97.98.136.60');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (44, 13, 'Laptop', '212.0.222.126');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (45, 1, 'Desktop', '69.20.136.223');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (46, 4, 'Laptop', '223.124.82.110');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (47, 18, 'Tablet', '145.130.17.70');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (48, 3, 'Desktop', '51.94.194.221');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (49, 8, 'Tablet', '112.188.22.204');
INSERT INTO employee_devices (device_id, employee_id, device_type, system_ip) VALUES (50, 20, 'Laptop', '154.171.236.54');

-- Table: employees
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    access_level INTEGER,
    join_date TEXT,  -- SQLite uses TEXT for dates
    salary INTEGER
);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (1, 'Rahul Sharma', 'AI Research', 3, '2024-01-15', 181114);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (2, 'Priya Patel', 'Engineering', 3, '2023-12-05', 246813);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (3, 'Balendra Savant', 'Data Engineering', 3, '2024-09-13', 125921);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (4, 'Dayamai Sengupta', 'Data Engineering', 4, '2024-02-22', 210028);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (5, 'Gavin Pal', 'Management', 3, '2024-05-25', 158170);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (6, 'Lisa Chen', 'Management', 4, '', '2023-10-22');
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (7, 'Avni Naik', 'Data Engineering', 4, '2023-12-14', 226776);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (8, 'Gaurangi Nagarajan', 'Data Engineering', 3, '2024-02-01', 216700);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (9, 'Hemangini Char', 'Data Engineering', 4, '2024-06-25', 175997);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (10, 'Qarin Kade', 'Machine Learning', 4, '2023-12-16', 161804);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (11, 'Ridhi Murthy', 'AI Research', 4, '2023-12-03', 199807);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (12, 'Damyanti Kapoor', 'Machine Learning', 4, '2024-01-20', 126419);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (13, 'Agastya Chawla', 'Data Engineering', 3, '2024-01-17', 237275);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (14, 'Watika Som', 'Engineering', 3, '2024-03-05', 157993);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (15, 'Azad Dalal', 'Management', 3, '2024-04-13', 129049);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (16, 'Udarsh Parikh', 'Engineering', 3, '2024-08-28', 137996);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (17, 'Nathan Jain', 'AI Research', 3, '2024-09-13', 161947);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (18, 'Aradhana Mani', 'AI Research', 3, '2024-09-17', 147668);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (19, 'Vedika Butala', 'AI Research', 3, '2024-04-18', 144472);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (20, 'Bimala Lall', 'Machine Learning', 4, '2024-08-15', 128531);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (21, 'Sarthak Kakar', 'Machine Learning', 4, '2024-04-26', 156902);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (22, 'Madhavi Kaur', 'Machine Learning', 4, '2024-05-12', 134815);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (23, 'Mekhala Palan', 'Management', 3, '2024-01-23', 123801);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (24, 'Lavanya Sidhu', 'Management', 4, '2024-08-16', 140141);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (25, 'Sai Singh', 'Machine Learning', 4, '2023-12-01', 120696);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (26, 'Bishakha Korpal', 'Data Engineering', 3, '2023-12-17', 212881);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (27, 'Eiravati Patil', 'Management', 3, '2024-04-14', 197127);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (28, 'Frado Seshadri', 'Engineering', 3, '2023-12-24', 222975);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (29, 'Henry Chakrabarti', 'Data Engineering', 4, '2024-04-24', 210075);
INSERT INTO employees (employee_id, name, department, access_level, join_date, salary) VALUES (30, 'Teerth Verma', 'AI Research', 3, '2024-09-19', 170155);

-- Table: network_traffic
DROP TABLE IF EXISTS network_traffic;
CREATE TABLE IF NOT EXISTS network_traffic (
    traffic_id INTEGER PRIMARY KEY,
    timestamp TEXT,
    source_ip TEXT(15),
    destination_ip TEXT(15),
    data_size_mb REAL  -- SQLite uses REAL for decimals
);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (1, '2024-11-15 02:33:00', '220.144.197.72', '130.169.152.144', 141.38);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (2, '2024-11-15 02:51:00', '142.202.0.247', '157.238.87.1', 424.16);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (3, '2024-11-15 03:00:00', '2.57.95.218', '176.66.82.98', 485.02);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (4, '2024-11-15 02:14:00', '177.43.193.240', '190.86.133.61', 377.77);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (5, '2024-11-15 04:40:00', '30.90.171.172', '162.63.145.140', 406.96);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (6, '2024-11-15 01:11:00', '211.108.53.227', '108.61.40.251', 407.3);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (7, '2024-11-15 03:09:00', '81.225.22.170', '218.3.217.54', 127.05);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (8, '2024-11-15 01:27:00', '97.98.136.60', '122.17.250.149', 373.6);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (9, '2024-11-15 03:56:00', '77.216.106.102', '136.232.98.44', 339.39);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (10, '2024-11-15 03:41:00', '184.220.181.33', '189.191.226.102', 189.01);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (11, '2024-11-15 02:00:00', '2.57.95.218', '52.167.149.150', 288.02);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (12, '2024-11-15 04:24:00', '2.57.95.218', '70.248.4.100', 444.78);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (13, '2024-11-15 04:39:00', '66.71.153.92', '188.21.186.189', 216.43);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (14, '2024-11-15 02:36:00', '101.209.55.185', '44.132.56.81', 69.63);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (15, '2024-11-15 01:08:00', '101.209.55.185', '80.115.8.57', 391.23);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (16, '2024-11-15 04:07:00', '97.98.136.60', '136.158.202.20', 168.94);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (17, '2024-11-15 01:37:00', '18.175.160.220', '190.38.51.96', 186.12);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (18, '2024-11-15 04:20:00', '8.28.224.185', '105.216.8.170', 473.0);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (19, '2024-11-15 04:05:00', '154.171.236.54', '169.95.130.51', 65.97);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (20, '2024-11-15 04:26:00', '51.94.194.221', '157.228.131.92', 291.69);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (21, '2024-11-15 02:57:00', '145.130.17.70', '74.47.46.196', 60.09);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (22, '2024-11-15 04:08:00', '20.55.105.192', '75.123.127.249', 166.89);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (23, '2024-11-15 03:07:00', '220.181.105.179', '178.171.86.236', 273.58);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (24, '2024-11-15 02:24:00', '77.216.106.102', '44.15.228.136', 418.42);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (25, '2024-11-15 02:07:00', '145.130.17.70', '149.104.189.198', 321.25);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (26, '2024-11-15 03:27:00', '30.90.171.172', '52.197.252.89', 430.09);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (27, '2024-11-15 03:29:00', '69.20.136.223', '211.94.252.253', 447.07);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (28, '2024-11-15 01:45:00', '157.122.195.183', '62.201.70.44', 426.48);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (29, '2024-11-15 01:23:00', '145.130.17.70', '166.239.124.163', 348.49);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (30, '2024-11-15 01:47:00', '2.57.95.218', '29.3.246.139', 117.08);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (31, '2024-11-15 02:36:00', '177.43.193.240', '136.96.160.218', 63.71);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (32, '2024-11-15 01:53:00', '97.98.136.60', '23.206.94.139', 336.67);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (33, '2024-11-15 01:57:00', '51.94.194.221', '147.150.157.248', 312.02);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (34, '2024-11-15 03:03:00', '77.214.206.107', '35.164.176.216', 88.76);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (35, '2024-11-15 02:33:00', '220.181.105.179', '98.179.4.14', 170.97);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (36, '2024-11-15 02:00:00', '157.122.195.183', '186.191.64.52', 320.09);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (37, '2024-11-15 02:52:00', '30.90.171.172', '62.118.22.22', 346.18);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (38, '2024-11-15 01:42:00', '77.214.206.107', '57.218.159.22', 179.86);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (39, '2024-11-15 02:03:00', '77.216.106.102', '38.210.77.103', 401.58);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (40, '2024-11-15 02:28:00', '142.202.0.247', '157.57.85.231', 292.79);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (41, '2024-11-15 04:32:00', '184.220.181.33', '54.112.28.149', 98.33);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (42, '2024-11-15 02:12:00', '145.130.17.70', '37.10.55.204', 116.11);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (43, '2024-11-15 03:44:00', '177.43.193.240', '63.94.195.84', 239.79);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (44, '2024-11-15 02:02:00', '81.225.22.170', '92.146.130.15', 307.94);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (45, '2024-11-15 03:09:00', '8.28.224.185', '120.227.132.138', 367.72);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (46, '2024-11-15 02:43:00', '20.55.105.192', '17.27.100.51', 106.45);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (47, '2024-11-15 04:14:00', '166.19.192.147', '123.35.163.16', 350.02);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (48, '2024-11-15 03:37:00', '77.216.106.102', '152.5.83.232', 234.81);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (49, '2024-11-15 03:52:00', '69.20.136.223', '110.110.231.60', 315.04);
INSERT INTO network_traffic (traffic_id, timestamp, source_ip, destination_ip, data_size_mb) VALUES (50, '2024-11-15 03:33:00', '81.0.14.234', '131.143.236.166', 102.49);

-- Table: security_interviews
DROP TABLE IF EXISTS security_interviews;
CREATE TABLE IF NOT EXISTS security_interviews (
    interview_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,
    statement TEXT
);
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (1, 1, '2024-11-15 05:50:00', 'I stayed late to gather and clean data for our new AI model to improve its training performance.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (2, 2, '2024-11-15 06:22:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (3, 3, '2024-11-15 06:16:00', 'Was doing routine security checks throughout the night shift.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (4, 4, '2024-11-15 05:11:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (5, 5, '2024-11-15 06:56:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (6, 6, '2024-11-15 06:08:00', 'I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (7, 7, '2024-11-15 06:09:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (8, 8, '2024-11-15 06:13:00', 'I was involved in data preprocessing for a major machine learning project, which took longer than expected.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (9, 9, '2024-11-15 06:18:00', 'I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (10, 10, '2024-11-15 06:35:00', 'I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (11, 11, '2024-11-15 05:37:00', 'I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (12, 12, '2024-11-15 05:44:00', 'I was working on a critical machine learning algorithm and needed extra time to fine-tune it.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (13, 13, '2024-11-15 06:16:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (14, 14, '2024-11-15 06:35:00', 'Had to fix some urgent bugs in the system. Copied some files for backup purposes.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (15, 15, '2024-11-15 05:43:00', 'I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (16, 16, '2024-11-15 05:36:00', 'I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (17, 17, '2024-11-15 05:26:00', 'I stayed late to gather and clean data for our new AI model to improve its training performance.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (18, 18, '2024-11-15 06:54:00', 'I stayed late to gather and clean data for our new AI model to improve its training performance.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (19, 19, '2024-11-15 06:15:00', 'Was doing routine security checks throughout the night shift.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (20, 20, '2024-11-15 06:29:00', 'I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (21, 21, '2024-11-15 06:52:00', 'I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (22, 22, '2024-11-15 06:42:00', 'I was involved in data preprocessing for a major machine learning project, which took longer than expected.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (23, 23, '2024-11-15 05:58:00', 'I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (24, 24, '2024-11-15 05:04:00', 'I was working on a critical machine learning algorithm and needed extra time to fine-tune it.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (25, 25, '2024-11-15 06:49:00', 'I was involved in data preprocessing for a major machine learning project, which took longer than expected.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (26, 26, '2024-11-15 06:24:00', 'I was optimizing an AI model and stayed late to improve its accuracy before the deployment deadline.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (27, 27, '2024-11-15 05:18:00', 'I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (28, 28, '2024-11-15 05:52:00', 'I was working on a critical machine learning algorithm and needed extra time to fine-tune it.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (29, 29, '2024-11-15 05:58:00', 'I stayed late to gather and clean data for our new AI model to improve its training performance.');
INSERT INTO security_interviews (interview_id, employee_id, timestamp, statement) VALUES (30, 30, '2024-11-15 05:11:00', 'Was doing routine security checks throughout the night shift.');

-- Table: system_logs
DROP TABLE IF EXISTS system_logs;
CREATE TABLE IF NOT EXISTS system_logs (
    log_id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    timestamp TEXT,
    action TEXT,
    file_accessed TEXT,
    ip_address TEXT
);
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (1, 4, '2024-11-15 01:27:00', 'FILE_COPY', 'design_plan.pdf', '223.124.82.110');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (2, 2, '2024-11-15 02:30:00', 'FILE_ACCESS', 'project_docs.pdf', '2.57.95.218');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (3, 23, '2024-11-15 03:50:00', 'FILE_ACCESS', 'research_notes.txt', '211.108.53.227');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (4, 2, '2024-11-15 03:00:00', 'FILE_COPY', 'ai_model_v2.py', '2.57.95.218');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (5, 5, '2024-11-15 02:22:00', 'FILE_ACCESS', 'project_docs.pdf', '81.0.14.234');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (6, 7, '2024-11-15 04:55:00', 'FILE_COPY', 'server_logs.txt', '77.214.206.107');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (7, 28, '2024-11-15 02:34:00', 'SYSTEM_CHECK', 'server_logs.txt', '97.98.136.60');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (8, 7, '2024-11-15 04:39:00', 'SYSTEM_CHECK', 'server_logs.txt', '77.214.206.107');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (9, 13, '2024-11-15 03:47:00', 'FILE_ACCESS', 'ai_model_v2.py', '212.0.222.126');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (10, 9, '2024-11-15 01:18:00', 'SYSTEM_CHECK', 'management_plan.xlsx', '220.144.197.72');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (11, 12, '2024-11-15 04:55:00', 'FILE_ACCESS', 'server_logs.txt', '66.71.153.92');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (12, 4, '2024-11-15 03:21:00', 'SYSTEM_CHECK', 'management_plan.xlsx', '223.124.82.110');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (13, 6, '2024-11-15 02:14:00', 'SYSTEM_CHECK', 'design_plan.pdf', '39.208.50.81');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (14, 8, '2024-11-15 01:09:00', 'SYSTEM_CHECK', 'project_docs.pdf', '112.188.22.204');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (15, 19, '2024-11-15 02:30:00', 'FILE_COPY', 'management_plan.xlsx', '220.181.105.179');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (16, 21, '2024-11-15 01:43:00', 'SYSTEM_CHECK', 'project_docs.pdf', '129.245.207.83');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (17, 6, '2024-11-15 02:28:00', 'FILE_COPY', 'ai_model_v2.py', '39.208.50.81');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (18, 18, '2024-11-15 02:47:00', 'FILE_ACCESS', 'project_docs.pdf', '145.130.17.70');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (19, 27, '2024-11-15 01:27:00', 'SYSTEM_CHECK', 'design_plan.pdf', '20.55.105.192');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (20, 18, '2024-11-15 01:34:00', 'SYSTEM_CHECK', 'research_notes.txt', '145.130.17.70');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (21, 6, '2024-11-15 03:09:00', 'FILE_ACCESS', 'management_plan.xlsx', '39.208.50.81');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (22, 25, '2024-11-15 03:48:00', 'SYSTEM_CHECK', 'ai_model_v2.py', '157.122.195.183');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (23, 2, '2024-11-15 03:44:00', 'FILE_COPY', 'research_notes.txt', '2.57.95.218');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (24, 2, '2024-11-15 02:07:00', 'FILE_ACCESS', 'server_logs.txt', '2.57.95.218');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (25, 11, '2024-11-15 02:00:00', 'FILE_ACCESS', 'research_notes.txt', '184.220.181.33');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (26, 4, '2024-11-15 01:50:00', 'SYSTEM_CHECK', 'research_notes.txt', '223.124.82.110');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (27, 26, '2024-11-15 03:40:00', 'SYSTEM_CHECK', 'research_notes.txt', '142.202.0.247');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (28, 24, '2024-11-15 02:08:00', 'FILE_COPY', 'project_docs.pdf', '18.175.160.220');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (29, 11, '2024-11-15 04:49:00', 'FILE_COPY', 'design_plan.pdf', '184.220.181.33');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (30, 8, '2024-11-15 02:16:00', 'SYSTEM_CHECK', 'ai_model_v2.py', '112.188.22.204');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (31, 13, '2024-11-15 03:40:00', 'FILE_COPY', 'design_plan.pdf', '212.0.222.126');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (32, 9, '2024-11-15 03:59:00', 'SYSTEM_CHECK', 'server_logs.txt', '220.144.197.72');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (33, 1, '2024-11-15 03:49:00', 'FILE_ACCESS', 'ai_model_v2.py', '69.20.136.223');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (34, 3, '2024-11-15 03:32:00', 'FILE_ACCESS', 'server_logs.txt', '51.94.194.221');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (35, 27, '2024-11-15 02:51:00', 'SYSTEM_CHECK', 'security_logs.txt', '20.55.105.192');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (36, 3, '2024-11-15 03:22:00', 'FILE_ACCESS', 'server_logs.txt', '51.94.194.221');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (37, 16, '2024-11-15 02:46:00', 'FILE_COPY', 'ai_model_v2.py', '81.225.22.170');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (38, 12, '2024-11-15 02:30:00', 'FILE_ACCESS', 'ai_model_v2.py', '66.71.153.92');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (39, 30, '2024-11-15 03:33:00', 'SYSTEM_CHECK', 'design_plan.pdf', '183.33.37.222');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (40, 5, '2024-11-15 01:51:00', 'FILE_COPY', 'research_notes.txt', '81.0.14.234');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (41, 15, '2024-11-15 02:33:00', 'FILE_ACCESS', 'server_logs.txt', '30.90.171.172');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (42, 17, '2024-11-15 02:24:00', 'FILE_COPY', 'design_plan.pdf', '166.19.192.147');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (43, 14, '2024-11-15 04:49:00', 'FILE_COPY', 'project_docs.pdf', '8.28.224.185');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (44, 10, '2024-11-15 03:52:00', 'FILE_ACCESS', 'ai_model_v2.py', '177.43.193.240');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (45, 4, '2024-11-15 01:33:00', 'SYSTEM_CHECK', 'server_logs.txt', '223.124.82.110');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (46, 4, '2024-11-15 03:32:00', 'FILE_ACCESS', 'ai_model_v2.py', '223.124.82.110');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (47, 10, '2024-11-15 01:05:00', 'SYSTEM_CHECK', 'ai_model_v2.py', '177.43.193.240');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (48, 28, '2024-11-15 04:03:00', 'SYSTEM_CHECK', 'research_notes.txt', '97.98.136.60');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (49, 1, '2024-11-15 01:02:00', 'SYSTEM_CHECK', 'security_logs.txt', '69.20.136.223');
INSERT INTO system_logs (log_id, employee_id, timestamp, action, file_accessed, ip_address) VALUES (50, 21, '2024-11-15 04:43:00', 'FILE_COPY', 'security_logs.txt', '129.245.207.83');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
