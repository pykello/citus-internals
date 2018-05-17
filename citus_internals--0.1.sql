
CREATE FUNCTION citus_connections_hash()
RETURNS TABLE (
  hostname TEXT,
  port INT,
  "user" TEXT,
  database TEXT,
  socket INT,
  sessionLifespan BOOLEAN,
  claimedExclusively BOOLEAN,
  connectionStart Timestamp WITH TIME ZONE
)
AS 'MODULE_PATHNAME', 'citus_connections_hash'
LANGUAGE C STRICT IMMUTABLE;
