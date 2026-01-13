SELECT
    CASE
        WHEN MAX(updated_at) >= CURRENT_DATE - INTERVAL '1 day'
        THEN 'PASS'
        ELSE 'FAIL'
    END AS freshness_status,
    MAX(updated_at) AS latest_update
FROM orders;
