#!/usr/bin/env bash
echo "shared_preload_libraries = 'pg_stat_statements'" >> $PGDATA/postgresql.conf
echo "pg_stat_statements.max = 10000" >> $PGDATA/postgresql.conf
echo "pg_stat_statements.track = all" >> $PGDATA/postgresql.conf

echo "log_statement = 'all'" >> $PGDATA/postgresql.conf
echo "log_directory = 'pg_log'" >> $PGDATA/postgresql.conf
echo "log_filename = 'postgresql-%Y-%m-%d_%H%M%S.log'" >> $PGDATA/postgresql.conf
echo "logging_collector = on" >> $PGDATA/postgresql.conf
echo "log_min_error_statement = error" >> $PGDATA/postgresql.conf

echo "wal_level = hot_standby" >> $PGDATA/postgresql.conf
echo "max_wal_senders = 4" >> $PGDATA/postgresql.conf
echo "hot_standby = on" >> $PGDATA/postgresql.conf
echo "max_replication_slots = 4" >> $PGDATA/postgresql.conf
echo "log_min_duration_statement = 1000" >> $PGDATA/postgresql.conf
