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
    age INT,
    location VARCHAR(100)
);

INSERT INTO objects (name, damage, age, location) VALUES
('Kokiri Sword',1,'Child','Kokiri Forest - Training Field'),
('Deku Stick',2,'Child','Kokiri Forest'),
('Deku Nut',NULL,'Child / Adult','Kokiri Forest'),
('Bombs',2,'Child / Adult','Dodongo Cave - The Dead Mountain'),
('Fairy Slingshoot',1,'Child','Inside Deku Tree - Kokiri Forest'),
('Fairy Ocarina',NULL,'Child / Adult','Kokiri Forest - Leaving Kokiris and Saria'),
('Bombuchus',2,'Child / Adult','Market - Bullseye Shop'),
('Hookshoot',2,'Adult','Kakariko Graveyard - Race against Dampe'),
('Longshoot',2,'Adult','Water Temple'),
('Boomerang',1,'Child','Jabu Jabu Belly'),
('Master Sword',1,'Child / Adult','Temple of Time - Ganondorf betrays Hyrule King'),
('Truth Lens',NULL,'Child / Adult','Kakariko Village - Kakariko Well'),
('Magic Beans',NULL,'Child','Zora River - Bean Seller'),
('Megaton Hammer',2,'Adult','Fire Temple');




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