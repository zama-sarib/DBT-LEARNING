SELECT
    *
FROM 
     {{ ref('employee') }}
WHERE 
    HIREDATE <= '1985-01-01'