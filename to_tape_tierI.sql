set serveroutput on echo on
set lines 120
begin
dbms_ra.copy_backup('&1','&1' || '_%t_%U','PRODUCTION_COPY-TO-TAPE');
end;
/
