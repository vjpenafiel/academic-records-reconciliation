CREATE SCHEMA IF NOT EXISTS raw;

-- 1. Create table for basic info (applicant_basic_info) *
CREATE TABLE raw.applicant_basic_info (
    id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL
);

-- 2. Create table for contact information (applicant_contact_info) *
CREATE TABLE raw.applicant_contact_info (
    applicant_basic_info_id INT REFERENCES raw.applicant_basic_info(id),
    contact_type VARCHAR(50) NOT NULL,
    contact_details VARCHAR(255) NOT NULL
);

-- 3. Create table for academic documents (applicant_academic_documents) *
CREATE TABLE raw.applicant_academic_documents (
    applicant_basic_info_id INT REFERENCES raw.applicant_basic_info(id),
    original_name VARCHAR(512) NOT NULL,
    path VARCHAR(1024) NOT NULL
);

-- 4. Create table for application information (application_info) *
CREATE TABLE raw.application_info (
    applicant_basic_info_id INT REFERENCES raw.applicant_basic_info(id),
    id INT PRIMARY KEY,
    requirements VARCHAR(1024),
    payment_proof VARCHAR(1024),
    notice_of_admission VARCHAR(1024)
);

-- 5. Create table for referee information (applicant_referee_info)
CREATE TABLE raw.applicant_referee_info (
    application_info_id INT REFERENCES raw.application_info(id),
    recommendation VARCHAR(1024)
);