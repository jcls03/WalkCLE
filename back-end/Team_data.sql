
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

INSERT INTO locations ([name], [description], street, city, district, zip)
VALUES ('Tech Elevator', 'Tech Elevator is the PREMIER coding boot camp in North East Ohio.  Home to awesome staff like Josh Tucholski, and Frank Fella.  Fondeded by none other than Anthony Hughes and David Wintrich.  It has launched the careers of such programming giants as Kevin Batel, Jess Cray-Smith, Joe D''Antonio and Adam W. Seal.', '7100 Euclid Ave #140', 'Cleveland', 'OH', '44103'),
('Jolly Scholar', 'From the simplest ale to the most difficult wild-fermented, barrel-aged drop of beer they make, science, knowledge, hard work and soul is found in every glass of liquid The Scholar pours. Get Jolly!', '11111 Euclid Ave', 'Cleveland', 'OH', '44106'),
('Gallucci''s Italian Foods', 'Gallucci''s Italian Foods is your premier source for Italian Delicacies, including a full-service deli & bakery, fresh olive counter, fresh pasta, sauces, Italian pepper products, etc', '6610 Euclid Ave', 'Cleveland', 'OH', '44103'),
('Fairfax Park', 'Local Park Hosting Community Events and Recreation Center', '2335 E 82nd St', 'Cleveland', 'OH', '44104');


INSERT INTO location_venue_types (location_id, venue_type_id)
VALUES ((SELECT id FROM locations WHERE [name]='Tech Elevator'),
(SELECT id FROM venue_types WHERE [type]='landmark')),
((SELECT id FROM locations WHERE [name]='Tech Elevator'),
(SELECT id FROM venue_types WHERE [type]='school')),
((SELECT id FROM locations WHERE [name]='Gallucci''s Italian Foods'),
(SELECT id FROM venue_types WHERE [type]='restaurant')),
((SELECT id FROM locations WHERE [name]='Jolly Scholar'),
(SELECT id FROM venue_types WHERE [type]='bar')),
((SELECT id FROM locations WHERE [name]='Fairfax Park'),
(SELECT id FROM venue_types WHERE [type]='park'));

COMMIT TRANSACTION;

SELECT * FROM location_venue_types