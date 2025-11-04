with session_timestamp as (
    select
        sessionId,
        ts
    from USER_DB_LEMUR.raw.session_timestamp
)
select * from session_timestamp