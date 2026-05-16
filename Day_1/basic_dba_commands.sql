--Pg_stat actvity
SELECT
    pid,
    usename,
    datname,
    state,
    query,
    query_start
FROM pg_stat_activity;

--active connections
SELECT
    pid,
    usename,
    state,
    query,
    now() - query_start AS duration
FROM pg_stat_activity
WHERE state = 'active';
