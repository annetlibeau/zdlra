# Database backup Bash shell script for Oracle's Recovery Appliance (ZDLRA) & Reporting database refresh script

These scripts were tested in an Oracle PeopleSoft environment running Oracle RAC/ASM 12c on Solaris 11 (Oracle SuperCluster T5-8) and a ZDLRA X5 system.

Steps to implement:

Run zdlra.sql to add the protected database. From RMAN, register the database with the recovery appliance catalog. If this database will be backed up using an incremental level 1 strategy utilizing real-time redo, change the redo transport user to the virtual private catalog owner.

Run zdlra.bsh to update the RMAN configuration.

Replace the following references in the scripts with the appropriate values:
&#60;appliance admin&#62;
&#60;passwd&#62;
&#60;zdlra catalog database&#62;
&#60;ra cluster SCAN&#62;
&#60;virtual private catalog owner&#62;
&#60;PeopleSoft database&#62;
&#60;protection policy&#62;

Create a clone_&#60;PeopleSoft database&#62;.rcv file for each database as per the clone_CSPRD.rcv example.

Run run_backup.bsh. The first parameter is the database instance. Specify <em>tape</em> as a second command line parameter to automatically schedule a Copy-To-Tape job once the backup completes. 

Run refresh_rpt.bsh to refresh a reporting database. The first parameter is the database instance.
