--Check Current WAL LSN
SELECT pg_current_wal_lsn();

--Compare WAL Positions
--Useful for replication lag.

SELECT pg_wal_lsn_diff('0/3000000', '0/2000000');

--View WAL Directory Size
SELECT pg_size_pretty(SUM(size))
FROM pg_ls_waldir();

--Archive Status
SELECT archived_count,
       failed_count,
       last_archived_wal,
       last_failed_wal
FROM pg_stat_archiver;

--WAL Statistics (PG 14+)
SELECT * FROM pg_stat_wal;



