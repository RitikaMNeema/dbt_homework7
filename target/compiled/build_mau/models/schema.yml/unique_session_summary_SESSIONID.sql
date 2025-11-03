
    
    

select
    SESSIONID as unique_field,
    count(*) as n_records

from USER_DB_LEMUR.analytics.session_summary
where SESSIONID is not null
group by SESSIONID
having count(*) > 1


