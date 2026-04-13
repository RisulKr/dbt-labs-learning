{{ config(materialized='table') }}


WITH active_full_time_production_employees AS (
    SELECT 
        EMPLOYEE_ID,
        JOB_FUNCTION_ID,
        PRIMARY_SKILL_ID,
        PRODUCTION_CATEGORY,
        ORG_CATEGORY,
        ORG_CATEGORY_TYPE
    FROM {{ ref('active_employees')  }}
    WHERE EMPLOYMENT_STATUS = 'Full-time employee' AND PRODUCTION_CATEGORY = 'Production'
)
SELECT * FROM active_full_time_production_employees