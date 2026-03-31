-- ============================================
-- DAY 2: 50 Days SQL Challenge
-- Task: Find NULL + Empty Values in All Tables
-- ============================================

-- ==================
-- TABLE 1: EMPLOYEES
-- ==================
SELECT * 
FROM hr_project.employees
WHERE emp_id IS NULL OR
      emp_name IS NULL OR TRIM(emp_name) = '' OR
      age IS NULL OR
      city IS NULL OR TRIM(city) = '' OR
      dept_id IS NULL OR
      hire_date IS NULL;

-- =====================
-- TABLE 2: DEPARTMENTS
-- =====================
SELECT * 
FROM hr_project.departments
WHERE dept_id IS NULL OR
      dept_name IS NULL OR TRIM(dept_name) = '';

-- ==================
-- TABLE 3: SALARIES
-- ==================
SELECT * 
FROM hr_project.salaries
WHERE salary_id IS NULL OR
      emp_id IS NULL OR
      salary IS NULL OR salary = 0 OR
      salary_date IS NULL;

-- Check for negative salaries
SELECT * 
FROM hr_project.salaries
WHERE salary < 0;

-- ====================
-- TABLE 4: ATTENDANCE
-- ====================
SELECT * 
FROM hr_project.attendance
WHERE attendance_id IS NULL OR
      emp_id IS NULL OR
      attendance_date IS NULL OR
      status IS NULL OR TRIM(status) = '';

-- =====================
-- TABLE 5: PERFORMANCE
-- =====================
SELECT * 
FROM hr_project.performance
WHERE emp_id IS NULL OR
      rating_2022 IS NULL OR
      rating_2023 IS NULL OR
      rating_2024 IS NULL;

-- Check for invalid ratings (should be between 1-5)
SELECT * 
FROM hr_project.performance
WHERE rating_2022 NOT BETWEEN 1 AND 5 OR
      rating_2023 NOT BETWEEN 1 AND 5 OR
      rating_2024 NOT BETWEEN 1 AND 5;


## Data Issues Found

### Table 1: Employees ⚠️
- Found blank/empty values in one or more columns

### Table 2: Departments ✅
- No issues found

### Table 3: Salaries ⚠️
- Found negative salary values

### Table 4: Attendance ⚠️
- Dates are not in the correct format (expected: YYYY-MM-DD)

### Table 5: Performance ✅
- No issues found## Data Issues Found

### Table 1: Employees ⚠️
- Found blank/empty values in one or more columns

### Table 2: Departments ✅
- No issues found

### Table 3: Salaries ⚠️
- Found negative salary values

### Table 4: Attendance ⚠️
- Dates are not in the correct format (expected: YYYY-MM-DD)

### Table 5: Performance ✅
- No issues found
