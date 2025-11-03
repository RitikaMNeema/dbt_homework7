
  create or replace   view USER_DB_LEMUR.analytics.session_timestamp
  
  
  
  
  as (
    SELECT sessionId, ts
FROM USER_DB_LEMUR.raw.session_timestamp
WHERE sessionId IS NOT NULL
  );

