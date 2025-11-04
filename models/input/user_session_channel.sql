with user_session_channel as (
    select
        userId,
        sessionId,
        channel
    from {{ source('raw','user_session_channel') }}
)
select * from user_session_channel