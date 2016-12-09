set serveroutput on echo on
set lines 120
begin
dbms_ra.copy_backup('&1','%d_%I_%T_%t_%U','DEVELOPMENT_COPY-TO-TAPE');
end;
/
