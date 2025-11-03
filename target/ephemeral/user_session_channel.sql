__dbt__cte__user_session_channel as (
SELECT userId, sessionId, channel
FROM USER_DB_LEMUR.raw.user_session_channel
WHERE sessionId IS NOT NULL
)