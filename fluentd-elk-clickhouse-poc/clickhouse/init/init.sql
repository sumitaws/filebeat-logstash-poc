CREATE TABLE nginx_logs (
  timestamp DateTime,
  host String,
  auth String,
  verb String,
  path String,
  protocol String,
  code UInt16,
  status UInt16,
  size UInt64,
  referer String,
  agent String
) ENGINE = MergeTree
ORDER BY timestamp;

