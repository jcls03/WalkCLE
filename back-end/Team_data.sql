
-- THIS SCRIPT MUST BE UPDATED AS WE ADD LOCATIONS etc. SO WE CAN SYNC OUR INDIVIDUAL DATABASES

-- Switch to the WalkCLE Database
USE WalkCLE
GO

-- to populate needed / starter data
BEGIN TRANSACTION;

INSERT INTO day_of_week ( day_id, abbreviation, name )
VALUES (1, 'Mon', 'Monday'), (2, 'Tues', 'Tuesday'),
(3, 'Wed', 'Wednesday'), (4, 'Thur', 'Thursday'),
(5, 'Fri', 'Friday'), (6, 'Sat', 'Saturday'),
(7, 'Sun', 'Sunday');

INSERT INTO venue_types (type)
VALUES ('bar'), ('restaurant'), ('landmark'),
('museum'), ('cinema'), ('theater'), ('coffee shop'),
('stadium');

INSERT INTO locations (name, description, latitude, longitude)
VALUES ('Tech Elevator', 'Tech Elevator is the PREMIER coding boot camp in North East Ohio.  Home to awesome staff like Josh Tucholski, and Frank Fella.  Fondeded by none other than Anthony Hughes and David Wintrich.  It has launched the careers of such programming giants as Kevin Batel, Jess Cray-Smith, and Adam W. Seal.', 41.503852, -81.639063)

COMMIT TRANSACTION;