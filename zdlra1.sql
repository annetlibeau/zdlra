-- Run as appliance admin connected to Recovery Appliance
set serveroutput on echo on
begin
dbms_ra.add_db(
db_unique_name => '<PeopleSoft database>',
protection_policy_name => 'protection policy',
reserved_space => '2T');
end;
/
begin
dbms_ra.grant_db_access(
db_unique_name => '<PeopleSoft database>',
username => '<virtual private catalog owner>');
end;
/
