CREATE TABLE IF NOT EXISTS characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    race VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO characters (name, race, location) VALUES
('Link','Hylian','AllHyrule'),
('Zelda','Hylian','Hyrule Castle / The Sages Chamber'),
('Sheik','Sheika','All Hyrule'),
('Ganondorf','Gerudo','Gerudo Valley / Hyrule Castle'),
('Ganon','Beast/The Demon King','Gerudo Valley / Hyrule Castle'),

('Mido','Kokiri','Kokiri Forest'),
('Deku Tree','Tree','Kokiri Forest'),

('Epona','Horse','Lon Lon Ranch / All Hyrule'),
('Malon','Hylian','Lon Lon Ranch'),
('Talon','Hylian','Lon Lon Ranch'),
('Ingo','Hylian (dumbass)','Lon Lon Ranch'),

('Impa','Sheik','Hyrule Castle / Kakariko Village / The Sages Chamber'),
('Saria','Kokiri','Kokiri Forest / The Sages Chamber'),
('Darunia','Goron','The Dead Montain / The Sages Chamber'),
('Ruto','Zora','Jabu Jabu Belly / Zora`s Domain / The Sages Chamber'),
('Nabooru','Gerudo','Gerudo Valley / The Sages Chamber'),
('Kaepora Gaebora / Rauru','Owl / Sage','Hyrule / The Sages Chamber');

CREATE TABLE IF NOT EXISTS objects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    damage INT,
    age VARCHAR(100),
    location VARCHAR(100),
    condition VARCHAR(100)
);

INSERT INTO objects (name, damage, age, location, condition) VALUES
('Kokiri Sword',1,'Child','Kokiri Forest','Training Field'),
('Deku Shield',NULL,'Child','Kokiri Forest','Shop'),
('Deku Stick',2,'Child','Kokiri Forest','Before Deku Tree visit'),
('Deku Nut',NULL,'Child / Adult','Kokiri Forest','Before Deku Tree visit'),
('Fairy Slingshot',1,'Child','Kokiri Forest','Inside Deku Tree'),
('Fairy Ocarina',NULL,'Child / Adult','Kokiri Forest','Leaving Kokiris and Saria'),
('Goron Bracelet',NULL,'Child','Goron City','Darunia´s gift'),
('Bomb Bag',2,'Child / Adult','Dodongo Cave','After talking Darunia'),
('Boomerang',1,'Child','Zora´s Domain','Jabu Jabu Belly'),
('Ocarina Of Time',NULL,'Child / Adult','Hyrule Field','Throwed by Zelda to the Castle Pit'),
('Master Sword',1,'Child / Adult','Temple of Time','Ganondorf betrays Hyrule King'),
('Hookshoot',2,'Adult','Kakariko Graveyard','Race against Dampe'),
('Arrow',2,'Adult','Forest Temple',NULL),
('Megaton Hammer',2,'Adult','Fire Temple', NULL),
('Longshot',2,'Adult','Water Temple', NULL),
('Truth Lens',NULL,'Child / Adult','Kakariko Village','Kakariko Well'),
('Bombuchus',2,'Child / Adult','Market','Bullseye Shop'),
('Magic Beans',NULL,'Child','Zora River','Bean Seller'),
('Giants Knife',4,'Adult','Goron City','Medigoron'),
('Giants Knife (broken)',1,'Adult','Goron City','Medigoron'),
('Biggoron Sword',4,'Adult','Goron City','Medigoron'),
('Fire Arrow',4,'Adult','Lake Hylia','Shooting an arroy in the sunrise'),
('Ice Arrow',4,'Adult','Gerudo Fortress','Gerundo Training Ground'),
('Light Arrow',2,'Adult','Temple Of Time','After sages have been awakened');


-- CREATE TABLE IF NOT EXISTS bosses (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     location VARCHAR(100)
-- );

-- CREATE TABLE IF NOT EXISTS location (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     characters VARCHAR(100)
-- );

-- CREATE TABLE IF NOT EXISTS temples (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     location VARCHAR(100),
--     sage VARCHAR(100)
-- );
