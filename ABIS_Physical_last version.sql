/*
 * ER/Studio Data Architect 11.0 SQL Code Generation
 * Project :      Model1.DM1
 *
 * Date Created : Wednesday, July 29, 2015 09:53:44
 * Target DBMS : Microsoft SQL Server 2014
 */

USE master
go
CREATE DATABASE ABIS
go
USE ABIS
go
/* 
 * TABLE: CITY 
 */

CREATE TABLE CITY(
    CityID      int             IDENTITY(1,1),
    StateID     char(2)         NOT NULL,
    CityName    varchar(100)    NOT NULL,
    CONSTRAINT PK_CITY PRIMARY KEY NONCLUSTERED (CityID)
)
go



IF OBJECT_ID('CITY') IS NOT NULL
    PRINT '<<< CREATED TABLE CITY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CITY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each city.', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'StateID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'StateID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'State abbreviation', 'schema', 'dbo', 'table', 'CITY', 'column', 'StateID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the city', 'schema', 'dbo', 'table', 'CITY', 'column', 'CityName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CITY', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CITY'
END
exec sys.sp_addextendedproperty 'MS_Description', 'List of cities by state', 'schema', 'dbo', 'table', 'CITY'
go

/* 
 * TABLE: CLIENT 
 */

CREATE TABLE CLIENT(
    ClientID       bigint            IDENTITY(1,1),
    FirstName      varchar(100)      NOT NULL,
    LastName       varchar(100)      NOT NULL,
    Title          varchar(100)      NOT NULL,
    Email          varchar(100)      NOT NULL,
    WorkPhone      numeric(10, 0)    NOT NULL,
    MobilePhone    numeric(10, 0)    NULL,
    CONSTRAINT PK_CLIENT PRIMARY KEY NONCLUSTERED (ClientID)
)
go



IF OBJECT_ID('CLIENT') IS NOT NULL
    PRINT '<<< CREATED TABLE CLIENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CLIENT >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'ClientID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'ClientID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each client', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'ClientID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'FirstName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'FirstName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'First name of the client', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'FirstName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'LastName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'LastName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'LastName of the client', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'LastName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Title'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Title'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client''s title', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Title'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Email'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Email'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Email address of the client
', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'Email'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'WorkPhone'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'WorkPhone'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Work phone number for the client', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'WorkPhone'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'MobilePhone'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'MobilePhone'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Mobile phone for the client', 'schema', 'dbo', 'table', 'CLIENT', 'column', 'MobilePhone'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'CLIENT', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'CLIENT'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores information about the clients of ASD
', 'schema', 'dbo', 'table', 'CLIENT'
go

/* 
 * TABLE: COMPENSATION 
 */

CREATE TABLE COMPENSATION(
    CompensationID        bigint    IDENTITY(1,1),
    CompensationTypeID    int       NOT NULL,
    IRSTypeID             int       NOT NULL,
    StaffID               bigint    NOT NULL,
    Amount                money     NOT NULL,
    EffectiveDate         date      NOT NULL,
    FullTimeInd           bit       NULL,
    CONSTRAINT PK_COMPENSATION PRIMARY KEY NONCLUSTERED (CompensationID)
)
go



IF OBJECT_ID('COMPENSATION') IS NOT NULL
    PRINT '<<< CREATED TABLE COMPENSATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COMPENSATION >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each compensation record.', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each record.', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'CompensationTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'IRSTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'IRSTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each IRS Type record. ', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'IRSTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each staff record', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'Amount'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'Amount'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The amount of the compensation. Note that this can represent an hourly amount or a bonus amount. ', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'Amount'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'EffectiveDate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'EffectiveDate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Date the compensation was effective', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'EffectiveDate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'FullTimeInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'FullTimeInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not the compensation is full time or part time.', 'schema', 'dbo', 'table', 'COMPENSATION', 'column', 'FullTimeInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores current and historical data on compensation for staff', 'schema', 'dbo', 'table', 'COMPENSATION'
go

/* 
 * TABLE: COMPENSATION_TYPE 
 */

CREATE TABLE COMPENSATION_TYPE(
    CompensationTypeID    int             IDENTITY(1,1),
    CompensationType      varchar(100)    NOT NULL,
    CONSTRAINT PK_COMPENSATIONTYPE PRIMARY KEY NONCLUSTERED (CompensationTypeID)
)
go



IF OBJECT_ID('COMPENSATION_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE COMPENSATION_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COMPENSATION_TYPE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each record.', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationType'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationType'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Type of compensation (Initial, Increase, Bonus, Signing Bonus)', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', 'column', 'CompensationType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores compensation types (Regular Bonus, Signing Bonus, Initial Salary, Increase)', 'schema', 'dbo', 'table', 'COMPENSATION_TYPE'
go

/* 
 * TABLE: DIVISION 
 */

CREATE TABLE DIVISION(
    DivisionID        int              IDENTITY(1,1),
    DivisionNumber    decimal(5, 0)    NOT NULL,
    DivisionName      varchar(100)     NOT NULL,
    CONSTRAINT PK_DIVISION PRIMARY KEY NONCLUSTERED (DivisionID)
)
go



IF OBJECT_ID('DIVISION') IS NOT NULL
    PRINT '<<< CREATED TABLE DIVISION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIVISION >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each division record', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionNumber'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionNumber'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Number used to identify a division', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionNumber'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the division', 'schema', 'dbo', 'table', 'DIVISION', 'column', 'DivisionName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIVISION', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIVISION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores data pertaining to divisions', 'schema', 'dbo', 'table', 'DIVISION'
go

/* 
 * TABLE: FAMILY 
 */

CREATE TABLE FAMILY(
    FamilyID               bigint          IDENTITY(1,1),
    FamilyTypeID           bigint          NOT NULL,
    StaffID                bigint          NOT NULL,
    FirstName              varchar(100)    NOT NULL,
    LastName               varchar(100)    NOT NULL,
    EmergencyContactInd    bit             NOT NULL,
    CONSTRAINT PK_FAMILY PRIMARY KEY NONCLUSTERED (FamilyID)
)
go



IF OBJECT_ID('FAMILY') IS NOT NULL
    PRINT '<<< CREATED TABLE FAMILY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FAMILY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each family member', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates the type of family member (Spouse, Child, Mother, Father, Brother, Sister)', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FamilyTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates the staff to which the family member is associated.', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FirstName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FirstName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'First name of the family member', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'FirstName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'LastName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'LastName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Last name of the family member', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'LastName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'EmergencyContactInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'EmergencyContactInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not this family member is an emergency contact. ', 'schema', 'dbo', 'table', 'FAMILY', 'column', 'EmergencyContactInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores family members of staff', 'schema', 'dbo', 'table', 'FAMILY'
go

/* 
 * TABLE: FAMILY_TYPE 
 */

CREATE TABLE FAMILY_TYPE(
    FamilyTypeID    bigint          IDENTITY(1,1),
    FamilyType      varchar(100)    NOT NULL,
    CONSTRAINT PK_FAMILYTYPE PRIMARY KEY NONCLUSTERED (FamilyTypeID)
)
go



IF OBJECT_ID('FAMILY_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE FAMILY_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FAMILY_TYPE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each record', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyType'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyType'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores the family type (Spouse, Child, Mother, Father, Brother, Sister)', 'schema', 'dbo', 'table', 'FAMILY_TYPE', 'column', 'FamilyType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'FAMILY_TYPE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores data about family types (Spouse, Child, Mother, Father, Brother, Sister)', 'schema', 'dbo', 'table', 'FAMILY_TYPE'
go

/* 
 * TABLE: IRS_TYPE 
 */

CREATE TABLE IRS_TYPE(
    IRSTypeID    int             IDENTITY(1,1),
    IRSType      varchar(100)    NOT NULL,
    CONSTRAINT PK_IRSTYPE PRIMARY KEY NONCLUSTERED (IRSTypeID)
)
go



IF OBJECT_ID('IRS_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE IRS_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE IRS_TYPE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each IRS Type record. ', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSType'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSType'
END
exec sys.sp_addextendedproperty 'MS_Description', 'W2, 1099, or Corp-to-Corp', 'schema', 'dbo', 'table', 'IRS_TYPE', 'column', 'IRSType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'IRS_TYPE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores IRS Types (W2, 1099, C2C)', 'schema', 'dbo', 'table', 'IRS_TYPE'
go

/* 
 * TABLE: LABOR_CATALOG 
 */

CREATE TABLE LABOR_CATALOG(
    LaborCatalogID        bigint           IDENTITY(1,1),
    ClientTitle           varchar(100)     NOT NULL,
    ClientVariant         varchar(100)     NULL,
    ClientEducation       varchar(100)     NOT NULL,
    ClientYearsOfExp      int              NOT NULL,
    ClientRate            decimal(2, 1)    NOT NULL,
    ASDJobName            varchar(100)     NOT NULL,
    ASDVariant            varchar(100)     NULL,
    ExemptInd             bit              NOT NULL,
    ASDLaborCategoryID    bigint           NOT NULL,
    CONSTRAINT PK_LABORCATALOG PRIMARY KEY NONCLUSTERED (LaborCatalogID)
)
go



IF OBJECT_ID('LABOR_CATALOG') IS NOT NULL
    PRINT '<<< CREATED TABLE LABOR_CATALOG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LABOR_CATALOG >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'LaborCatalogID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'LaborCatalogID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each labor catalog record', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'LaborCatalogID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientTitle'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientTitle'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client defined title', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientTitle'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientVariant'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientVariant'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client defined variant', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientVariant'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientEducation'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientEducation'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client defined education requirement', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientEducation'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientYearsOfExp'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientYearsOfExp'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client defined years of experience requirement', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientYearsOfExp'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientRate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientRate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client defined rate level. This corresponds to bill level/step and pay level/step in "Bill and Pay Rates for LCATS.xls"', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ClientRate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDJobName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDJobName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The job name internal to ASD', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDJobName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDVariant'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDVariant'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The variant internal to ASD', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDVariant'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ExemptInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ExemptInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not this labor category is exempt.', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ExemptInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDLaborCategoryID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDLaborCategoryID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each record', 'schema', 'dbo', 'table', 'LABOR_CATALOG', 'column', 'ASDLaborCategoryID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATALOG'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores entries from ASD labor catalog', 'schema', 'dbo', 'table', 'LABOR_CATALOG'
go

/* 
 * TABLE: LABOR_CATEGORY 
 */

CREATE TABLE LABOR_CATEGORY(
    ASDLaborCategoryID    bigint          IDENTITY(1,1),
    LaborCategory         varchar(100)    NOT NULL,
    CONSTRAINT PK_LABORCATEGORY PRIMARY KEY NONCLUSTERED (ASDLaborCategoryID)
)
go



IF OBJECT_ID('LABOR_CATEGORY') IS NOT NULL
    PRINT '<<< CREATED TABLE LABOR_CATEGORY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LABOR_CATEGORY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'ASDLaborCategoryID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'ASDLaborCategoryID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each record', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'ASDLaborCategoryID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'LaborCategory'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'LaborCategory'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Labor category', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', 'column', 'LaborCategory'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LABOR_CATEGORY'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Lookup table storing labor categories from ASD labor categories spreadsheet', 'schema', 'dbo', 'table', 'LABOR_CATEGORY'
go

/* 
 * TABLE: MARKET 
 */

CREATE TABLE MARKET(
    MarketID      int             IDENTITY(1,1),
    MarketName    varchar(100)    NOT NULL,
    CONSTRAINT PK_MARKET PRIMARY KEY NONCLUSTERED (MarketID)
)
go



IF OBJECT_ID('MARKET') IS NOT NULL
    PRINT '<<< CREATED TABLE MARKET >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MARKET >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify the market', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the market', 'schema', 'dbo', 'table', 'MARKET', 'column', 'MarketName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MARKET', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MARKET'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores information pertaining to markets (Florida, Alabama, Mississippi)', 'schema', 'dbo', 'table', 'MARKET'
go

/* 
 * TABLE: MEETING 
 */

CREATE TABLE MEETING(
    MeetingID        bigint            IDENTITY(1,1),
    StaffID          bigint            NOT NULL,
    Purpose          varbinary(max)    NOT NULL,
    TalkingPoints    varbinary(max)    NULL,
    ActionItems      varbinary(max)    NULL,
    OpenIssues       varbinary(max)    NULL,
    CONSTRAINT PK_MEETING PRIMARY KEY NONCLUSTERED (MeetingID)
)
go



IF OBJECT_ID('MEETING') IS NOT NULL
    PRINT '<<< CREATED TABLE MEETING >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MEETING >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'MeetingID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'MeetingID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each meeting', 'schema', 'dbo', 'table', 'MEETING', 'column', 'MeetingID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each staff record', 'schema', 'dbo', 'table', 'MEETING', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'Purpose'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'Purpose'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Purpose of the meeting', 'schema', 'dbo', 'table', 'MEETING', 'column', 'Purpose'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'TalkingPoints'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'TalkingPoints'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Talking points of the meeting', 'schema', 'dbo', 'table', 'MEETING', 'column', 'TalkingPoints'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'ActionItems'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'ActionItems'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Action Items created during the meeting', 'schema', 'dbo', 'table', 'MEETING', 'column', 'ActionItems'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'OpenIssues'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING', 'column', 'OpenIssues'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Open issues created during the meeting', 'schema', 'dbo', 'table', 'MEETING', 'column', 'OpenIssues'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'MEETING', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'MEETING'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This table will store notes on meetings with staff or clients. Example: I have a phone call with a staff member, this will be RTF that will capture the conversation and determination. 
', 'schema', 'dbo', 'table', 'MEETING'
go

/* 
 * TABLE: ORGANIZATION 
 */

CREATE TABLE ORGANIZATION(
    OrganizationID         bigint          IDENTITY(1,1),
    OrganizationName       varchar(100)    NOT NULL,
    OrganizationAcronym    varchar(25)     NOT NULL,
    Address1               varchar(100)    NOT NULL,
    Address2               varchar(100)    NULL,
    City                   varchar(100)    NOT NULL,
    State                  varchar(100)    NOT NULL,
    ZipCode                varchar(100)    NOT NULL,
    CONSTRAINT PK_ORGANIZATION PRIMARY KEY NONCLUSTERED (OrganizationID)
)
go



IF OBJECT_ID('ORGANIZATION') IS NOT NULL
    PRINT '<<< CREATED TABLE ORGANIZATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ORGANIZATION >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each organization', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the organization. (e.g. Alabama Department of Corrections, Centers for Disease Control, or Systems Made Simple)', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationAcronym'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationAcronym'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Common acronym for the organization', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'OrganizationAcronym'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address1'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address1'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Address line 1', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address1'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address2'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address2'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Address Line 2', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'Address2'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'City'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'City'
END
exec sys.sp_addextendedproperty 'MS_Description', 'City where the agency resides', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'City'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'State'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'State'
END
exec sys.sp_addextendedproperty 'MS_Description', 'State where the agency resides', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'State'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'ZipCode'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'ZipCode'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Zip code where the agency resides', 'schema', 'dbo', 'table', 'ORGANIZATION', 'column', 'ZipCode'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ORGANIZATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores data about an organization that ASD does business with', 'schema', 'dbo', 'table', 'ORGANIZATION'
go

/* 
 * TABLE: PROJECT 
 */

CREATE TABLE PROJECT(
    ProjectID           bigint           IDENTITY(1,1),
    OrganizationID      bigint           NOT NULL,
    ProjectName         varchar(100)     NOT NULL,
    ProjectNumber       decimal(5, 0)    NOT NULL,
    ProjectStartDate    date             NOT NULL,
    ProjectEndDate      date             NOT NULL,
    Description         varchar(500)     NOT NULL,
    CONSTRAINT PK_PROJECT PRIMARY KEY NONCLUSTERED (ProjectID)
)
go



IF OBJECT_ID('PROJECT') IS NOT NULL
    PRINT '<<< CREATED TABLE PROJECT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PROJECT >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each project record', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'OrganizationID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'OrganizationID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each organization', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'OrganizationID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the project', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectNumber'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectNumber'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ASD assigned project number', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectNumber'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectStartDate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectStartDate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Start date of the project', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectStartDate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectEndDate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectEndDate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'End date of the project. Note: This is first entered by the user but subsequently updated and then locked after entry of a mod if the mod changes the date. ', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'ProjectEndDate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'Description'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'Description'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Short description of the project', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'Description'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores data about projects. ', 'schema', 'dbo', 'table', 'PROJECT'
go

/* 
 * TABLE: PROJECT_CLIENT 
 */

CREATE TABLE PROJECT_CLIENT(
    ProjectID         bigint    NOT NULL,
    ClientID          bigint    NOT NULL,
    ProjectLeadInd    bit       NOT NULL,
    CONSTRAINT PK_PROJECTCLIENT PRIMARY KEY NONCLUSTERED (ProjectID, ClientID)
)
go



IF OBJECT_ID('PROJECT_CLIENT') IS NOT NULL
    PRINT '<<< CREATED TABLE PROJECT_CLIENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PROJECT_CLIENT >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each project record', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ClientID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ClientID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each client', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ClientID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectLeadInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectLeadInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not the client is the project lead for the agency. This represents the top person with decision making authority. ', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', 'column', 'ProjectLeadInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_CLIENT'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores relationships between projects and clients', 'schema', 'dbo', 'table', 'PROJECT_CLIENT'
go

/* 
 * TABLE: PROJECT_STAFF 
 */

CREATE TABLE PROJECT_STAFF(
    ProjectID            bigint    NOT NULL,
    StaffID              bigint    NOT NULL,
    MarketID             int       NULL,
    DivisionID           int       NOT NULL,
    TaskLeadInd          bit       NOT NULL,
    AccountManagerInd    bit       NOT NULL,
    HourlyPay            money     NULL,
    BillRate             money     NULL,
    CONSTRAINT PK_PROJECTSTAFF PRIMARY KEY NONCLUSTERED (ProjectID, StaffID)
)
go



IF OBJECT_ID('PROJECT_STAFF') IS NOT NULL
    PRINT '<<< CREATED TABLE PROJECT_STAFF >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PROJECT_STAFF >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'ProjectID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'ProjectID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each project record', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'ProjectID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each staff record', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'MarketID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'MarketID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify the market', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'MarketID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'DivisionID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'DivisionID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each division record', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'DivisionID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'TaskLeadInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'TaskLeadInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not the staff member is the task lead. There should be only one task lead per project. ', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'TaskLeadInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'AccountManagerInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'AccountManagerInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not the staff member is the account manager. There can be 0 or 1 account managers on a project. ', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'AccountManagerInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'HourlyPay'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'HourlyPay'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates what ASD pays the staff member on an hourly basis. If the staff member is salary then this amount multiplied by 2080 will return their annual salary amount. This field will only be used for billable staff.', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'HourlyPay'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'BillRate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'BillRate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The bill rate we are charging for the staff member on the project.  This field will only be used for billable staff.', 'schema', 'dbo', 'table', 'PROJECT_STAFF', 'column', 'BillRate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT_STAFF'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores data and relations pertaining to projects and staff', 'schema', 'dbo', 'table', 'PROJECT_STAFF'
go

/* 
 * TABLE: STAFF 
 */

CREATE TABLE STAFF(
    StaffID           bigint          IDENTITY(1,1),
    LaborCatalogID    bigint          NOT NULL,
    FirstName         varchar(100)    NOT NULL,
    LastName          varchar(100)    NOT NULL,
    BirthDate         date            NOT NULL,
    StartDate         date            NOT NULL,
    Photo             image           NULL,
    IndirectInd       bit             NOT NULL,
    CONSTRAINT PK_STAFF PRIMARY KEY NONCLUSTERED (StaffID)
)
go



IF OBJECT_ID('STAFF') IS NOT NULL
    PRINT '<<< CREATED TABLE STAFF >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE STAFF >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each staff record', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LaborCatalogID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LaborCatalogID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each labor catalog record', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LaborCatalogID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FirstName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FirstName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Staff member''s first name', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FirstName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LastName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LastName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Staff member''s last name', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LastName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BirthDate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BirthDate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Staff member''s date of birth', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BirthDate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StartDate'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StartDate'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Date the staff first started with ASD.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'StartDate'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'Photo'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'Photo'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Picture of the staff member', 'schema', 'dbo', 'table', 'STAFF', 'column', 'Photo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'IndirectInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'IndirectInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates whether or not this staff is indirect.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'IndirectInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Stores information about all staff of ASD. This includes billlable/non-billable, W2, 1099, Corp to Corp', 'schema', 'dbo', 'table', 'STAFF'
go

/* 
 * TABLE: STATE 
 */

CREATE TABLE STATE(
    StateID     char(2)         NOT NULL,
    FullName    varchar(100)    NOT NULL,
    CONSTRAINT PK_STATE PRIMARY KEY NONCLUSTERED (StateID)
)
go



IF OBJECT_ID('STATE') IS NOT NULL
    PRINT '<<< CREATED TABLE STATE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE STATE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STATE', 'column', 'StateID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STATE', 'column', 'StateID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'State abbreviation', 'schema', 'dbo', 'table', 'STATE', 'column', 'StateID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STATE', 'column', 'FullName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STATE', 'column', 'FullName'
END
exec sys.sp_addextendedproperty 'MS_Description', 'StateName', 'schema', 'dbo', 'table', 'STATE', 'column', 'FullName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STATE', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STATE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'List of states in the US', 'schema', 'dbo', 'table', 'STATE'
go

/* 
 * TABLE: WORKING_MONTH 
 */

CREATE TABLE WORKING_MONTH(
    WorkingMonthInd            bigint           IDENTITY(1,1),
    ProjectID                  bigint           NOT NULL,
    StaffID                    bigint           NOT NULL,
    Month                      decimal(2, 0)    NOT NULL,
    Year                       decimal(4, 0)    NOT NULL,
    BillablePercentage         decimal(3, 0)    NOT NULL,
    ApproximateHoursPerWeek    decimal(2, 1)    NOT NULL,
    FringePercentage           decimal(3, 2)    NOT NULL,
    OverheadPercentage         decimal(3, 2)    NOT NULL,
    GAPercentage               decimal(3, 2)    NOT NULL,
    CONSTRAINT PK_WORKINGMONTH PRIMARY KEY NONCLUSTERED (WorkingMonthInd)
)
go



IF OBJECT_ID('WORKING_MONTH') IS NOT NULL
    PRINT '<<< CREATED TABLE WORKING_MONTH >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE WORKING_MONTH >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'WorkingMonthInd'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'WorkingMonthInd'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each WorkingMonth record. ', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'WorkingMonthInd'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ProjectID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ProjectID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each project record', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ProjectID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'StaffID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'StaffID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'ID used to uniquely identify each staff record', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'StaffID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Month'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Month'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates a number indicating a month. Values are (1,2,3,4,5,6,7,8,9,10,11,12)', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Month'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Year'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Year'
END
exec sys.sp_addextendedproperty 'MS_Description', '4 digit number indicating the year. ', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'Year'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'BillablePercentage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'BillablePercentage'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates what percentage of the month the staff is expected to bill.', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'BillablePercentage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ApproximateHoursPerWeek'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ApproximateHoursPerWeek'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Indicates an estimate of how many hours per week this person will work in a given month. ', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'ApproximateHoursPerWeek'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'FringePercentage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'FringePercentage'
END
exec sys.sp_addextendedproperty 'MS_Description', 'current or expected fringe percentage from accounting', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'FringePercentage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'OverheadPercentage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'OverheadPercentage'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Current fringe percentage', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'OverheadPercentage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'GAPercentage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'GAPercentage'
END
exec sys.sp_addextendedproperty 'MS_Description', 'current G&A Percentage rate', 'schema', 'dbo', 'table', 'WORKING_MONTH', 'column', 'GAPercentage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'WORKING_MONTH'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This table is used to store projections on what months a staff member is expected to work on a project and what percentage of time they are expected to bill for a given month.', 'schema', 'dbo', 'table', 'WORKING_MONTH'
go

/* 
 * INDEX: Ref129 
 */

CREATE INDEX Ref129 ON CITY(StateID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('CITY') AND name='Ref129')
    PRINT '<<< CREATED INDEX CITY.Ref129 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX CITY.Ref129 >>>'
go

/* 
 * INDEX: Ref2325 
 */

CREATE INDEX Ref2325 ON COMPENSATION(CompensationTypeID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('COMPENSATION') AND name='Ref2325')
    PRINT '<<< CREATED INDEX COMPENSATION.Ref2325 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX COMPENSATION.Ref2325 >>>'
go

/* 
 * INDEX: Ref128 
 */

CREATE INDEX Ref128 ON COMPENSATION(StaffID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('COMPENSATION') AND name='Ref128')
    PRINT '<<< CREATED INDEX COMPENSATION.Ref128 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX COMPENSATION.Ref128 >>>'
go

/* 
 * INDEX: Ref2429 
 */

CREATE INDEX Ref2429 ON COMPENSATION(IRSTypeID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('COMPENSATION') AND name='Ref2429')
    PRINT '<<< CREATED INDEX COMPENSATION.Ref2429 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX COMPENSATION.Ref2429 >>>'
go

/* 
 * INDEX: Ref11 
 */

CREATE INDEX Ref11 ON FAMILY(StaffID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FAMILY') AND name='Ref11')
    PRINT '<<< CREATED INDEX FAMILY.Ref11 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FAMILY.Ref11 >>>'
go

/* 
 * INDEX: Ref75 
 */

CREATE INDEX Ref75 ON FAMILY(FamilyTypeID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FAMILY') AND name='Ref75')
    PRINT '<<< CREATED INDEX FAMILY.Ref75 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FAMILY.Ref75 >>>'
go

/* 
 * INDEX: Ref97 
 */

CREATE INDEX Ref97 ON LABOR_CATALOG(ASDLaborCategoryID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('LABOR_CATALOG') AND name='Ref97')
    PRINT '<<< CREATED INDEX LABOR_CATALOG.Ref97 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX LABOR_CATALOG.Ref97 >>>'
go

/* 
 * INDEX: Ref12 
 */

CREATE INDEX Ref12 ON MEETING(StaffID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('MEETING') AND name='Ref12')
    PRINT '<<< CREATED INDEX MEETING.Ref12 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX MEETING.Ref12 >>>'
go

/* 
 * INDEX: Ref1017 
 */

CREATE INDEX Ref1017 ON PROJECT(OrganizationID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT') AND name='Ref1017')
    PRINT '<<< CREATED INDEX PROJECT.Ref1017 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT.Ref1017 >>>'
go

/* 
 * INDEX: Ref1113 
 */

CREATE INDEX Ref1113 ON PROJECT_CLIENT(ProjectID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_CLIENT') AND name='Ref1113')
    PRINT '<<< CREATED INDEX PROJECT_CLIENT.Ref1113 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_CLIENT.Ref1113 >>>'
go

/* 
 * INDEX: Ref314 
 */

CREATE INDEX Ref314 ON PROJECT_CLIENT(ClientID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_CLIENT') AND name='Ref314')
    PRINT '<<< CREATED INDEX PROJECT_CLIENT.Ref314 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_CLIENT.Ref314 >>>'
go

/* 
 * INDEX: Ref1118 
 */

CREATE INDEX Ref1118 ON PROJECT_STAFF(ProjectID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_STAFF') AND name='Ref1118')
    PRINT '<<< CREATED INDEX PROJECT_STAFF.Ref1118 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_STAFF.Ref1118 >>>'
go

/* 
 * INDEX: Ref119 
 */

CREATE INDEX Ref119 ON PROJECT_STAFF(StaffID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_STAFF') AND name='Ref119')
    PRINT '<<< CREATED INDEX PROJECT_STAFF.Ref119 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_STAFF.Ref119 >>>'
go

/* 
 * INDEX: Ref2123 
 */

CREATE INDEX Ref2123 ON PROJECT_STAFF(MarketID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_STAFF') AND name='Ref2123')
    PRINT '<<< CREATED INDEX PROJECT_STAFF.Ref2123 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_STAFF.Ref2123 >>>'
go

/* 
 * INDEX: Ref2024 
 */

CREATE INDEX Ref2024 ON PROJECT_STAFF(DivisionID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('PROJECT_STAFF') AND name='Ref2024')
    PRINT '<<< CREATED INDEX PROJECT_STAFF.Ref2024 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX PROJECT_STAFF.Ref2024 >>>'
go

/* 
 * INDEX: Ref86 
 */

CREATE INDEX Ref86 ON STAFF(LaborCatalogID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('STAFF') AND name='Ref86')
    PRINT '<<< CREATED INDEX STAFF.Ref86 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX STAFF.Ref86 >>>'
go

/* 
 * INDEX: Ref1621 
 */

CREATE INDEX Ref1621 ON WORKING_MONTH(StaffID, ProjectID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('WORKING_MONTH') AND name='Ref1621')
    PRINT '<<< CREATED INDEX WORKING_MONTH.Ref1621 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX WORKING_MONTH.Ref1621 >>>'
go

/* 
 * TABLE: CITY 
 */

ALTER TABLE CITY ADD CONSTRAINT RefSTATE9 
    FOREIGN KEY (StateID)
    REFERENCES STATE(StateID)
go


/* 
 * TABLE: COMPENSATION 
 */

ALTER TABLE COMPENSATION ADD CONSTRAINT RefCOMPENSATION_TYPE25 
    FOREIGN KEY (CompensationTypeID)
    REFERENCES COMPENSATION_TYPE(CompensationTypeID)
go

ALTER TABLE COMPENSATION ADD CONSTRAINT RefSTAFF28 
    FOREIGN KEY (StaffID)
    REFERENCES STAFF(StaffID)
go

ALTER TABLE COMPENSATION ADD CONSTRAINT RefIRS_TYPE29 
    FOREIGN KEY (IRSTypeID)
    REFERENCES IRS_TYPE(IRSTypeID)
go


/* 
 * TABLE: FAMILY 
 */

ALTER TABLE FAMILY ADD CONSTRAINT RefSTAFF1 
    FOREIGN KEY (StaffID)
    REFERENCES STAFF(StaffID)
go

ALTER TABLE FAMILY ADD CONSTRAINT RefFAMILY_TYPE5 
    FOREIGN KEY (FamilyTypeID)
    REFERENCES FAMILY_TYPE(FamilyTypeID)
go


/* 
 * TABLE: LABOR_CATALOG 
 */

ALTER TABLE LABOR_CATALOG ADD CONSTRAINT RefLABOR_CATEGORY7 
    FOREIGN KEY (ASDLaborCategoryID)
    REFERENCES LABOR_CATEGORY(ASDLaborCategoryID)
go


/* 
 * TABLE: MEETING 
 */

ALTER TABLE MEETING ADD CONSTRAINT RefSTAFF2 
    FOREIGN KEY (StaffID)
    REFERENCES STAFF(StaffID)
go


/* 
 * TABLE: PROJECT 
 */

ALTER TABLE PROJECT ADD CONSTRAINT RefORGANIZATION17 
    FOREIGN KEY (OrganizationID)
    REFERENCES ORGANIZATION(OrganizationID)
go


/* 
 * TABLE: PROJECT_CLIENT 
 */

ALTER TABLE PROJECT_CLIENT ADD CONSTRAINT RefPROJECT13 
    FOREIGN KEY (ProjectID)
    REFERENCES PROJECT(ProjectID)
go

ALTER TABLE PROJECT_CLIENT ADD CONSTRAINT RefCLIENT14 
    FOREIGN KEY (ClientID)
    REFERENCES CLIENT(ClientID)
go


/* 
 * TABLE: PROJECT_STAFF 
 */

ALTER TABLE PROJECT_STAFF ADD CONSTRAINT RefPROJECT18 
    FOREIGN KEY (ProjectID)
    REFERENCES PROJECT(ProjectID)
go

ALTER TABLE PROJECT_STAFF ADD CONSTRAINT RefSTAFF19 
    FOREIGN KEY (StaffID)
    REFERENCES STAFF(StaffID)
go

ALTER TABLE PROJECT_STAFF ADD CONSTRAINT RefMARKET23 
    FOREIGN KEY (MarketID)
    REFERENCES MARKET(MarketID)
go

ALTER TABLE PROJECT_STAFF ADD CONSTRAINT RefDIVISION24 
    FOREIGN KEY (DivisionID)
    REFERENCES DIVISION(DivisionID)
go


/* 
 * TABLE: STAFF 
 */

ALTER TABLE STAFF ADD CONSTRAINT RefLABOR_CATALOG6 
    FOREIGN KEY (LaborCatalogID)
    REFERENCES LABOR_CATALOG(LaborCatalogID)
go


/* 
 * TABLE: WORKING_MONTH 
 */

ALTER TABLE WORKING_MONTH ADD CONSTRAINT RefPROJECT_STAFF21 
    FOREIGN KEY (ProjectID, StaffID)
    REFERENCES PROJECT_STAFF(ProjectID, StaffID)
go


