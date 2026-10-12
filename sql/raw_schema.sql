CREATE SCHEMA IF NOT EXISTS raw;

-- 1. Create table for basic info (applicant_basic_info)
CREATE TABLE raw.applicant_basic_info (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
);

-- 2. Create table for contact information (applicant_contact_info)

-- 3. Create table for academic documents (applicant_academic_documents)

-- 4. Create table for referee information (applicant_referee_info)

-- 5. Create table for application information (application_info)