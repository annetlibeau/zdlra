whenever sqlerror exit sql.sqlcode
set serveroutput on echo on
declare
mydb varchar2(200); 
begin
select name into mydb from v$database;
if mydb = '&1' then
	execute immediate 'truncate table ps.psdbowner';
	execute immediate 'insert into ps.psdbowner(dbname,ownerid) values (''&1'',''SYSADM'')';
	execute immediate 'commit';
end if;
end;
/
