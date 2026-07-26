{{ config(materialized='table') }}

SELECT 
    EMPNO
    ,CONCAT(SUBSTRING(ENAME,1,1),LOWER(SUBSTRING(ENAME,2,LEN(ENAME)))) AS ENAME
    ,JOB
    ,MGR
    ,HIREDATE
    ,SAL
    ,COMM
    ,DEPTNO
FROM
{{ source('sources', 'employee') }}