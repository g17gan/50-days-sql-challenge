# 📅 Day 1 — HR Project Setup

## 🎯 Objective
Set up the SQL project environment and prepare the HR dataset for analysis.

## 🗄️ Database
Created database: `hr_project`

## 📋 Tables Created
| Table | Description |
|-------------|-------------------------------|
| `employees` | Core employee information |
| `departments` | Department details |
| `salaries` | Employee salary records |
| `attendance` | Daily attendance tracking |
| `performance` | Annual performance ratings |

## 🔗 Relationships
Built relationships between tables using **Primary Keys (PK)** and **Foreign Keys (FK)**:

- `employees.emp_id` → PK (referenced by all tables)
- `employees.dept_id` → FK references `departments.dept_id`
- `salaries.emp_id` → FK references `employees.emp_id`
- `attendance.emp_id` → FK references `employees.emp_id`
- `performance.emp_id` → FK references `employees.emp_id`

## 📊 ERD Diagram
<img width="1069" height="616" alt="Screenshot 2026-03-31 211517" src="https://github.com/user-attachments/assets/d3a08020-4027-461c-a7c4-6cfee6ac1602" />


## 🛠️ Tools Used
- MySQL Workbench
- GitHub

## ✅ Outcome
Successfully set up the `hr_project` database with 5 tables and defined all relationships. Ready for data cleaning on Day 2.
