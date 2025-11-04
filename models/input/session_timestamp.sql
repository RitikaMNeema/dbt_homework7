with session_timestamp as (
    select
        sessionId,
        ts
    from {{ source('raw','session_timestamp') }}
    WHERE sessionId IS NOT NULL
)
select * from session_timestamp
