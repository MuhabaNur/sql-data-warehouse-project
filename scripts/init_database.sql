/*
==============================================================================================
create Data base and schemas 
==========================================================================
Script purpose:
this screapt creates a new data base named 'datawarehouse' after checking if it already exists.
if the data base exists it is dropped and recreated,Additionally ,the script sets up three schemas within the database:'bronze','silver'and 'gold'.
*/
--use master
use master

--drop and recreate 'datawarehouse' database 
if exists (select 1 from sys.databases where name='Datawarehouse')
begin 
  Alter Database Datawarehouse set single_user with rollback immediate;
  drop database datawarehouse;
  End ;
  Go 
  --create the 'Datawarehouse' Database
  create database datawarehouse;
  go
  use datawarehouse
  go 
  --create schemas
  create schema bronze
  go     
  create schema silver
  go
  create schema gold
