create database hr_project;
use hr_project;
-- ================================
-- HUMAN RESOURCE SQL ANALYSIS
-- ================================

-- 1 Total employees
SELECT COUNT(*) AS total_employees FROM hr_data;

-- 2 Attrition count
SELECT attrition, COUNT(*) 
FROM hr_data
GROUP BY attrition;

-- 3 Department wise employees
SELECT department, COUNT(*) 
FROM hr_data
GROUP BY department;

-- 4 Average salary by department
SELECT department, AVG(monthlyincome) 
FROM hr_data
GROUP BY department;

-- 5 Highest paying job roles
SELECT jobrole, AVG(monthlyincome) AS avg_salary
FROM hr_data
GROUP BY jobrole
ORDER BY avg_salary DESC;

-- 6 Attrition by department
SELECT department, attrition, COUNT(*)
FROM hr_data
GROUP BY department, attrition;

-- 7 Overtime impact on attrition
SELECT overtime, attrition, COUNT(*)
FROM hr_data
GROUP BY overtime, attrition;

-- 8 Gender distribution
SELECT gender, COUNT(*)
FROM hr_data
GROUP BY gender;

-- 9 Average experience by department
SELECT department, AVG(totalworkingyears)
FROM hr_data
GROUP BY department;

-- 10 Salary slab distribution
SELECT salaryslab, COUNT(*)
FROM hr_data
GROUP BY salaryslab;

-- 11 Job satisfaction by job role
SELECT jobrole, AVG(jobsatisfaction)
FROM hr_data
GROUP BY jobrole;

-- 12 Employees with highest salary hike
SELECT empid, monthlyincome, percentsalaryhike
FROM hr_data
ORDER BY percentsalaryhike DESC;

-- 13 Most experienced employees
SELECT empid, totalworkingyears
FROM hr_data
ORDER BY totalworkingyears DESC;

-- 14 Attrition by marital status
SELECT maritalstatus, attrition, COUNT(*)
FROM hr_data
GROUP BY maritalstatus, attrition;

-- 15 Education field wise salary
SELECT educationfield, AVG(monthlyincome)
FROM hr_data
GROUP BY educationfield;