import random
import faker
import csv
from datetime import datetime, timedelta


fake = faker.Faker("en_IN")

# Predefined
departments = [
    "AI Research",
    "Machine Learning",
    "Engineering",
    "Management",
    "Data Engineering",
]
access_points = ["Main Gate", "Side Door", "Back Gate", "Parking"]
device_types = ["Laptop", "Desktop", "Tablet"]
interview_statements = [
    "I was optimizing an AI model and stayed late to improve its accuracy before the deployment deadline.",
    "I was working on a critical machine learning algorithm and needed extra time to fine-tune it.",
    "I stayed late to gather and clean data for our new AI model to improve its training performance.",
    "I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.",
    "Had to fix some urgent bugs in the system. Copied some files for backup purposes.",
    "I was working late on the AI model optimization. Left around 3:45 AM after completing my tasks.",
    "I was involved in data preprocessing for a major machine learning project, which took longer than expected.",
    "I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.",
    "I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.",
    "Was doing routine security checks throughout the night shift.",
]

# functions to generate data


def generate_employee(employee_id):
    name = fake.name()
    department = random.choice(departments)
    access_level = random.choice([3, 4])  # Different access levels
    join_date = fake.date_between(start_date="-1y", end_date="today")
    salary = random.randint(120000, 250000)
    return (employee_id, name, department, access_level, join_date, salary)


def generate_unique_ips(employee_ids):
    ip_mapping = {}
    for employee_id in employee_ids:
        ip_mapping[employee_id] = fake.ipv4()  # Assign a unique IP address
    return ip_mapping


def generate_building_access(access_id, employee_ids):
    base_date = datetime(2024, 11, 15, 1, 0)
    time_offset = timedelta(minutes=random.randint(0, 240))
    timestamp = base_date + time_offset
    access_type = random.choice(["ENTRY", "EXIT"])
    access_point = random.choice(access_points)
    employee_id = random.choice(employee_ids)
    return (access_id, employee_id, timestamp, access_type, access_point)


def generate_system_log(log_id, employee_ids, ip_mapping):
    base_date = datetime(2024, 11, 15, 1, 0)
    time_offset = timedelta(minutes=random.randint(0, 240))
    timestamp = base_date + time_offset
    action = random.choice(["FILE_ACCESS", "FILE_COPY", "SYSTEM_CHECK"])
    file_accessed = random.choice(
        [
            "research_notes.txt",
            "project_docs.pdf",
            "ai_model_v2.py",
            "security_logs.txt",
            "design_plan.pdf",
            "management_plan.xlsx",
            "server_logs.txt",
        ]
    )
    employee_id = random.choice(employee_ids)
    ip_address = ip_mapping[employee_id]  # Use the assigned IP address
    return (log_id, employee_id, timestamp, action, file_accessed, ip_address)


def generate_network_traffic(traffic_id, ip_mapping):
    base_date = datetime(2024, 11, 15, 1, 0)
    time_offset = timedelta(minutes=random.randint(0, 240))
    timestamp = base_date + time_offset
    source_ip = random.choice(list(ip_mapping.values()))
    destination_ip = fake.ipv4()
    data_size = round(random.uniform(50.0, 500.0), 2)
    return (traffic_id, timestamp, source_ip, destination_ip, data_size)


def generate_employee_device(device_id, employee_ids, ip_mapping):
    device_type = random.choice(device_types)
    employee_id = random.choice(employee_ids)
    system_ip = ip_mapping[employee_id]
    return (device_id, employee_id, device_type, system_ip)


def generate_security_interview(interview_id, employee_id):
    base_date = datetime(2024, 11, 15, 5, 0)
    time_offset = timedelta(minutes=random.randint(0, 120))
    timestamp = base_date + time_offset
    statement = random.choice(interview_statements)
    return (interview_id, employee_id, timestamp, statement)


# Data generation
def generate_data():
    # Create a list of employee IDs
    employee_ids = list(range(1, 31))

    # Generate unique IPs for each employee
    ip_mapping = generate_unique_ips(employee_ids)

    employees = [generate_employee(i) for i in employee_ids]

    # Building Access Logs
    building_access_logs = [
        generate_building_access(i, employee_ids) for i in range(1, 51)
    ]

    # System Logs
    system_logs = [
        generate_system_log(i, employee_ids, ip_mapping) for i in range(1, 51)
    ]

    # Network Traffic
    network_traffic = [generate_network_traffic(i, ip_mapping) for i in range(1, 51)]

    # Employee Devices
    employee_devices = [
        generate_employee_device(i, employee_ids, ip_mapping) for i in range(1, 51)
    ]

    # Security Interviews
    security_interviews = [
        generate_security_interview(employee_id, employee_id)
        for employee_id in employee_ids
    ]

    # Output to CSV
    with open("employees.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(
            ["employee_id", "name", "department", "access_level", "join_date", "salary"]
        )
        writer.writerows(employees)

    with open("building_access.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(
            ["access_id", "employee_id", "timestamp", "entry_exit", "access_point"]
        )
        writer.writerows(building_access_logs)

    with open("system_logs.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(
            [
                "log_id",
                "employee_id",
                "timestamp",
                "action",
                "file_accessed",
                "ip_address",
            ]
        )
        writer.writerows(system_logs)

    with open("network_traffic.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(
            ["traffic_id", "timestamp", "source_ip", "destination_ip", "data_size_mb"]
        )
        writer.writerows(network_traffic)

    with open("employee_devices.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(["device_id", "employee_id", "device_type", "system_ip"])
        writer.writerows(employee_devices)

    with open("security_interviews.csv", "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(["interview_id", "employee_id", "timestamp", "statement"])
        writer.writerows(security_interviews)


# Run the data generation
generate_data()
