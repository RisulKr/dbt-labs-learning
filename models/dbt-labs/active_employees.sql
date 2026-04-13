{{ config(materialized='table') }}


WITH active_employees AS (
    SELECT 
        EMPLOYEE_ID,
        JOB_FUNCTION_ID,
        PRIMARY_SKILL_ID,
        PRODUCTION_CATEGORY,
        EMPLOYMENT_STATUS,
        ORG_CATEGORY,
        ORG_CATEGORY_TYPE
    FROM RAW.EMPLOYEES
)
SELECT * FROM active_employees