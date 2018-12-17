
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
('museum'), ('cinema'), ('theater'), 
('stadium'), ('school'), ('park');

INSERT INTO locations ([name], [description], street, city, district, zip, latitude, longitude, web_link, fb_link, tw_link, ig_link)
VALUES ('Tech Elevator', 'Tech Elevator is the PREMIER coding boot camp in North East Ohio.  Home to awesome staff like Josh Tucholski, and Frank Fella.  Fondeded by none other than Anthony Hughes and David Wintrich.  It has launched the careers of such programming giants as Kevin Batel, Jess Cray-Smith, Joe D''Antonio and Adam W. Seal.', '7100 Euclid Ave #140', 'Cleveland', 'OH', '44103', 41.503756, -81.638892, 'https://www.techelevator.com/', 'https://www.facebook.com/techelevator/', 'https://twitter.com/Tech_Elevator', 'https://www.instagram.com/techelevator/?hl=en'),
('Rock & Roll Hall of Fame', 'Where the Rock Meets Roll', '1100 E 9th St', 'Cleveland', 'OH', '44114', 41.508931, -81.694797, null, null, null, null),
('Cleveland Museum of Art', 'Where We Keep the Art', '11150 East Blvd', 'Cleveland', 'OH', '44106', 41.508965, -81.611420, null, null, null, null),
('Cleveland Museum of Natural History', 'Where We Keep the History... Naturally', '1 Wade Oval Dr', 'Cleveland', 'OH', '44106', 41.511578, -81.612912, null, null, null, null),
('Great Lakes Science Center', 'Where We Do the Science', '601 Erieside Ave', 'Cleveland', 'OH', '44114', 41.507421, -81.696739, null, null, null, null),
('First Energy Stadium', 'Factory of Gladness', '100 Alfred Lerner Way', 'Cleveland', 'OH', '44114', 41.506041, -81.698234, null, null, null, null),
('Progressive Field', 'The Jake', '2401 Ontario St', 'Cleveland', 'OH', '44115', 41.494724, -81.685283, null, null, null, null),
('Quicken Loans Arena', 'The Q', '1 Center Ct', 'Cleveland', 'OH', '44115', 41.496492, -81.680304, null, null, null, null),
('Cedar Point', 'America''s RollerCoast', '1 Cedar Point Dr', 'Sandusky', 'OH', '44870', 41.482215, -82.683553, null, null, null, null),
('Pro Football Hall of Fame & Museum', 'See the Football Heads', '2121 George Halas Dr NW', 'Canton', 'OH', '44708', 40.820980, -81.397843, null, null, null, null),
('Cleveland Metroparks Zoo', 'Where We Keep the Aminals', '3900 Wildlife Way', 'Cleveland', 'OH', '44109', 41.445404, -81.711476, null, null, null, null),
('Hard Rock Rocksino', 'Rock ’n’ roll-themed chain with a high-energy vibe serving burgers & American classics... and Gambling', '10777 Northfield Rd', 'Northfield', 'OH', '44067', 41.347984, -81.524575, null, null, null, null),
('Playhouse Square', 'Where We Keep the Plays', '1501 Euclid Ave', 'Cleveland', 'OH', '44115', 41.501252, -81.680757, null, null, null, null),
('Cuyahoga Valley National Park', 'Big Ol'' Park', '1550 Boston Mills Rd', 'Peninsula' ,'OH', '44264', 41.263236, -81.558489, null, null, null, null),
('West Side Market', 'Where we Keep the Food', '1979 W 25th St', 'Cleveland', 'OH', '44113', 41.484642, -81.703067, null, null, null, null),
('Severance Hall', 'Home of the Cleveland Orchestra', '11001 Euclid Ave', 'Cleveland', 'OH', '44106', 41.506436, -81.609433, null, null, null, null),
('Cleveland Botanical Gardens', 'Where we Grow Stuff', '11030 East Blvd', 'Cleveland', 'OH', '44106', 41.511128, -81.609505, null, null, null, null),
('Stan Hywet Hall & Gardens', 'Historical Landmark', '714 N Portage Path', 'Akron', 'OH', '44303', 41.116835, -81.548893, null, null, null, null);

DECLARE @techElevatorId int = (SELECT id FROM locations WHERE [name]='Tech Elevator');


INSERT INTO location_venue_types (location_id, venue_type_id)
VALUES (@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='landmark')),
(@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='school'));


--INSERT INTO hours_of_operation (location_id, day_id, open_time, close_time)
--VALUES (@techElevatorId, 1, 09, 17), 
--(@techElevatorId, 2, 09, 17),
--(@techElevatorId, 3, 09, 17), 
--(@techElevatorId, 4, 09, 17)
--;


COMMIT TRANSACTION;

SELECT * FROM locations