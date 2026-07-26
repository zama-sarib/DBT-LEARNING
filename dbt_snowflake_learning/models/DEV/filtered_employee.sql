SELECT
    *
FROM 
     {{ ref('employee') }}
WHERE 
    HIREDATE <= '1982-01-01'