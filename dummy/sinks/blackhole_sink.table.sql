CREATE TABLE Sink (
    id        BIGINT,
    user_id   INT,
    ts_millis BIGINT,
    action    STRING,
    amount    DOUBLE,
    is_active BOOLEAN
) WITH (
      'connector' = 'blackhole'
);
