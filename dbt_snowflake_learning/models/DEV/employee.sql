{{ config(materialized='table') }}

SELECT
    EMPNO,
    JOB,
    MGR,
    HIREDATE,
    SAL,
    COMM,
    DEPTNO,
    CONCAT(
        SUBSTRING(ENAME, 1, 1),
        LOWER(SUBSTRING(ENAME, 2, LEN(ENAME)))
    ) AS ENAME
FROM
    {{ source('sources', 'employee') }}
