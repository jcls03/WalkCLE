
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
('stadium'), ('school'), ('park'), ('venue');

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
(SELECT id FROM venue_types WHERE [type]='landmark'));

UPDATE locations 
SET description = 'The Rock and Roll Hall of Fame, located on the shore of Lake Erie in downtown Cleveland, Ohio, recognizes and archives the history of the best-known and most influential artists, producers, engineers, and other notable figures who have had some major influence on the development of rock and roll. The Rock and Roll Hall of Fame Foundation was established on April 20, 1983, by Atlantic Records founder and chairman Ahmet Ertegun. In 1986, Cleveland was chosen as the Hall of Fame''s permanent home.'
WHERE id = 2

UPDATE locations 
SET description = 'The Cleveland Museum of Art (CMA) is an art museum in Cleveland, Ohio, located in the Wade Park District, in the University Circle neighborhood on the city''s east side. Internationally renowned for its substantial holdings of Asian and Egyptian art, the museum houses a diverse permanent collection of more than 45,000 works of art from around the world. The museum provides general admission free to the public. With a $755 million endowment, it is the fourth-wealthiest art museum in the nation. With about 705,000 visitors annually (2016), it is one of the most visited art museums in the world.'
WHERE id = 3

UPDATE locations 
SET description = 'The Cleveland Museum of Natural History is a natural history museum located approximately five miles (8 km) east of downtown Cleveland, Ohio in University Circle, a 550-acre concentration of educational, cultural and medical institutions. The museum was established in 1920 by Cyrus S. Eaton to perform research, education and development of collections in the fields of anthropology, archaeology, astronomy, botany, geology, paleontology, wildlife biology, and zoology.'
WHERE id = 4

UPDATE locations 
SET description = 'The Great Lakes Science Center is a museum and educational facility in downtown Cleveland, Ohio, United States. Many of the exhibits document the features of the natural environment in the Great Lakes region of the United States. The facility includes signature (permanent) and traveling exhibits, meeting space, a cafe, and an IMAX Dome theater.'
WHERE id = 5

UPDATE locations 
SET description = 'FirstEnergy Stadium is a multi-purpose stadium in Cleveland, Ohio, United States, primarily for American football. It is the home field of the Cleveland Browns of the National Football League (NFL), and serves as a venue for other events such as college and high school football, soccer, and concerts. It opened in 1999 as Cleveland Browns Stadium and was renovated in two phases in early 2014 and 2015. The initial seating capacity was listed at 73,200 people, but following the first phase of the renovation project in 2014, seating capacity was reduced to 67,431. Since 2017, capacity is listed at 67,895. The stadium sits on 31 acres of land between Lake Erie and the Cleveland Memorial Shoreway in the North Coast Harbor area of downtown Cleveland, adjacent to the Great Lakes Science Center and Rock and Roll Hall of Fame. The site was previously the location of Cleveland Stadium from 1931 to 1996.'
WHERE id = 6

UPDATE locations 
SET description = 'Progressive Field is a baseball park located in the downtown area of Cleveland, Ohio, United States. It is the home field of the Cleveland Indians of Major League Baseball and, together with Quicken Loans Arena, is part of the Gateway Sports and Entertainment Complex. It was ranked as Major League Baseball''s best ballpark in a 2008 Sports Illustrated fan opinion poll. The ballpark opened as Jacobs Field in 1994 to replace Cleveland Stadium, which the team had shared with the Cleveland Browns of the National Football League. Since 2008, the facility has been named for Progressive Corporation, based in the Cleveland suburb of Mayfield, which purchased naming rights for $58 million over 16 years. The previous name came from team owners Richard and David Jacobs, who had acquired naming rights when the facility opened. The ballpark is still often referred to as "The Jake", based on its original name.'
WHERE id = 7

UPDATE locations 
SET description = 'Quicken Loans Arena, also known as "The Q", is a multi-purpose arena in downtown Cleveland, Ohio, United States. The building is the home of the Cleveland Cavaliers of the National Basketball Association (NBA), the Cleveland Monsters of the American Hockey League, and the Cleveland Gladiators of the Arena Football League. It also serves as a secondary arena for Cleveland State Vikings men''s and women''s basketball. The arena opened in October 1994 as part of the Gateway Sports and Entertainment Complex with adjacent Progressive Field, which opened in April of that year. It is named for the retail mortgage lender Quicken Loans, whose chairman and founder is Dan Gilbert, the majority owner of the Cavaliers, Monsters, and Gladiators. From its opening until August 2005, it was known as Gund Arena, named for former Cavaliers owner Gordon Gund, after he paid for the naming rights. The Q replaced the Richfield Coliseum as the primary entertainment facility for the region and the home of the Cavaliers, and supplanted the Wolstein Center at Cleveland State University, which opened in 1990, as the primary concert and athletic venue in downtown Cleveland.'
WHERE id = 8

UPDATE locations 
SET description = 'Cedar Point is a 364-acre amusement park located on a Lake Erie peninsula in Sandusky, Ohio. Opened in 1870, it is the second-oldest operating amusement park in the United States behind Lake Compounce. Cedar Point is owned and operated by Cedar Fair and is considered the flagship of the amusement park chain. Known as "America''s Roller Coast", the park features a world-record 71 rides, including 17 roller coasters – the second-most in the world behind Six Flags Magic Mountain. Its newest roller coaster, Steel Vengeance, opened to the public on May 5, 2018. Cedar Point''s normal operating season runs from early May until Labor Day in September. The park then reopens only on weekends until the end of October or early November for a Halloween-themed event known as HalloWeekends. Other attractions near the park include a one-mile-long (1.6 km) white-sand beach, an outdoor water park called Cedar Point Shores, an indoor water park called Castaway Bay, two marinas, an outdoor sports complex called Cedar Point Sports Center, and several nearby resorts.'
WHERE id = 9

UPDATE locations 
SET description = 'The Pro Football Hall of Fame is the hall of fame for professional American football, located in Canton, Ohio. Opened in 1963, the Hall of Fame enshrines exceptional figures in the sport of professional football, including players, coaches, franchise owners, and front-office personnel, almost all of whom made their primary contributions to the game in the National Football League (NFL); the Hall inducts between four and eight new enshrinees each year. The Hall of Fame''s Mission is to "Honor the Heroes of the Game, Preserve its History, Promote its Values & Celebrate Excellence EVERYWHERE."'
WHERE id = 10

UPDATE locations 
SET description = 'The Cleveland Metroparks Zoo is a 183-acre zoo in Cleveland, Ohio. The Zoo is divided into several areas: Australian Adventure; African Savanna; Northern Wilderness Trek, The Primate, Cat & Aquatics Building, Waterfowl Lake, The RainForest, and the newly added Asian Highlands. Cleveland Metroparks Zoo has one of the largest collections of primates in North America, and features Monkey Island, a concrete island on which a large population of colobus monkeys are kept in free-range conditions (without cages or walls). The Zoo is a part of the Cleveland Metroparks system.'
WHERE id = 11

UPDATE locations 
SET description = 'Gaming, Entertainment, Great Food, Legendary Rock and Roll Memorabilia and Vibe—that''s what''s waiting for you at the very first Hard Rock Rocksino Northfield Park. In the early 1950s, Cleveland disc jockey Alan Freed coined the phrase “Rock and Roll” by naming his radio program the Moondog Rock and Roll Radio Hour. Hard Rock is proud to align our world-famous brand with the birthplace of Rock ''n'' Roll and bring to northeast Ohio the thrilling gaming action, exhilarating entertainment and tantalizing culinary options that can only be delivered by the Hard Rock. Its rock spirit and limitless energy makes for a perfect pairing with Northfield Park''s world-famous racetrack. When you walk into the 200,000-square-foot Rocksino, you''ll embrace the history of arena rock with our priceless collection of arena rock memorabilia throughout the entire property. Don’t miss Eddie Van Halen''s unforgettable red-hot motorcycle in the heart of the Rocksino at our fabulous Center Bar. Prepare to be wowed with winning moments, flavorful adventures, memorable nights and unforgettable encores.'
WHERE id = 12

UPDATE locations 
SET description = 'Playhouse Square is a theater district in downtown Cleveland, Ohio, USA. It is the largest performing arts center in the United States outside of New York. (Only Lincoln Center in New York City is larger.) Constructed in a span of 19 months in the early 1920s, the theaters were subsequently closed down, but were revived through a grassroots effort. Their renovation and reopening helped usher in a new era of downtown revitalization in Cleveland, and was called "one of the top ten successes in Cleveland history."'
WHERE id = 13

UPDATE locations 
SET description = 'Cuyahoga Valley National Park is an American national park that preserves and reclaims the rural landscape along the Cuyahoga River between Akron and Cleveland in Northeast Ohio. Cuyahoga Valley is unusual among American national parks being adjacent to two large urban areas and including a dense road network, small towns, and private attractions. The 32,572-acre (50.9 sq mi; 131.8 km2) park is administered by the National Park Service, but within its boundaries are areas independently managed as city parks or private businesses. Cuyahoga Valley was originally designated as a National Recreation Area in 1974, then redesignated as a national park 26 years later in 2000, and remains the only national park that originated as a national recreation area. Cuyahoga Valley is the only national park in the state of Ohio, one of seven Midwestern national parks, and one of two in the Great Lakes Basin, with Isle Royale National Park in Lake Superior.'
WHERE id = 14

UPDATE locations 
SET description = 'With origins of the land dating back to 1840 the West Side Market is Cleveland’s oldest publicly owned market. Beginning as an open air marketplace on a tract of land donated by two Ohio City landowners, Josiah Barber and Richard Lord, at the corner of West 25th (Pearl) and Lorain it has undergone much growth and many improvements to arrive at its current form. The centerpiece of the market, the yellow brick markethouse with an interior concourse, was designed by the architects Benjamin Hubbel and W. Dominick Benes who also designed other famous buildings in Cleveland, such the Cleveland Museum of Art and the Wade Memorial Chapel in Lakeview Cemetery. The markethouse was dedicated and opened to the public in 1912. Its 137 foot clock tower has stood as a Cleveland landmark for over a century. The last major renovation of the West Side Market took place in 2004 when the arcade portion of the market was enclosed and heated and major interior and architectural renovations were completed in the main building. Today the market is home to over 100 vendors of great ethnic diversity. You can find not only fine meats and fresh vegetables, but also fresh seafood, baked goods, dairy and cheese products, and even fresh flowers. There are also booths that sell ready-to-eat foods, herbs, candy and nuts. Tourists from all over the world tour the market every year drawn by television programs produced by the Travel Channel and Food Network featuring segments on the West Side Market. Last year it is estimated that over a million people visited the market. Whether as a day-tour destination or a weekly shopping experience, the West Side Market continues to be an interesting and historical Cleveland tradition.'
WHERE id = 15

UPDATE locations 
SET description = 'Regarded by many music-lovers as one of the world''s most beautiful concert halls, Severance Hall opened in 1931 as the home of The Cleveland Orchestra. Designed by the Cleveland architectural firm Walker & Weeks, the building is named for John L. Severance and his wife, Elisabeth, who initially pledged $1 million for its construction. Elisabeth died unexpectedly early in the design process, and John Severance made additional contributions toward the building in her memory. The building’s architectural significance has been recognized by local and national preservation societies, including the Cleveland Landmarks Commission and the National Register of Historic Places, and Severance Hall is a recipient of the Honor Award by the National Trust for Historic Preservation. Severance Hall serves as the home of The Cleveland Orchestra for concerts, rehearsals, and administration. The building is also rented by a variety of local organizations and private citizens for performances, meetings, and gala events.'
WHERE id = 16

UPDATE locations 
SET description = 'The Cleveland Botanical Garden, located in the University Circle neighborhood of Cleveland, Ohio, in the United States, was founded in 1930 as the Garden Center of Greater Cleveland. It was the first such organization in an American city. Originally housed in a converted boathouse on Wade Park Lagoon, the center served as a horticultural library, offering classes and workshops for gardeners and spearheading beautification projects in the community. In 1966, having outgrown its original home, the Garden Center moved to its present location in University Circle, the site of the old Cleveland Zoo. Remnants of the old bear pit still remain in the Ohio Woodland Garden.'
WHERE id = 17

UPDATE locations 
SET description = 'Stan Hywet is Akron’s first and largest National Historic Landmark, and is also the nation’s 6th largest historic home open to the public. It is an accredited museum of the American Alliance of Museums, one of 157 in Ohio and one of only 1,056 in the United States. The Estate includes five historic buildings and ten historic gardens on 70 acres. The collections and furnishings in the Manor House are all original to the Estate.'
WHERE id = 18

UPDATE locations
SET image_path = 'TechElevator.png'
WHERE id = 1

UPDATE locations
SET image_path = 'RockAndRoll.jpg'
WHERE id = 2

UPDATE locations
SET image_path = 'MuseumOfArt.jpg'
WHERE id = 3

UPDATE locations
SET image_path = 'NaturalHistory.jpg'
WHERE id = 4

UPDATE locations
SET image_path = 'ScienceCenter.jpg'
WHERE id = 5

UPDATE locations
SET image_path = 'BrownsStadium.jpg'
WHERE id = 6

UPDATE locations
SET image_path = 'progressive.jpg'
WHERE id = 7

UPDATE locations
SET image_path = 'Cavs.jpg'
WHERE id = 8

UPDATE locations
SET image_path = 'CedarPoint.jpg'
WHERE id = 9

UPDATE locations
SET image_path = 'HallOfFame.jpg'
WHERE id = 10

UPDATE locations
SET image_path = 'Zoo.jpg'
WHERE id = 11

UPDATE locations
SET image_path = 'Rocksino.jpg'
WHERE id = 12

UPDATE locations
SET image_path = 'PlayhouseSquare.jpg'
WHERE id = 13

UPDATE locations
SET image_path = 'CVNP.jpg'
WHERE id = 14

UPDATE locations
SET image_path = 'westsidemarket.jpg'
WHERE id = 15

UPDATE locations
SET image_path = 'SeveranceHall.jpg'
WHERE id = 16

UPDATE locations
SET image_path = 'BotanicalGarden.jpg'
WHERE id = 17

UPDATE locations
SET image_path = 'StanHywet.JPG'
WHERE id = 18

COMMIT TRANSACTION;

SELECT * FROM locations

SELECT name, latitude, longitude FROM locations

ALTER TABLE locations
ADD image_path varchar(50)