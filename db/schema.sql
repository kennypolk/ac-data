create table Hemisphere (
    HemisphereId int primary key, 
    Value varchar(30)
);

insert into Hemisphere (HemisphereId, Value) values 
    (1, 'Northern'), 
    (2, 'Southern');

create table CalendarMonth (
    CalendarMonthId int primary key,
    Value varchar(30) 
);

insert into CalendarMonth (CalendarMonthId, Value) values 
    (1, 'January'),
    (2, 'February'),
    (3, 'March'),
    (4, 'April'),
    (5, 'May'),
    (6, 'June'),
    (7, 'July'),
    (8, 'August'),
    (9, 'September'),
    (10, 'October'),
    (11, 'November'),
    (12, 'December');


create table MapLocation (
    LocationId int primary key,
    Value varchar (30)
);

insert into MapLocation (LocationId, Value) values 
    (1, 'Ocean'),
    (2, 'Pond'),
    (3, 'River'),
    (4, 'River (Clifftop)'),
    (5, 'River (Mouth)'),
    (6, 'Pier'),
    (7, 'Ocean (Raining)'),

-- create table Weather (
--     WeatherId int primary key,
--     Value varchar(30)
-- );

-- insert into Weather (WeatherId, Value) values 
--     (1, 'Rain');

create table TimeOfDay (
    TimeOfDayId int primary key,
    Value varchar(30),
    StartHour int,
    EndHour int
);

insert into TimeOfDay (TimeOfDayId, Value, StartHour, EndHour) values
    (1, '4AM - 9PM', 4, 19),
    (2, '9AM - 4PM', 9, 14),
    (3, '4PM - 9AM', 14, 9),
    (4, '6PM - 4AM', 16, 4),
    (5, '9PM - 4AM', 19, 4),
    (6, 'All Day', null, null);

create table Shadow (
    ShadowId int primary key,
    Value varchar(30)
);

insert into Shadow(ShadowId, Value) values 
    (1, 'Tiny'),
    (2, 'Small'),
    (3, 'Medium'),
    (4, 'Large'),
    (5, 'Very Large'),
    (6, 'Huge'),
    (7, 'Huge (Fin)'),
    (8, 'Long & Thin');

CREATE TABLE Fish (
    FishId int primary key,
    Name varchar(30),
    Price int,
    ShadowId int,
    LocationId int
);

insert into Fish (FishId, Name, Price, ShadowId, LocationId) values
    (1, 'Anchovy', 200, 2, 1),
    (2, 'Angelfish', 3000, 2, 3),
    (3, 'Arapaima', 10000, 6, 3),
    (4, 'Arowana', 10000, 4, 3),
    (5, 'Barred Knifejaw', 5000, 3, 1),
    (6, 'Barreleye', 15000, 2, 1),
    (7, 'Betta', 2500, 2, 3),
    (8, 'Bitterling', 900, 1, 3),
    (9, 'Black Bass', 400, 4, 3),
    (10, 'Blowfish', 5000, 3, 1),
    (11, 'Blue Marlin', 10000, 6, 6),
    (12, 'Bluegill', 180, 2, 3),
    (13, 'Butterfly fish', 1000, 2, 1),
    (14, 'Carp', 300, 4, 2),
    (15, 'Catfish', 800, 4, 2),
    (16, 'Char', 3800, 3, 4),
    (17, 'Cherry Salmon', 1000, 3, 4),
    (18, 'Clown fish', 650, 1, 1),
    (19, 'Coelacanth', 15000, 6, 7),
    (20, 'Crawfish', 200, 2, 2),
    (21, 'Crucian Carp', 160, 2, 3),
    (22, 'Dab', 300, 3, 1),
    (23, 'Dace', 240, 3, 3),
    (24, 'Dorado', 15000, 5, 3),
    (25, 'Football Fish', 2500, 4, 1),
    (26, 'Freshwater Goby', 400, 2, 3),
    (27, 'Frog', 120, 2, 2),
    (28, 'Gar', 6000, 6, 2),
    (29, 'Giant snakehead', 5500, 5, 2),
    (30, 'Giant trevally', 4500, 5, 6),
    (31, 'Golden Trout', 15000, 3, 4),
    (32, 'Goldfish', 1300, 1, 2),
    (33, 'Great White Shark', 15000, 7, 1),
    (34, 'Guppy', 1300, 1, 3),
    (35, 'Hammerhead Shark', 8000, 7, 1),
    (36, 'Horse Mackerel', 150, 2, 1),
    (37, 'Killifish', 300, 1, 2),
    (38, 'King Salmon', 1800, 6, 5),
    (39, 'Koi', 4000, 4, 2),
    (40, 'Loach', 400, 2, 3),
    (41, 'Mahi-mahi', 6000, 5, 6),
    (42, 'Mitten Crab', 2000, 2, 3),
    (43, 'Moray Eel', 2000, 8, 1),
    (44, 'Napoleonfish', 10000, 6, 1),
    (45, 'Neon Tetra', 500, 1, 3),
    (46, 'Nibble fish', 1500, 2, 3),
    (47, 'Oarfish', 9000, 6, 1),
    (48, 'Ocean Sunfish', 4000, 7, 1),
    (49, 'Olive Flounder', 800, 5, 1),
    (50, 'Pale Chub', 200, 1, 3),
    (51, 'Pike', 1800, 5, 3),
    (52, 'Piranha', 2500, 2, 3),
    (53, 'Pond Smelt', 500, 2, 3),
    (54, 'Pop-eyed Goldfish', 1300, 1, 2),
    (55, 'Puffer Fish', 250, 3, 1),
    (56, 'Rainbowfish', 800, 1, 2),
    (57, 'Ranchu Goldfish', 4500, 2, 2),
    (58, 'Ray', 3000, 5, 1),
    (59, 'Red Snapper', 3000, 4, 1),
    (60, 'Ribbon Eel', 600, 8, 1),
    (61, 'Saddled bichir', 4000, 4, 3),
    (62, 'Salmon', 700, 4, 5),
    (63, 'Saw Shark', 12000, 7, 1),
    (64, 'Sea Bass', 400, 5, 1),
    (65, 'Sea Butterfly', 1000, 1, 1),
    (66, 'Sea horse', 1100, 1, 1),
    (67, 'Snapping turtle', 5000, 5, 3),
    (68, 'Soft-shelled Turtle', 3750, 4, 3),
    (69, 'Squid', 500, 3, 1),
    (70, 'Stringfish', 15000, 5, 4),
    (71, 'Sturgeon', 10000, 6, 5),
    (72, 'Suckerfish', 1500, 7, 1),
    (73, 'Surgeonfish', 1000, 2, 1),
    (74, 'Sweetfish', 900, 3, 3),
    (75, 'Tadpole', 100, 1, 2),
    (76, 'Tilapia', 800, 3, 3),
    (77, 'Tuna', 7000, 6, 6),
    (78, 'Whale Shark', 13000, 7, 1),
    (79, 'Yellow Perch', 300, 3, 2),
    (80, 'Zebra Turkeyfish', 500, 3, 1);

create table FishTiming (
    FishId int,
    TimeOfDayId int,
    primary key (FishId, TimeOfDayId)
);

insert into FishTiming (FishId, TimeOfDayId) values 
    (1, 1),
    (2, 3),
    (3, 3),
    (4, 3),
    (5, 6),
    (6, 5),
    (7, 2),
    (8, 6),
    (9, 6),
    (10, 4),
    (11, 6),
    (12, 2),
    (13, 6),
    (14, 6),
    (15, 3),
    (16, 3),
    (17, 3),
    (18, 6),
    (19, 6),
    (20, 6),
    (21, 6),
    (22, 6),
    (23, 3),
    (24, 1),
    (25, 3),
    (26, 3),
    (27, 6),
    (28, 3),
    (29, 2),
    (30, 6),
    (31, 3),
    (32, 6),
    (33, 3),
    (34, 2),
    (35, 3),
    (36, 6),
    (37, 6),
    (38, 6),
    (39, 3),
    (40, 6),
    (41, 6),
    (42, 3),
    (43, 6),
    (44, 1),
    (45, 2),
    (46, 2),
    (47, 6),
    (48, 1),
    (49, 6),
    (50, 2),
    (51, 6),
    (52, 2),
    (52, 5),
    (53, 6),
    (54, 2),
    (55, 6),
    (56, 2),
    (57, 2),
    (58, 1),
    (59, 6),
    (60, 6),
    (61, 5),
    (62, 6),
    (63, 3),
    (64, 6),
    (65, 6),
    (66, 6),
    (67, 5),
    (68, 5),
    (69, 6),
    (70, 3),
    (71, 6),
    (72, 6),
    (73, 6),
    (74, 6),
    (75, 6),
    (76, 6),
    (77, 6),
    (78, 6),
    (79, 6),
    (80, 6);

-- create table FishWeather (
--     FishId int, 
--     WeatherId int,
--     primary key(FishId, WeatherId)
-- );

-- insert into FishWeather (FishId, WeatherId) 
--     values (19, 1);

create table FishSeasonality (
    FishId int,
    HemisphereId int,
    MonthId int
);

insert into FishSeasonality (FishId, HemisphereId, MonthId) values
    (1, 1, 1),
    (1, 1, 2),
    (1, 1, 3),
    (1, 1, 4),
    (1, 1, 5),
    (1, 1, 6),
    (1, 1, 7),
    (1, 1, 8),
    (1, 1, 9),
    (1, 1, 10),
    (1, 1, 11),
    (1, 1, 12),
    (1, 2, 1),
    (1, 2, 2),
    (1, 2, 3),
    (1, 2, 4),
    (1, 2, 5),
    (1, 2, 6),
    (1, 2, 7),
    (1, 2, 8),
    (1, 2, 9),
    (1, 2, 10),
    (1, 2, 11),
    (1, 2, 12),
    (2, 1, 5),
    (2, 1, 6),
    (2, 1, 7),
    (2, 1, 8),
    (2, 1, 9),
    (2, 1, 10),
    (2, 2, 1),
    (2, 2, 2),
    (2, 2, 3),
    (2, 2, 4),
    (2, 2, 11),
    (2, 2, 12),
    (3, 1, 6),
    (3, 1, 7),
    (3, 1, 8),
    (3, 1, 9),
    (3, 2, 1),
    (3, 2, 2),
    (3, 2, 3),
    (3, 2, 12),
    (4, 1, 6),
    (4, 1, 7),
    (4, 1, 8),
    (4, 1, 9),
    (4, 2, 1),
    (4, 2, 2),
    (4, 2, 3),
    (4, 2, 12),
    (5, 1, 3),
    (5, 1, 4),
    (5, 1, 5),
    (5, 1, 6),
    (5, 1, 7),
    (5, 1, 8),
    (5, 1, 9),
    (5, 1, 10),
    (5, 1, 11),
    (5, 2, 1),
    (5, 2, 2),
    (5, 2, 3),
    (5, 2, 4),
    (5, 2, 5),
    (5, 2, 9),
    (5, 2, 10),
    (5, 2, 11),
    (5, 2, 12),
    (6, 1, 1),
    (6, 1, 2),
    (6, 1, 3),
    (6, 1, 4),
    (6, 1, 5),
    (6, 1, 6),
    (6, 1, 7),
    (6, 1, 8),
    (6, 1, 9),
    (6, 1, 10),
    (6, 1, 11),
    (6, 1, 12),
    (6, 2, 1),
    (6, 2, 2),
    (6, 2, 3),
    (6, 2, 4),
    (6, 2, 5),
    (6, 2, 6),
    (6, 2, 7),
    (6, 2, 8),
    (6, 2, 9),
    (6, 2, 10),
    (6, 2, 11),
    (6, 2, 12),
    (7, 1, 5),
    (7, 1, 6),
    (7, 1, 7),
    (7, 1, 8),
    (7, 1, 9),
    (7, 1, 10),
    (7, 2, 1),
    (7, 2, 2),
    (7, 2, 3),
    (7, 2, 4),
    (7, 2, 11),
    (7, 2, 12),
    (8, 1, 1),
    (8, 1, 2),
    (8, 1, 3),
    (8, 1, 11),
    (8, 1, 12),
    (8, 2, 5),
    (8, 2, 6),
    (8, 2, 7),
    (8, 2, 8),
    (8, 2, 9),
    (9, 1, 1),
    (9, 1, 2),
    (9, 1, 3),
    (9, 1, 4),
    (9, 1, 5),
    (9, 1, 6),
    (9, 1, 7),
    (9, 1, 8),
    (9, 1, 9),
    (9, 1, 10),
    (9, 1, 11),
    (9, 1, 12),
    (9, 2, 1),
    (9, 2, 2),
    (9, 2, 3),
    (9, 2, 4),
    (9, 2, 5),
    (9, 2, 6),
    (9, 2, 7),
    (9, 2, 8),
    (9, 2, 9),
    (9, 2, 10),
    (9, 2, 11),
    (9, 2, 12),
    (10, 1, 1),
    (10, 1, 2),
    (10, 1, 11),
    (10, 1, 12),
    (10, 2, 5),
    (10, 2, 6),
    (10, 2, 7),
    (10, 2, 8),
    (11, 1, 1),
    (11, 1, 2),
    (11, 1, 3),
    (11, 1, 4),
    (11, 1, 7),
    (11, 1, 8),
    (11, 1, 9),
    (11, 1, 11),
    (11, 1, 12),
    (11, 2, 1),
    (11, 2, 2),
    (11, 2, 3),
    (11, 2, 5),
    (11, 2, 6),
    (11, 2, 7),
    (11, 2, 8),
    (11, 2, 9),
    (11, 2, 10),
    (12, 1, 1),
    (12, 1, 2),
    (12, 1, 3),
    (12, 1, 4),
    (12, 1, 5),
    (12, 1, 6),
    (12, 1, 7),
    (12, 1, 8),
    (12, 1, 9),
    (12, 1, 10),
    (12, 1, 11),
    (12, 1, 12),
    (12, 2, 1),
    (12, 2, 2),
    (12, 2, 3),
    (12, 2, 4),
    (12, 2, 5),
    (12, 2, 6),
    (12, 2, 7),
    (12, 2, 8),
    (12, 2, 9),
    (12, 2, 10),
    (12, 2, 11),
    (12, 2, 12),
    (13, 1, 4),
    (13, 1, 5),
    (13, 1, 6),
    (13, 1, 7),
    (13, 1, 8),
    (13, 1, 9),
    (13, 2, 1),
    (13, 2, 2),
    (13, 2, 3),
    (13, 2, 10),
    (13, 2, 11),
    (13, 2, 12),
    (14, 1, 1),
    (14, 1, 2),
    (14, 1, 3),
    (14, 1, 4),
    (14, 1, 5),
    (14, 1, 6),
    (14, 1, 7),
    (14, 1, 8),
    (14, 1, 9),
    (14, 1, 10),
    (14, 1, 11),
    (14, 1, 12),
    (14, 2, 1),
    (14, 2, 2),
    (14, 2, 3),
    (14, 2, 4),
    (14, 2, 5),
    (14, 2, 6),
    (14, 2, 7),
    (14, 2, 8),
    (14, 2, 9),
    (14, 2, 10),
    (14, 2, 11),
    (14, 2, 12),
    (15, 1, 5),
    (15, 1, 6),
    (15, 1, 7),
    (15, 1, 8),
    (15, 1, 9),
    (15, 1, 10),
    (15, 2, 1),
    (15, 2, 2),
    (15, 2, 3),
    (15, 2, 4),
    (15, 2, 11),
    (15, 2, 12),
    (16, 1, 3),
    (16, 1, 4),
    (16, 1, 5),
    (16, 1, 6),
    (16, 1, 9),
    (16, 1, 10),
    (16, 1, 11),
    (16, 2, 3),
    (16, 2, 4),
    (16, 2, 5),
    (16, 2, 9),
    (16, 2, 10),
    (16, 2, 11),
    (16, 2, 12),
    (17, 1, 3),
    (17, 1, 4),
    (17, 1, 5),
    (17, 1, 6),
    (17, 1, 9),
    (17, 1, 10),
    (17, 1, 11),
    (17, 2, 3),
    (17, 2, 4),
    (17, 2, 5),
    (17, 2, 9),
    (17, 2, 10),
    (17, 2, 11),
    (17, 2, 12),
    (18, 1, 4),
    (18, 1, 5),
    (18, 1, 6),
    (18, 1, 7),
    (18, 1, 8),
    (18, 1, 9),
    (18, 2, 1),
    (18, 2, 2),
    (18, 2, 3),
    (18, 2, 10),
    (18, 2, 11),
    (18, 2, 12),
    (19, 1, 1),
    (19, 1, 2),
    (19, 1, 3),
    (19, 1, 4),
    (19, 1, 5),
    (19, 1, 6),
    (19, 1, 7),
    (19, 1, 8),
    (19, 1, 9),
    (19, 1, 10),
    (19, 1, 11),
    (19, 1, 12),
    (19, 2, 1),
    (19, 2, 2),
    (19, 2, 3),
    (19, 2, 4),
    (19, 2, 5),
    (19, 2, 6),
    (19, 2, 7),
    (19, 2, 8),
    (19, 2, 9),
    (19, 2, 10),
    (19, 2, 11),
    (19, 2, 12),
    (20, 1, 4),
    (20, 1, 5),
    (20, 1, 6),
    (20, 1, 7),
    (20, 1, 8),
    (20, 1, 9),
    (20, 2, 1),
    (20, 2, 2),
    (20, 2, 3),
    (20, 2, 10),
    (20, 2, 11),
    (20, 2, 12),
    (21, 1, 1),
    (21, 1, 2),
    (21, 1, 3),
    (21, 1, 4),
    (21, 1, 5),
    (21, 1, 6),
    (21, 1, 7),
    (21, 1, 8),
    (21, 1, 9),
    (21, 1, 10),
    (21, 1, 11),
    (21, 1, 12),
    (21, 2, 1),
    (21, 2, 2),
    (21, 2, 3),
    (21, 2, 4),
    (21, 2, 5),
    (21, 2, 6),
    (21, 2, 7),
    (21, 2, 8),
    (21, 2, 9),
    (21, 2, 10),
    (21, 2, 11),
    (21, 2, 12),
    (22, 1, 1),
    (22, 1, 2),
    (22, 1, 3),
    (22, 1, 4),
    (22, 1, 10),
    (22, 1, 11),
    (22, 1, 12),
    (22, 2, 4),
    (22, 2, 5),
    (22, 2, 6),
    (22, 2, 7),
    (22, 2, 8),
    (22, 2, 9),
    (22, 2, 10),
    (23, 1, 1),
    (23, 1, 2),
    (23, 1, 3),
    (23, 1, 4),
    (23, 1, 5),
    (23, 1, 6),
    (23, 1, 7),
    (23, 1, 8),
    (23, 1, 9),
    (23, 1, 10),
    (23, 1, 11),
    (23, 1, 12),
    (23, 2, 1),
    (23, 2, 2),
    (23, 2, 3),
    (23, 2, 4),
    (23, 2, 5),
    (23, 2, 6),
    (23, 2, 7),
    (23, 2, 8),
    (23, 2, 9),
    (23, 2, 10),
    (23, 2, 11),
    (23, 2, 12),
    (24, 1, 6),
    (24, 1, 7),
    (24, 1, 8),
    (24, 1, 9),
    (24, 2, 1),
    (24, 2, 2),
    (24, 2, 3),
    (24, 2, 12),
    (25, 1, 1),
    (25, 1, 2),
    (25, 1, 3),
    (25, 1, 11),
    (25, 1, 12),
    (25, 2, 5),
    (25, 2, 6),
    (25, 2, 7),
    (25, 2, 8),
    (25, 2, 9),
    (26, 1, 1),
    (26, 1, 2),
    (26, 1, 3),
    (26, 1, 4),
    (26, 1, 5),
    (26, 1, 6),
    (26, 1, 7),
    (26, 1, 8),
    (26, 1, 9),
    (26, 1, 10),
    (26, 1, 11),
    (26, 1, 12),
    (26, 2, 1),
    (26, 2, 2),
    (26, 2, 3),
    (26, 2, 4),
    (26, 2, 5),
    (26, 2, 6),
    (26, 2, 7),
    (26, 2, 8),
    (26, 2, 9),
    (26, 2, 10),
    (26, 2, 11),
    (26, 2, 12),
    (27, 1, 5),
    (27, 1, 6),
    (27, 1, 7),
    (27, 1, 8),
    (27, 2, 1),
    (27, 2, 2),
    (27, 2, 11),
    (27, 2, 12),
    (28, 1, 6),
    (28, 1, 7),
    (28, 1, 8),
    (28, 1, 9),
    (28, 2, 1),
    (28, 2, 2),
    (28, 2, 3),
    (28, 2, 12),
    (29, 1, 6),
    (29, 1, 7),
    (29, 1, 8),
    (29, 2, 1),
    (29, 2, 2),
    (29, 2, 12),
    (30, 1, 5),
    (30, 1, 6),
    (30, 1, 7),
    (30, 1, 8),
    (30, 1, 9),
    (30, 1, 10),
    (30, 2, 1),
    (30, 2, 2),
    (30, 2, 3),
    (30, 2, 4),
    (30, 2, 11),
    (30, 2, 12),
    (31, 1, 3),
    (31, 1, 4),
    (31, 1, 5),
    (31, 1, 9),
    (31, 1, 10),
    (31, 1, 11),
    (31, 2, 3),
    (31, 2, 4),
    (31, 2, 5),
    (31, 2, 9),
    (31, 2, 10),
    (31, 2, 11),
    (32, 1, 1),
    (32, 1, 2),
    (32, 1, 3),
    (32, 1, 4),
    (32, 1, 5),
    (32, 1, 6),
    (32, 1, 7),
    (32, 1, 8),
    (32, 1, 9),
    (32, 1, 10),
    (32, 1, 11),
    (32, 1, 12),
    (32, 2, 1),
    (32, 2, 2),
    (32, 2, 3),
    (32, 2, 4),
    (32, 2, 5),
    (32, 2, 6),
    (32, 2, 7),
    (32, 2, 8),
    (32, 2, 9),
    (32, 2, 10),
    (32, 2, 11),
    (32, 2, 12),
    (33, 1, 6),
    (33, 1, 7),
    (33, 1, 8),
    (33, 1, 9),
    (33, 2, 1),
    (33, 2, 2),
    (33, 2, 3),
    (33, 2, 12),
    (34, 1, 4),
    (34, 1, 5),
    (34, 1, 6),
    (34, 1, 7),
    (34, 1, 8),
    (34, 1, 9),
    (34, 1, 10),
    (34, 1, 11),
    (34, 2, 1),
    (34, 2, 2),
    (34, 2, 3),
    (34, 2, 4),
    (34, 2, 5),
    (34, 2, 10),
    (34, 2, 11),
    (34, 2, 12),
    (35, 1, 6),
    (35, 1, 7),
    (35, 1, 8),
    (35, 1, 9),
    (35, 2, 1),
    (35, 2, 2),
    (35, 2, 3),
    (35, 2, 12),
    (36, 1, 1),
    (36, 1, 2),
    (36, 1, 3),
    (36, 1, 4),
    (36, 1, 5),
    (36, 1, 6),
    (36, 1, 7),
    (36, 1, 8),
    (36, 1, 9),
    (36, 1, 10),
    (36, 1, 11),
    (36, 1, 12),
    (36, 2, 1),
    (36, 2, 2),
    (36, 2, 3),
    (36, 2, 4),
    (36, 2, 5),
    (36, 2, 6),
    (36, 2, 7),
    (36, 2, 8),
    (36, 2, 9),
    (36, 2, 10),
    (36, 2, 11),
    (36, 2, 12),
    (37, 1, 4),
    (37, 1, 5),
    (37, 1, 6),
    (37, 1, 7),
    (37, 1, 8),
    (37, 2, 1),
    (37, 2, 2),
    (37, 2, 10),
    (37, 2, 11),
    (37, 2, 12),
    (38, 1, 9),
    (38, 2, 3),
    (39, 1, 1),
    (39, 1, 2),
    (39, 1, 3),
    (39, 1, 4),
    (39, 1, 5),
    (39, 1, 6),
    (39, 1, 7),
    (39, 1, 8),
    (39, 1, 9),
    (39, 1, 10),
    (39, 1, 11),
    (39, 1, 12),
    (39, 2, 1),
    (39, 2, 2),
    (39, 2, 3),
    (39, 2, 4),
    (39, 2, 5),
    (39, 2, 6),
    (39, 2, 7),
    (39, 2, 8),
    (39, 2, 9),
    (39, 2, 10),
    (39, 2, 11),
    (39, 2, 12),
    (40, 1, 3),
    (40, 1, 4),
    (40, 1, 5),
    (40, 2, 9),
    (40, 2, 10),
    (40, 2, 11),
    (41, 1, 5),
    (41, 1, 6),
    (41, 1, 7),
    (41, 1, 8),
    (41, 1, 9),
    (41, 1, 10),
    (41, 2, 1),
    (41, 2, 2),
    (41, 2, 3),
    (41, 2, 4),
    (41, 2, 11),
    (41, 2, 12),
    (42, 1, 9),
    (42, 1, 10),
    (42, 1, 11),
    (42, 2, 3),
    (42, 2, 4),
    (42, 2, 5),
    (43, 1, 8),
    (43, 1, 9),
    (43, 1, 10),
    (43, 2, 2),
    (43, 2, 3),
    (43, 2, 4),
    (44, 1, 7),
    (44, 1, 8),
    (44, 2, 1),
    (44, 2, 2),
    (45, 1, 4),
    (45, 1, 5),
    (45, 1, 6),
    (45, 1, 7),
    (45, 1, 8),
    (45, 1, 9),
    (45, 1, 10),
    (45, 1, 11),
    (45, 2, 1),
    (45, 2, 2),
    (45, 2, 3),
    (45, 2, 4),
    (45, 2, 5),
    (45, 2, 10),
    (45, 2, 11),
    (45, 2, 12),
    (46, 1, 5),
    (46, 1, 6),
    (46, 1, 7),
    (46, 1, 8),
    (46, 1, 9),
    (46, 2, 1),
    (46, 2, 2),
    (46, 2, 3),
    (46, 2, 11),
    (46, 2, 12),
    (47, 1, 1),
    (47, 1, 2),
    (47, 1, 3),
    (47, 1, 4),
    (47, 1, 5),
    (47, 1, 12),
    (47, 2, 6),
    (47, 2, 7),
    (47, 2, 8),
    (47, 2, 9),
    (47, 2, 10),
    (47, 2, 11),
    (48, 1, 7),
    (48, 1, 8),
    (48, 1, 9),
    (48, 2, 1),
    (48, 2, 2),
    (48, 2, 3),
    (49, 1, 1),
    (49, 1, 2),
    (49, 1, 3),
    (49, 1, 4),
    (49, 1, 5),
    (49, 1, 6),
    (49, 1, 7),
    (49, 1, 8),
    (49, 1, 9),
    (49, 1, 10),
    (49, 1, 11),
    (49, 1, 12),
    (49, 2, 1),
    (49, 2, 2),
    (49, 2, 3),
    (49, 2, 4),
    (49, 2, 5),
    (49, 2, 6),
    (49, 2, 7),
    (49, 2, 8),
    (49, 2, 9),
    (49, 2, 10),
    (49, 2, 11),
    (49, 2, 12),
    (50, 1, 1),
    (50, 1, 2),
    (50, 1, 3),
    (50, 1, 4),
    (50, 1, 5),
    (50, 1, 6),
    (50, 1, 7),
    (50, 1, 8),
    (50, 1, 9),
    (50, 1, 10),
    (50, 1, 11),
    (50, 1, 12),
    (50, 2, 1),
    (50, 2, 2),
    (50, 2, 3),
    (50, 2, 4),
    (50, 2, 5),
    (50, 2, 6),
    (50, 2, 7),
    (50, 2, 8),
    (50, 2, 9),
    (50, 2, 10),
    (50, 2, 11),
    (50, 2, 12),
    (51, 1, 9),
    (51, 1, 10),
    (51, 1, 11),
    (51, 1, 12),
    (51, 2, 3),
    (51, 2, 4),
    (51, 2, 5),
    (51, 2, 6),
    (52, 1, 6),
    (52, 1, 7),
    (52, 1, 8),
    (52, 1, 9),
    (52, 2, 1),
    (52, 2, 2),
    (52, 2, 3),
    (52, 2, 12),
    (53, 1, 1),
    (53, 1, 2),
    (53, 1, 12),
    (53, 2, 6),
    (53, 2, 7),
    (53, 2, 8),
    (54, 1, 1),
    (54, 1, 2),
    (54, 1, 3),
    (54, 1, 4),
    (54, 1, 5),
    (54, 1, 6),
    (54, 1, 7),
    (54, 1, 8),
    (54, 1, 9),
    (54, 1, 10),
    (54, 1, 11),
    (54, 1, 12),
    (54, 2, 1),
    (54, 2, 2),
    (54, 2, 3),
    (54, 2, 4),
    (54, 2, 5),
    (54, 2, 6),
    (54, 2, 7),
    (54, 2, 8),
    (54, 2, 9),
    (54, 2, 10),
    (54, 2, 11),
    (54, 2, 12),
    (55, 1, 7),
    (55, 1, 8),
    (55, 1, 9),
    (55, 2, 1),
    (55, 2, 2),
    (55, 2, 3),
    (56, 1, 5),
    (56, 1, 6),
    (56, 1, 7),
    (56, 1, 8),
    (56, 1, 9),
    (56, 1, 10),
    (56, 2, 1),
    (56, 2, 2),
    (56, 2, 3),
    (56, 2, 4),
    (56, 2, 11),
    (56, 2, 12),
    (57, 1, 1),
    (57, 1, 2),
    (57, 1, 3),
    (57, 1, 4),
    (57, 1, 5),
    (57, 1, 6),
    (57, 1, 7),
    (57, 1, 8),
    (57, 1, 9),
    (57, 1, 10),
    (57, 1, 11),
    (57, 1, 12),
    (57, 2, 1),
    (57, 2, 2),
    (57, 2, 3),
    (57, 2, 4),
    (57, 2, 5),
    (57, 2, 6),
    (57, 2, 7),
    (57, 2, 8),
    (57, 2, 9),
    (57, 2, 10),
    (57, 2, 11),
    (57, 2, 12),
    (58, 1, 8),
    (58, 1, 9),
    (58, 1, 10),
    (58, 1, 11),
    (58, 2, 2),
    (58, 2, 3),
    (58, 2, 4),
    (58, 2, 5),
    (59, 1, 1),
    (59, 1, 2),
    (59, 1, 3),
    (59, 1, 4),
    (59, 1, 5),
    (59, 1, 6),
    (59, 1, 7),
    (59, 1, 8),
    (59, 1, 9),
    (59, 1, 10),
    (59, 1, 11),
    (59, 1, 12),
    (59, 2, 1),
    (59, 2, 2),
    (59, 2, 3),
    (59, 2, 4),
    (59, 2, 5),
    (59, 2, 6),
    (59, 2, 7),
    (59, 2, 8),
    (59, 2, 9),
    (59, 2, 10),
    (59, 2, 11),
    (59, 2, 12),
    (60, 1, 6),
    (60, 1, 7),
    (60, 1, 8),
    (60, 1, 9),
    (60, 1, 10),
    (60, 2, 1),
    (60, 2, 2),
    (60, 2, 3),
    (60, 2, 4),
    (60, 2, 12),
    (61, 1, 6),
    (61, 1, 7),
    (61, 1, 8),
    (61, 1, 9),
    (61, 2, 1),
    (61, 2, 2),
    (61, 2, 3),
    (61, 2, 12),
    (62, 1, 9),
    (62, 2, 3),
    (63, 1, 6),
    (63, 1, 7),
    (63, 1, 8),
    (63, 1, 9),
    (63, 2, 1),
    (63, 2, 2),
    (63, 2, 3),
    (63, 2, 12),
    (64, 1, 1),
    (64, 1, 2),
    (64, 1, 3),
    (64, 1, 4),
    (64, 1, 5),
    (64, 1, 6),
    (64, 1, 7),
    (64, 1, 8),
    (64, 1, 9),
    (64, 1, 10),
    (64, 1, 11),
    (64, 1, 12),
    (64, 2, 1),
    (64, 2, 2),
    (64, 2, 3),
    (64, 2, 4),
    (64, 2, 5),
    (64, 2, 6),
    (64, 2, 7),
    (64, 2, 8),
    (64, 2, 9),
    (64, 2, 10),
    (64, 2, 11),
    (64, 2, 12),
    (65, 1, 1),
    (65, 1, 2),
    (65, 1, 3),
    (65, 1, 12),
    (65, 2, 6),
    (65, 2, 7),
    (65, 2, 8),
    (65, 2, 9),
    (66, 1, 4),
    (66, 1, 5),
    (66, 1, 6),
    (66, 1, 7),
    (66, 1, 8),
    (66, 1, 9),
    (66, 1, 10),
    (66, 1, 11),
    (66, 2, 1),
    (66, 2, 2),
    (66, 2, 3),
    (66, 2, 4),
    (66, 2, 5),
    (66, 2, 10),
    (66, 2, 11),
    (66, 2, 12),
    (67, 1, 4),
    (67, 1, 5),
    (67, 1, 6),
    (67, 1, 7),
    (67, 1, 8),
    (67, 1, 9),
    (67, 1, 10),
    (67, 2, 1),
    (67, 2, 2),
    (67, 2, 3),
    (67, 2, 4),
    (67, 2, 10),
    (67, 2, 11),
    (67, 2, 12),
    (68, 1, 8),
    (68, 1, 9),
    (68, 2, 2),
    (68, 2, 3),
    (69, 1, 1),
    (69, 1, 2),
    (69, 1, 3),
    (69, 1, 4),
    (69, 1, 5),
    (69, 1, 6),
    (69, 1, 7),
    (69, 1, 8),
    (69, 1, 12),
    (69, 2, 1),
    (69, 2, 2),
    (69, 2, 6),
    (69, 2, 7),
    (69, 2, 8),
    (69, 2, 9),
    (69, 2, 10),
    (69, 2, 11),
    (69, 2, 12),
    (70, 1, 1),
    (70, 1, 2),
    (70, 1, 3),
    (70, 1, 12),
    (70, 2, 6),
    (70, 2, 7),
    (70, 2, 8),
    (70, 2, 9),
    (71, 1, 1),
    (71, 1, 2),
    (71, 1, 3),
    (71, 1, 9),
    (71, 1, 10),
    (71, 1, 11),
    (71, 1, 12),
    (71, 2, 3),
    (71, 2, 4),
    (71, 2, 5),
    (71, 2, 6),
    (71, 2, 7),
    (71, 2, 8),
    (71, 2, 9),
    (72, 1, 6),
    (72, 1, 7),
    (72, 1, 8),
    (72, 1, 9),
    (72, 2, 1),
    (72, 2, 2),
    (72, 2, 3),
    (72, 2, 12),
    (73, 1, 4),
    (73, 1, 5),
    (73, 1, 6),
    (73, 1, 7),
    (73, 1, 8),
    (73, 1, 9),
    (73, 2, 1),
    (73, 2, 2),
    (73, 2, 3),
    (73, 2, 10),
    (73, 2, 11),
    (73, 2, 12),
    (74, 1, 7),
    (74, 1, 8),
    (74, 1, 9),
    (74, 2, 1),
    (74, 2, 2),
    (74, 2, 3),
    (75, 1, 3),
    (75, 1, 4),
    (75, 1, 5),
    (75, 1, 6),
    (75, 1, 7),
    (75, 2, 1),
    (75, 2, 9),
    (75, 2, 10),
    (75, 2, 11),
    (75, 2, 12),
    (76, 1, 6),
    (76, 1, 7),
    (76, 1, 8),
    (76, 1, 9),
    (76, 1, 10),
    (76, 2, 1),
    (76, 2, 2),
    (76, 2, 3),
    (76, 2, 4),
    (76, 2, 12),
    (77, 1, 1),
    (77, 1, 2),
    (77, 1, 3),
    (77, 1, 4),
    (77, 1, 11),
    (77, 1, 12),
    (77, 2, 5),
    (77, 2, 6),
    (77, 2, 7),
    (77, 2, 8),
    (77, 2, 9),
    (77, 2, 10),
    (78, 1, 6),
    (78, 1, 7),
    (78, 1, 8),
    (78, 1, 9),
    (78, 2, 1),
    (78, 2, 2),
    (78, 2, 3),
    (78, 2, 12),
    (79, 1, 1),
    (79, 1, 2),
    (79, 1, 3),
    (79, 1, 10),
    (79, 1, 11),
    (79, 1, 12),
    (79, 2, 4),
    (79, 2, 5),
    (79, 2, 6),
    (79, 2, 7),
    (79, 2, 8),
    (79, 2, 9),
    (80, 1, 4),
    (80, 1, 5),
    (80, 1, 6),
    (80, 1, 7),
    (80, 1, 8),
    (80, 1, 9),
    (80, 1, 10),
    (80, 1, 11),
    (80, 2, 1),
    (80, 2, 2),
    (80, 2, 3),
    (80, 2, 4),
    (80, 2, 5),
    (80, 2, 10),
    (80, 2, 11),
    (80, 2, 12);