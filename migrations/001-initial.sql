--------------------------------------------------------------------------------
-- Up
--------------------------------------------------------------------------------

CREATE TABLE kv (
  k TEXT PRIMARY KEY,
  v TEXT NOT NULL
);

--------------------------------------------------------------------------------
-- Down
--------------------------------------------------------------------------------

DROP TABLE kv;