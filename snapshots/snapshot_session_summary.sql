{% snapshot snapshot_session_summary %}
{{
  config(
    target_schema='SNAPSHOT',
    unique_key='SESSIONID',
    strategy='timestamp',
    updated_at='TS',
    invalidate_hard_deletes=True
  )
}}
SELECT * FROM {{ ref('session_summary') }}
{% endsnapshot %}
