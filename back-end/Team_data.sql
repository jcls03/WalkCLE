
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

INSERT INTO venue_types ([type])
VALUES ('bar'), ('restaurant'), ('landmark'),
('museum'), ('cinema'), ('theater'), ('coffee shop'),
('stadium'), ('school'), ('park');

INSERT INTO locations ([name], [description], street, city, district, zip, web_link, fb_link, tw_link, ig_link)
VALUES ('Tech Elevator', 'Tech Elevator is the PREMIER coding boot camp in North East Ohio.  Home to awesome staff like Josh Tucholski, and Frank Fella.  Fondeded by none other than Anthony Hughes and David Wintrich.  It has launched the careers of such programming giants as Kevin Batel, Jess Cray-Smith, Joe D''Antonio and Adam W. Seal.', '7100 Euclid Ave #140', 'Cleveland', 'OH', '44103', 'https://www.techelevator.com/', 'https://www.facebook.com/techelevator/', 'https://twitter.com/Tech_Elevator', 'https://www.instagram.com/techelevator/?hl=en'),
('Jolly Scholar', 'From the simplest ale to the most difficult wild-fermented, barrel-aged drop of beer they make, science, knowledge, hard work and soul is found in every glass of liquid The Scholar pours. Get Jolly!', '11111 Euclid Ave', 'Cleveland', 'OH', '44106', 'https://www.thejollyscholar.com/', 'https://www.facebook.com/jolly.scholar/', 'https://twitter.com/JollyScholar', 'https://www.instagram.com/jollyscholar/?hl=en'),
('Gallucci''s Italian Foods', 'Gallucci''s Italian Foods is your premier source for Italian Delicacies, including a full-service deli & bakery, fresh olive counter, fresh pasta, sauces, Italian pepper products, etc', '6610 Euclid Ave', 'Cleveland', 'OH', '44103', 'http://tasteitaly.com/', 'https://www.facebook.com/GalluccisCleveland/', null, null),
('Fairfax Park', 'Local Park Hosting Community Events and Recreation Center', '2335 E 82nd St', 'Cleveland', 'OH', '44104', null, null, null, null);

DECLARE @techElevatorId int = (SELECT id FROM locations WHERE [name]='Tech Elevator');
DECLARE @gallucciId int = (SELECT id FROM locations WHERE [name]='Gallucci''s Italian Foods');
DECLARE @fairfaxId int = (SELECT id FROM locations WHERE [name]='Fairfax Park');
DECLARE @jollyId int = (SELECT id FROM locations WHERE [name]='Jolly Scholar');


INSERT INTO location_venue_types (location_id, venue_type_id)
VALUES (@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='landmark')),
(@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='school')),
(@gallucciId,
(SELECT id FROM venue_types WHERE [type]='restaurant')),
(@jollyId,
(SELECT id FROM venue_types WHERE [type]='bar')),
(@fairfaxId,
(SELECT id FROM venue_types WHERE [type]='park'));


INSERT INTO hours_of_operation (location_id, day_id, open_time, close_time)
VALUES (@techElevatorId, 1, 09, 17), 
(@techElevatorId, 2, 09, 17),
(@techElevatorId, 3, 09, 17), 
(@techElevatorId, 4, 09, 17),
;


COMMIT TRANSACTION;

SELECT * FROM location_venue_types