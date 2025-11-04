
  create or replace   view USER_DB_LEMUR.analytics.session_timestamp
  
  
  
  
  as (
    with session_timestamp as (
    select
        sessionId,
        ts
    from USER_DB_LEMUR.raw.session_timestamp
)
select * from session_timestamp
  );

