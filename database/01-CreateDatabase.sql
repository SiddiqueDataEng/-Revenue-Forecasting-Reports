/*
 * Revenue Forecasting Reports
 * Project #102 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ForecastReports')
BEGIN
    ALTER DATABASE ForecastReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ForecastReports;
END
GO

CREATE DATABASE ForecastReports
ON PRIMARY
(
    NAME = 'ForecastReports_Data',
    FILENAME = 'C:\SQLData\ForecastReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ForecastReports_Log',
    FILENAME = 'C:\SQLData\ForecastReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ForecastReports SET RECOVERY SIMPLE;
ALTER DATABASE ForecastReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE ForecastReports;
GO

PRINT 'Database ForecastReports created successfully';
PRINT 'Project: Revenue Forecasting Reports';
PRINT 'Description: Historical data planning usage';
GO
