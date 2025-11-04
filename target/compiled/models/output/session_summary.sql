SELECT
  u.userId,
  u.sessionId,
  u.channel,
  st.ts
FROM USER_DB_LEMUR.analytics.user_session_channel u
JOIN USER_DB_LEMUR.analytics.session_timestamp st
  ON u.sessionId = st.sessionId
