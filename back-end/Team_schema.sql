
-- Switch to the system (aka master) database
USE master;
GO

-- Delete the WalkCLE Database (IF EXISTS)
IF EXISTS(select * from sys.databases where name='WalkCLE')
DROP DATABASE WalkCLE;
GO

-- Create a new WalkCLE Database
CREATE DATABASE WalkCLE;
GO

-- Switch to the WalkCLE Database
USE WalkCLE
GO

BEGIN TRANSACTION;

-- Users table provided
CREATE TABLE users
(
	id			int			identity(1,1),
	username	varchar(50)	not null,
	password	varchar(50)	not null,
	salt		varchar(50)	not null,
	role		varchar(50)	default('user'),

	constraint pk_users primary key (id)
);

-- key location data table from reqs, to be expanded upon with other tables
CREATE TABLE locations
(
	id			int				identity(1,1),
	name		varchar(50)		not null,
	description	text			not null,
	latitude	float			not null,
	longitude	float			not null,
	web_link	varchar(100)	null,
	fb_link		varchar(100)	null,
	tw_link		varchar(100)	null,
	ig_link		varchar(100)	null,
	
	constraint pk_locations primary key (id)
);

-- base day of week table used for hours of operation operations
CREATE TABLE day_of_week
(
	day_id			int				not null,
	abbreviation	varchar(4)		not null,
	name			varchar(10)		not null,
	
	constraint pk_day_of_week primary key (day_id)
);

CREATE TABLE hours_of_operation
(
	-- this table will have 7 entries per location for hours of operation
	-- null in open_time means it is closed that day
	-- borrowed from: https://arstechnica.com/civis/viewtopic.php?f=20&t=204208

	id				int		identity(1,1),
	location_id		int		not null,
	day_id			int		not null,
	open_time		time	null,
	close_time		time	null,
	
	constraint pk_hours_of_operation primary key (id),
	constraint fk_location_id foreign key (location_id) references locations (id)
);

-- table for venue type "hashtags"
CREATE TABLE venue_types
(
	id		int			identity(1,1),
	type	varchar(20)	not null,
	
	constraint pk_venue_types primary key (id)
);

CREATE TABLE lcoation_venue_types
(
	location_id		int		not null,
	venue_type_id	int		not null,

	
	constraint pk_lcoation_venue_types primary key (location_id),
	constraint fk_lcoation_venue_id foreign key (location_id) references locations (id),
	constraint fk_lcoation_venue_type foreign key (venue_type_id) references venue_types (id)
);


COMMIT TRANSACTION;