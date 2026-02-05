CREATE TABLE Sink (
    id        BIGINT,
    user_id   INT,
    ts_millis BIGINT,
    action    STRING,
    amount    DOUBLE,
    is_active BOOLEAN
) WITH (
    'connector' = 'filesystem',
    'path' = 's3a://ferenc-hadoop-write-test-bucket/dummy-job',
    'format' = 'flexible-json',
    'sink.rolling-policy.file-size' = '5MB',
    'sink.rolling-policy.rollover-interval' = '1 min'
);
