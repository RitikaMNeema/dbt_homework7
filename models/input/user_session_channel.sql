with user_session_channel as (
    select
        userId,
        sessionId,
        channel
    from {{ source('raw','user_session_channel') }}
    WHERE sessionId IS NOT NULL
)
select * from user_session_channel
