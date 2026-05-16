--Create schema
CREATE SCHEMA dbo;
CREATE SCHEMA def;

--Create table
CREATE TABLE dbo.test1(
	col1 integer not null,
	col2 integer not null,
	col3 varchar(50) not null,
	Primary key(col1));
	
	
CREATE TABLE def.test1(
	col1 integer not null,
	col2 integer not null,
	col3 varchar(50) not null,
	Primary key(col1));
	
