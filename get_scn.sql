set echo off head off feedback off
spool &1
col chkpnt# format 99999999999999999999999999
select max(checkpoint_change#) chkpnt# from v$backup_datafile
/
spool off
