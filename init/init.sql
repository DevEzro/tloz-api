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
    location VARCHAR(100)
);

INSERT INTO objects (name, damage, location) VALUES
('Deku Stick',1,'Kokiri Forest'),
('Deku Nut',0,'Kokiri Forest'),
('Fairy Slingshoot',1,'Inside Deku Tree - Kokiri Forest'),
('Bombs',2,'Dodongo Cave - The Dead Mountain'),
('Boomerang',0,'Jabu Jabu Belly'),
('Hookshoot',1,'Kakariko Graveyard - Race against Dampe'),
('Longshoot',NULL,'Water Temple'),
('Kokiri Sword',NULL,'Kokiri Forest'),
('Kokiri Sword',NULL,'Kokiri Forest');

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