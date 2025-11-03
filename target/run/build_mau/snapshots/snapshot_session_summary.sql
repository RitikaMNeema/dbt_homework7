
      
  
    

create or replace transient table USER_DB_LEMUR.SNAPSHOT.snapshot_session_summary
    
    
    
    as (
    

    select *,
        md5(coalesce(cast(SESSIONID as varchar ), '')
         || '|' || coalesce(cast(TS as varchar ), '')
        ) as dbt_scd_id,
        TS as dbt_updated_at,
        TS as dbt_valid_from,
        
  
  coalesce(nullif(TS, TS), null)
  as dbt_valid_to
from (
        

SELECT * FROM USER_DB_LEMUR.analytics.session_summary
    ) sbq



    )
;


  
  