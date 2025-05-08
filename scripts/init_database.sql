/*
==============================================================================
Create Database and Schemas
==============================================================================

Scripts Pupose:

    This Script creates a new database named 'DataWareouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 
'bronze', 'silver', 'gold'.

WARNING:
  Running this scipt will drop teh entire 'DataWarehouse' database if exists.
  All data in the database will be permanently deleted. Proceed with caution and 
  ensure you proper backups before running this script.
*/


-- Create Dtabase 'DataWarehouse'



USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWharehouse')
BEGIN
	ALTER DATABASE DataWharehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWharehouse;
END;
GO

-- create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO


USE DataWarehouse;
GO

-- CREATE SCHEMAS
CREATE SCHEMA bronze;
GO


CREATE SCHEMA silver;
GO


CREATE SCHEMA gold;
GO
