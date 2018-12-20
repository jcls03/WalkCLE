
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



INSERT INTO locations ([name], [description], street, city, district, zip, latitude, longitude, web_link, fb_link, tw_link, ig_link)
VALUES ('Tech Elevator', 'Tech Elevator is the PREMIER coding boot camp in North East Ohio.  Home to awesome staff like Josh Tucholski, and Frank Fella.  Fondeded by none other than Anthony Hughes and David Wintrich.  It has launched the careers of such programming giants as Kevin Batel, Jess Cray-Smith, Joe D''Antonio and Adam W. Seal.', '7100 Euclid Ave #140', 'Cleveland', 'OH', '44103', 41.503756, -81.638892, 'https://www.techelevator.com/', 'https://www.facebook.com/techelevator/', 'https://twitter.com/Tech_Elevator', 'https://www.instagram.com/techelevator/?hl=en'),
('Rock & Roll Hall of Fame', 'Where the Rock Meets Roll', '1100 E 9th St', 'Cleveland', 'OH', '44114', 41.508931, -81.694797, 'https://www.rockhall.com/', 'https://www.facebook.com/rockandrollhalloffame/', 'https://twitter.com/rockhall', 'https://www.instagram.com/rockhall/'),
('Cleveland Museum of Art', 'Where We Keep the Art', '11150 East Blvd', 'Cleveland', 'OH', '44106', 41.508965, -81.611420, 'http://www.clevelandart.org/', 'http://www.facebook.com/clevelandmuseumofart', 'http://twitter.com/ClevelandArt', 'http://www.instagram.com/clevelandmuseumofart'),
('Cleveland Museum of Natural History', 'Where We Keep the History... Naturally', '1 Wade Oval Dr', 'Cleveland', 'OH', '44106', 41.511578, -81.612912, 'https://www.cmnh.org/', 'https://www.facebook.com/theCMNH', 'https://twitter.com/goCMNH', 'http://instagram.com/gocmnh'),
('Great Lakes Science Center', 'Where We Do the Science', '601 Erieside Ave', 'Cleveland', 'OH', '44114', 41.507421, -81.696739, 'http://greatscience.com/', 'https://www.facebook.com/greatlakessciencecenter/', 'https://twitter.com/GLScienceCtr', 'https://www.instagram.com/greatlakessciencecenter/'),
('First Energy Stadium', 'Factory of Gladness', '100 Alfred Lerner Way', 'Cleveland', 'OH', '44114', 41.506041, -81.698234, 'http://firstenergystadium.com/', 'https://www.facebook.com/FEStadium', 'https://twitter.com/FEStadium', null),
('Progressive Field', 'The Jake', '2401 Ontario St', 'Cleveland', 'OH', '44115', 41.494724, -81.685283, 'https://www.mlb.com/indians/ballpark/', 'https://www.facebook.com/Indians/', 'https://twitter.com/Indians?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor', 'https://www.instagram.com/indians/?hl=en'),
('Quicken Loans Arena', 'The Q', '1 Center Ct', 'Cleveland', 'OH', '44115', 41.496492, -81.680304, 'https://www.theqarena.com/', 'http://www.facebook.com/QuickenLoansArena', 'http://www.twitter.com/TheQArena', 'https://www.instagram.com/theqarena/?hl=en'),
('Cedar Point', 'America''s RollerCoast', '1 Cedar Point Dr', 'Sandusky', 'OH', '44870', 41.482215, -82.683553, 'https://www.cedarpoint.com/', 'https://www.facebook.com/cedarpoint/', 'https://twitter.com/cedarpoint', 'https://www.instagram.com/cedarpoint'),
('Pro Football Hall of Fame & Museum', 'See the Football Heads', '2121 George Halas Dr NW', 'Canton', 'OH', '44708', 40.820980, -81.397843, 'https://www.profootballhof.com/', 'https://www.facebook.com/ProFootballHOF', 'https://twitter.com/profootballhof', 'https://instagram.com/profootballhof/'),
('Cleveland Metroparks Zoo', 'Where We Keep the Aminals', '3900 Wildlife Way', 'Cleveland', 'OH', '44109', 41.445404, -81.711476, 'https://www.clevelandmetroparks.com/zoo', 'https://www.facebook.com/ClevelandMetroparksZoo', 'https://twitter.com/clemetzoo', 'https://www.instagram.com/clevemetroparks/'),
('Hard Rock Rocksino', 'Rock ’n’ roll-themed chain with a high-energy vibe serving burgers & American classics... and Gambling', '10777 Northfield Rd', 'Northfield', 'OH', '44067', 41.347984, -81.524575, 'https://www.hrrocksinonorthfieldpark.com/', 'https://www.facebook.com/HRRocksinoNP', 'https://twitter.com/HRRocksinoNP', 'https://instagram.com/HRRocksinoNP/'),
('Playhouse Square', 'Where We Keep the Plays', '1501 Euclid Ave', 'Cleveland', 'OH', '44115', 41.501252, -81.680757, 'http://www.playhousesquare.org/', 'http://www.facebook.com/playhousesquare', 'http://www.twitter.com/playhousesquare', 'http://www.instagram.com/playhousesquare'),
('Cuyahoga Valley National Park', 'Big Ol'' Park', '1550 Boston Mills Rd', 'Peninsula' ,'OH', '44264', 41.263236, -81.558489, 'https://www.nps.gov/cuva/index.htm', 'https://www.facebook.com/CuyahogaValleyNationalPark', 'https://twitter.com/CVNPNPS', 'https://www.instagram.com/cuyahogavalleynps/'),
('West Side Market', 'Where we Keep the Food', '1979 W 25th St', 'Cleveland', 'OH', '44113', 41.484642, -81.703067, 'http://westsidemarket.org/', 'https://www.facebook.com/WestSideMarket', 'https://twitter.com/WestSideMarket', 'http://instagram.com/westsidemarket'),
('Severance Hall', 'Home of the Cleveland Orchestra', '11001 Euclid Ave', 'Cleveland', 'OH', '44106', 41.506436, -81.609433, 'https://www.clevelandorchestra.com/', 'https://www.facebook.com/clevelandorchestra/', 'https://twitter.com/CleveOrchestra?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor', 'https://www.instagram.com/cleveorch/?hl=en'),
('Cleveland Botanical Gardens', 'Where we Grow Stuff', '11030 East Blvd', 'Cleveland', 'OH', '44106', 41.511128, -81.609505, 'http://www.cbgarden.org/', 'http://www.facebook.com/cbgarden?ref=hl', 'https://twitter.com/cbgarden', ''),
('Stan Hywet Hall & Gardens', 'Historical Landmark', '714 N Portage Path', 'Akron', 'OH', '44303', 41.116835, -81.548893, 'https://www.stanhywet.org/', 'https://www.facebook.com/stanhywet/', 'https://twitter.com/stanhywet?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor', 'https://www.instagram.com/stanhywet/?hl=en');

DECLARE @techElevatorId int = (SELECT id FROM locations WHERE [name]='Tech Elevator');
DECLARE @severanceHallId int = (SELECT id FROM locations WHERE [name]='Severance Hall');
DECLARE @rockNRollId int = (SELECT id FROM locations WHERE [name]='Rock & Roll Hall of Fame');
DECLARE @artMuseumId int = (SELECT id FROM locations WHERE [name]='Cleveland Museum of Art');
DECLARE @historyMuseumId int = (SELECT id FROM locations WHERE [name]='Cleveland Museum of Natural History');
DECLARE @scienceCenterId int = (SELECT id FROM locations WHERE [name]='Great Lakes Science Center');
DECLARE @firstEnergyId int = (SELECT id FROM locations WHERE [name]='First Energy Stadium');
DECLARE @progressiveFieldId int = (SELECT id FROM locations WHERE [name]='Progressive Field');
DECLARE @quickenLoansId int = (SELECT id FROM locations WHERE [name]='Quicken Loans Arena');
DECLARE @cedarPointId int = (SELECT id FROM locations WHERE [name]='Cedar Point');
DECLARE @hardRockId int = (SELECT id FROM locations WHERE [name]='Hard Rock Rocksino');
DECLARE @playhouseSquareId int = (SELECT id FROM locations WHERE [name]='Playhouse Square');
DECLARE @valleyParkId int = (SELECT id FROM locations WHERE [name]='Cuyahoga Valley National Park');
DECLARE @westsideMarketId int = (SELECT id FROM locations WHERE [name]='Westside Market');
DECLARE @botanicalGardensId int = (SELECT id FROM locations WHERE [name]='Cleveland Botanical Gardens');
DECLARE @stanHywettechdsdId int = (SELECT id FROM locations WHERE [name]='Stan Hywet Hall & Gardens');


INSERT INTO location_venue_types (location_id, venue_type_id)
VALUES (@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='landmark')),
(@techElevatorId,
(SELECT id FROM venue_types WHERE [type]='school')),
(@severanceHallId,
(SELECT id FROM venue_types WHERE [type]='venue')),
(@rockNRollId,
(SELECT id FROM venue_types WHERE [type]='museum')),
(@rockNRollId,
(SELECT id FROM venue_types WHERE [type]='landmark')),
(@artMuseumId,
(SELECT id FROM venue_types WHERE [type]='museum')),
(@historyMuseumId,
(SELECT id FROM venue_types WHERE [type]='museum')),
(@scienceCenterId,
(SELECT id FROM venue_types WHERE [type]='museum')),
(@progressiveFieldId,
(SELECT id FROM venue_types WHERE [type]='stadium')),
(@firstEnergyId,
(SELECT id FROM venue_types WHERE [type]='stadium')),
(@quickenLoansId,
(SELECT id FROM venue_types WHERE [type]='stadium')),
(@cedarPointId,
(SELECT id FROM venue_types WHERE [type]='landmark')),



INSERT INTO venue_types ([type])
VALUES ('bar'), ('restaurant'), ('landmark'),
('museum'), ('cinema'), ('theater'), 
('stadium'), ('school'), ('park'), ('venue');


COMMIT TRANSACTION;

SELECT * FROM locations

SELECT name, latitude, longitude FROM locations