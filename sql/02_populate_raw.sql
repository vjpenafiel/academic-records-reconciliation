-- 1. Transfer basic applicant info
INSERT INTO raw.applicant_basic_info (id, first_name, middle_name, last_name)
SELECT id, first_name, middle_name, last_name
FROM public.applicant_basic_info;

-- 2. Transfer contact details
INSERT INTO raw.applicant_contact_info (applicant_basic_info_id, contact_type, contact_details)
SELECT applicant_basic_info_id, contact_type, contact_details
FROM public.applicant_contact_info;

-- 3. Transfer academic document file paths
INSERT INTO raw.applicant_academic_documents (applicant_basic_info_id, original_name, path)
SELECT applicant_basic_info_id, original_name, path
FROM public.applicant_academic_documents;

-- 4. Transfer application information
INSERT INTO raw.application_info (applicant_basic_info_id, id, requirements, payment_proof, notice_of_admission)
SELECT applicant_basic_info_id, id, requirements, payment_proof, notice_of_admission
FROM public.application_info;

-- 5. Transfer referee information
INSERT INTO raw.applicant_referee_info (application_info_id, recommendation)
SELECT application_info_id, recommendation
FROM public.applicant_referee_info;