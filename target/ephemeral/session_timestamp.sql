__dbt__cte__session_timestamp as (
SELECT sessionId, ts
FROM USER_DB_LEMUR.raw.session_timestamp
WHERE sessionId IS NOT NULL
)