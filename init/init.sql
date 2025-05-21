CREATE TABLE IF NOT EXISTS characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    race VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO characters (name, race, location) VALUES
('Link', 'Hylian', 'All Hyrule'),
('Zelda', 'Hylian', 'Hyrule Castle'),
('Ganondorf', 'Gerudo', 'Gerudo Valley / Hyrule Castle'),
('Impa', 'Sheik', 'Hyrule Castle / Kakariko Village / The Sages Chamber'),
('Saria', 'Kokiri', 'Kokiri Forest / The Sages Chamber'),
('Darunia', 'Goron', 'The Dead Montain'),
('Ruto', 'Zora', 'Jabu Jabu Belly / Zora`s Domain'),
('Nabooru', 'Gerudo', 'Gerudo Valley / The Sages Chamber'),
('Kaepora Gaebora / Rauru', 'Owl / Sage', 'Hyrule / The Sages Chamber');

-- CREATE TABLE IF NOT EXISTS objects (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     damage INT(100),
--     location VARCHAR(100)
-- );

-- INSERT INTO objects (name, damage, location) VALUES
-- ('Deku Stick', '1','Kokiri Forest'),
-- ('Deku Nut', '0','Kokiri Forest'),
-- ('Fairy Slingshoot', '1','Inside Deku Tree - Kokiri Forest'),
-- ('Bombs', '2','Dodongo Cave - The Dead Mountain'),
-- ('Boomerang', '0','Jabu Jabu Belly'),
-- ('Hookshoot', '1','Kakariko Graveyard - Race against Dampe'),
-- ('Longshoot', '','Water Temple'),
-- ('Kokiri Sword', '','Kokiri Forest'),
-- ('Kokiri Sword', '','Kokiri Forest'),

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