set serveroutput on 
set feedback off
declare is_done number;
begin
for result_cursor in (select count(1) is_done from ra_sbt_task where db_unique_name = '&1' and state ^= 'COMPLETED') loop
dbms_output.put_line(result_cursor.is_done);
end loop;
end;
/
exit
