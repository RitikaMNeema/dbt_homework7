with user_session_channel as (
    select
        userId,
        sessionId,
        channel
    from USER_DB_LEMUR.raw.user_session_channel
)
select * from user_session_channel