CAST(SHA2_BINARY(CONCAT(
    IFNULL(NULLIF(UPPER(TRIM(CAST(CUSTOMER_ID AS VARCHAR))), ''), '^^'), '||',
    IFNULL(NULLIF(UPPER(TRIM(CAST(DOB AS VARCHAR))), ''), '^^'), '||',
    IFNULL(NULLIF(UPPER(TRIM(CAST(PHONE AS VARCHAR))), ''), '^^')
)) AS BINARY(32)) AS HASHDIFF