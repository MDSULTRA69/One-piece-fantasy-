-- ============================================================
-- One Piece Fantasy — Character Seed (Elbaf Arc, ~Ch. 1150)
-- ============================================================
-- Run this after your DB is up:
--   psql $DATABASE_URL < seed_characters.sql
--
-- PRICING TIERS (based on current arc relevance):
--   Tier S — 500  : Main protagonists / final saga central players
--   Tier A — 350  : Major recurring antagonists & key allies
--   Tier B — 200  : Important side characters, active this arc
--   Tier C — 100  : Relevant but not currently on-screen
--   Tier D — 50   : Background / inactive / low screen time expected
--
-- CONFIRMED DEAD (excluded):
--   - Portgas D. Ace (Marineford)
--   - Edward Newgate / Whitebeard (Marineford)
--   - Charlotte Linlin / Big Mom (Wano, fell into magma with Kaidou)
--   - Kaidou (Wano, fell into magma — presumed dead/imprisoned)
--   - Vegapunk Stella (Egghead — shot by York, heart stopped)
--   - Vegapunk Shaka (Egghead — shot by York)
--   - Vegapunk Pythagoras (Egghead — destroyed)
--   - Vegapunk Edison (Egghead — destroyed)
--   - Vegapunk Atlas (Egghead — destroyed)
--   - Saint Jaygarcia Saturn (killed by Imu post-Egghead, ch.1125)
--   - Jorul (Elbaf Giant Elder — died before the arc)
-- ============================================================

TRUNCATE TABLE characters RESTART IDENTITY CASCADE;

INSERT INTO characters (name, affiliation, cost, image_url, description, bounty) VALUES

-- ══════════════════════════════════════════════════
-- TIER S — 500 pts  (on-screen every arc)
-- ══════════════════════════════════════════════════
('Monkey D. Luffy',   'Straw Hat Pirates',  500, 'https://static.wikia.nocookie.net/onepiece/images/e/e9/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png', 'Captain of the Straw Hats. Gear 5 / Nika awakening. Current Yonko.', '3,000,000,000'),
('Roronoa Zoro',      'Straw Hat Pirates',  500, 'https://static.wikia.nocookie.net/onepiece/images/1/15/Roronoa_Zoro_Anime_Post_Timeskip_Infobox.png', 'First mate and swordsman. Three-sword style user. Aim: World''s Greatest Swordsman.', '1,101,000,000'),
('Nami',              'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/3/3f/Nami_Anime_Post_Timeskip_Infobox.png', 'Navigator of the Straw Hats. Climate-Tact wielder.', '366,000,000'),
('Usopp',             'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/0/05/Usopp_Anime_Post_Timeskip_Infobox.png', 'Sniper of the Straw Hats. Dreams of seeing Elbaf, his lifelong goal.', '500,000,000'),
('Vinsmoke Sanji',    'Straw Hat Pirates',  500, 'https://static.wikia.nocookie.net/onepiece/images/b/b5/Sanji_Anime_Post_Timeskip_Infobox.png', 'Cook of the Straw Hats. Germa enhancements + Ifrit Jambe.', '1,032,000,000'),
('Tony Tony Chopper', 'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/8/8e/Tony_Tony_Chopper_Anime_Post_Timeskip_Infobox.png', 'Doctor of the Straw Hats. Human-Human Fruit reindeer.', '1,000'),
('Nico Robin',        'Straw Hat Pirates',  500, 'https://static.wikia.nocookie.net/onepiece/images/3/3f/Nico_Robin_Anime_Post_Timeskip_Infobox.png', 'Archaeologist of the Straw Hats. Only person who can read Poneglyphs. Key to Elbaf arc.', '930,000,000'),
('Franky',            'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/6/64/Franky_Anime_Post_Timeskip_Infobox.png', 'Shipwright of the Straw Hats. Modified cyborg.', '394,000,000'),
('Brook',             'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/6/6b/Brook_Anime_Post_Timeskip_Infobox.png', 'Musician of the Straw Hats. Yomi Yomi skeleton.', '383,000,000'),
('Jinbe',             'Straw Hat Pirates',  350, 'https://static.wikia.nocookie.net/onepiece/images/2/2a/Jinbe_Anime_Post_Timeskip_Infobox.png', 'Helmsman of the Straw Hats. Former Warlord, fish-man karate master.', '1,100,000,000'),

-- ══════════════════════════════════════════════════
-- TIER A — 350 pts  (major players this arc)
-- ══════════════════════════════════════════════════
('Imu',                       'World Government',      500, 'https://static.wikia.nocookie.net/onepiece/images/9/9f/Imu_Manga_Color_Scheme.png', 'True ruler of the World Government. The final villain of One Piece. Now at Elbaf possessing Gunko.', 'Unknown'),
('Marshall D. Teach',          'Blackbeard Pirates',    500, 'https://static.wikia.nocookie.net/onepiece/images/b/b5/Marshall_D._Teach_Anime_Post_Timeskip_Infobox.png', 'Blackbeard. Yonko. Holds both Yami Yami and Gura Gura fruits. Moving on Elbaf.', '3,996,000,000'),
('Shanks',                     'Red Hair Pirates',      500, 'https://static.wikia.nocookie.net/onepiece/images/f/f2/Shanks_Anime_Post_Timeskip_Infobox.png', 'Red-Haired Shanks. Yonko. Connected to Elbaf and active in final saga.', '4,048,900,000'),
('Figarland Shamrock',         'World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/c/ca/Figarland_Shamrock_Manga_Infobox.png', 'Shanks'' identical twin. Holy Knight. Arrived in Elbaf. Key antagonist.', 'Unknown'),
('Saint Garling Figarland',    'World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/7/7a/Figarland_Garling_Anime_Infobox.png', 'New Gorosei, replacing Saturn. Father of Shanks. Supreme Commander of Holy Knights.', 'Unknown'),
('Saint Marcus Mars',          'World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/2/29/Saint_Marcus_Mars_Manga_Color_Scheme.png', 'One of the Five Elders (Gorosei). Insect Yokai transformation. Still active.', 'Unknown'),
('Saint Topman Warcury',       'World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/5/5d/Saint_Topman_Warcury_Manga_Color_Scheme.png', 'One of the Five Elders. Wild boar Houki transformation.', 'Unknown'),
('Saint Ethanbaron V. Nusjuro','World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/7/7e/Saint_Ethanbaron_V._Nusjuro_Manga_Color_Scheme.png', 'One of the Five Elders. Horse-based Yokai. Ice powers.', 'Unknown'),
('Saint Shepherd Ju Peter',    'World Government',      350, 'https://static.wikia.nocookie.net/onepiece/images/6/66/Saint_Shepherd_Ju_Peter_Manga_Color_Scheme.png', 'One of the Five Elders. Sandworm Yokai. Youngest-looking elder.', 'Unknown'),
('Trafalgar D. Water Law',     'Heart Pirates',         350, 'https://static.wikia.nocookie.net/onepiece/images/8/8e/Trafalgar_D._Water_Law_Anime_Post_Timeskip_Infobox.png', 'Captain of the Heart Pirates. Ope Ope no Mi user. Survived Wano, status unclear.', '3,000,000,000'),
('Monkey D. Dragon',           'Revolutionary Army',    350, 'https://static.wikia.nocookie.net/onepiece/images/c/c1/Monkey_D._Dragon_Anime_Infobox.png', 'Leader of the Revolutionary Army. Most wanted man in the world. Luffy''s father.', 'Unknown'),
('Sabo',                       'Revolutionary Army',    350, 'https://static.wikia.nocookie.net/onepiece/images/e/e8/Sabo_Anime_Post_Timeskip_Infobox.png', 'Chief of Staff of the Revolutionary Army. Mera Mera no Mi. Luffy''s sworn brother.', '602,000,000'),
('Loki',                       'Elbaf Giants',          350, 'https://static.wikia.nocookie.net/onepiece/images/0/07/Loki_Manga_Infobox.png', 'The Accursed Prince of Elbaf. Killed his father King Harald. Devil Fruit user. Central to Elbaf arc.', 'Unknown'),
('Jaguar D. Saul',             'Giant Warrior Pirates', 350, 'https://static.wikia.nocookie.net/onepiece/images/6/6e/Jaguar_D._Saul_Anime_Infobox.png', 'Formerly presumed dead. Alive at Elbaf, hiding as a teacher in the Owl Library. Robin''s reunion.', 'Unknown'),
('Jewelry Bonney',             'Bonney Pirates',        350, 'https://static.wikia.nocookie.net/onepiece/images/6/6a/Jewelry_Bonney_Anime_Post_Timeskip_Infobox.png', 'Paramecia Nikyu Nikyu — Distorted Future. Kuma''s daughter. Nika-form capable. Sailed to Elbaf.', '320,000,000'),

-- ══════════════════════════════════════════════════
-- TIER B — 200 pts  (important supporting role)
-- ══════════════════════════════════════════════════
('Monkey D. Garp',        'Marines (Retired)',    200, 'https://static.wikia.nocookie.net/onepiece/images/3/37/Monkey_D._Garp_Anime_Post_Timeskip_Infobox.png', 'Hero of the Marines. Luffy''s grandfather. Captured by Blackbeard — fate being resolved.', 'Unknown'),
('Bartholomew Kuma',      'Revolutionary Army',   200, 'https://static.wikia.nocookie.net/onepiece/images/f/f4/Bartholomew_Kuma_Anime_Pre_Timeskip_Infobox.png', 'Former Warlord. Paw-Paw fruit. Escaped Egghead with Bonney. Shard of consciousness remains.', '296,000,000'),
('Silvers Rayleigh',      'Retired',              200, 'https://static.wikia.nocookie.net/onepiece/images/a/a7/Silvers_Rayleigh_Anime_Post_Timeskip_Infobox.png', 'Dark King. Roger''s first mate. Haki master. Retired but still influential.', 'Unknown'),
('Boa Hancock',           'Kuja Pirates',         200, 'https://static.wikia.nocookie.net/onepiece/images/7/72/Boa_Hancock_Anime_Post_Timeskip_Infobox.png', 'Pirate Empress. Love-Love Mero Mero fruit. Was in contact with Luffy''s world.', '1,659,000,000'),
('Dracule Mihawk',        'Cross Guild',          200, 'https://static.wikia.nocookie.net/onepiece/images/7/70/Dracule_Mihawk_Anime_Post_Timeskip_Infobox.png', 'Greatest swordsman in the world. Yoru wielder. In Cross Guild with Buggy.', '3,590,000,000'),
('Buggy',                 'Cross Guild',          200, 'https://static.wikia.nocookie.net/onepiece/images/1/19/Buggy_Anime_Post_Timeskip_Infobox.png', 'Clown Yonko. Leads Cross Guild. Chop-Chop fruit. Surprisingly powerful through connections.', '3,189,000,000'),
('Crocodile',             'Cross Guild',          200, 'https://static.wikia.nocookie.net/onepiece/images/3/39/Crocodile_Anime_Post_Timeskip_Infobox.png', 'Formerly Sir Crocodile. Sand-Sand fruit. Co-founder of Cross Guild.', '1,965,000,000'),
('Rob Lucci',             'CP0 / World Government', 200, 'https://static.wikia.nocookie.net/onepiece/images/7/7e/Rob_Lucci_Anime_Post_Timeskip_Infobox.png', 'CP0 Agent. Neko Neko Zoan leopard. Survived Egghead.', '1,695,000,000'),
('Borsalino',             'Marines',              200, 'https://static.wikia.nocookie.net/onepiece/images/8/8c/Borsalino_Anime_Post_Timeskip_Infobox.png', 'Admiral Kizaru. Glint-Glint light fruit. Conflicted at Egghead — still active Marine.', 'Unknown'),
('Sakazuki',              'Marines',              200, 'https://static.wikia.nocookie.net/onepiece/images/3/38/Sakazuki_Anime_Post_Timeskip_Infobox.png', 'Fleet Admiral Akainu. Magma-Magma fruit. Running the Marines through the final saga.', 'Unknown'),
('Dorry',                 'Giant Warrior Pirates', 200, 'https://static.wikia.nocookie.net/onepiece/images/b/bd/Dorry_Anime_Infobox.png', 'Giant co-captain. Protecting Elbaf alongside the Straw Hats.', 'Unknown'),
('Brogy',                 'Giant Warrior Pirates', 200, 'https://static.wikia.nocookie.net/onepiece/images/2/2e/Brogy_Anime_Infobox.png', 'Giant co-captain. Partner of Dorry. Active in Elbaf arc.', 'Unknown'),
('Bartolomeo',            'Barto Club',           200, 'https://static.wikia.nocookie.net/onepiece/images/f/f6/Bartolomeo_Anime_Post_Timeskip_Infobox.png', 'Luffy''s biggest fan. Barrier-Barrier fruit. Punished by Shanks, survived, relevant at arc start.', '200,000,000'),
('Vegapunk York',         'World Government',     200, 'https://static.wikia.nocookie.net/onepiece/images/8/88/York_Anime_Infobox.png', 'Vegapunk Greed satellite. Survived Egghead. Now working for World Government. Alive.', 'Unknown'),
('Vegapunk Lilith',       'Vegapunk / Straw Hat allies', 200, 'https://static.wikia.nocookie.net/onepiece/images/9/9c/Lilith_Anime_Infobox.png', 'Evil satellite. Escaped Egghead with the Straw Hats. One of two surviving Vegapunk satellites.', 'Unknown'),
('Stussy',                'CP0 (defected)',        200, 'https://static.wikia.nocookie.net/onepiece/images/c/c1/Stussy_Anime_Infobox.png', 'Former CP0 agent. Defected to Vegapunk. First successful MADS clone. Escaped Egghead.', 'Unknown'),
('Coby',                  'Marines / SWORD',       200, 'https://static.wikia.nocookie.net/onepiece/images/2/22/Koby_Anime_Post_Timeskip_Infobox.png', 'Marine Captain / SWORD. Armament & Observation Haki. Was captured by Blackbeard, escaped.', 'Unknown'),

-- ══════════════════════════════════════════════════
-- TIER C — 100 pts  (relevant but off-screen)
-- ══════════════════════════════════════════════════
('Donquixote Doflamingo', 'Doflamingo Pirates (disbanded)', 100, 'https://static.wikia.nocookie.net/onepiece/images/5/5c/Donquixote_Doflamingo_Anime_Post_Timeskip_Infobox.png', 'Imprisoned in Impel Down Level 6. Potentially relevant in final saga.', '340,000,000'),
('Issho',                 'Marines',               100, 'https://static.wikia.nocookie.net/onepiece/images/0/0d/Fujitora_Anime_Infobox.png', 'Admiral Fujitora. Gravity-Gravity fruit. Honorable Marine. Not currently on-screen.', 'Unknown'),
('Aramaki',               'Marines',               100, 'https://static.wikia.nocookie.net/onepiece/images/9/93/Ryokugyu_Anime_Infobox.png', 'Admiral Ryokugyu. Plant-Plant Zoan. Active post-Wano, not yet featured in Elbaf.', 'Unknown'),
('Emporio Ivankov',       'Revolutionary Army',    100, 'https://static.wikia.nocookie.net/onepiece/images/e/e7/Emporio_Ivankov_Anime_Post_Timeskip_Infobox.png', 'Revolutionary Army commander. Hormone-Hormone fruit. Supporting cast.', '0'),
('Koala',                 'Revolutionary Army',    100, 'https://static.wikia.nocookie.net/onepiece/images/b/bc/Koala_Anime_Infobox.png', 'Revolutionary Army officer and fish-man karate practitioner.', 'Unknown'),
('Tashigi',               'Marines',               100, 'https://static.wikia.nocookie.net/onepiece/images/a/a5/Tashigi_Anime_Post_Timeskip_Infobox.png', 'Marine Captain under Smoker. Swordswoman. Occasional relevance.', 'Unknown'),
('Smoker',                'Marines',               100, 'https://static.wikia.nocookie.net/onepiece/images/3/39/Smoker_Anime_Post_Timeskip_Infobox.png', 'Vice Admiral. Moku Moku smoke fruit. Currently inactive in the arc.', 'Unknown'),
('Eustass Kid',           'Kid Pirates',           100, 'https://static.wikia.nocookie.net/onepiece/images/7/7c/Eustass_Kid_Anime_Post_Timeskip_Infobox.png', 'Former Worst Generation Yonko candidate. Defeated by Shanks at Elbaf — crew scattered.', '3,000,000,000'),

-- ══════════════════════════════════════════════════
-- TIER D — 50 pts  (background / inactive)
-- ══════════════════════════════════════════════════
('Sengoku',               'Marines (Retired)',  50, 'https://static.wikia.nocookie.net/onepiece/images/6/6d/Sengoku_Anime_Post_Timeskip_Infobox.png', 'Former Fleet Admiral. Now inspector general. Very low screen time in Elbaf arc.', 'Unknown'),
('Benn Beckman',          'Red Hair Pirates',   50, 'https://static.wikia.nocookie.net/onepiece/images/d/d2/Benn_Beckman_Anime_Infobox.png', 'First mate of Red Hair Pirates. Expected to appear in Elbaf arc.', 'Unknown'),
('Yasopp',                'Red Hair Pirates',   50, 'https://static.wikia.nocookie.net/onepiece/images/1/16/Yasopp_Anime_Infobox.png', 'Sniper of Red Hair Pirates. Usopp''s father. May appear in Elbaf.', 'Unknown'),
('Lucky Roux',            'Red Hair Pirates',   50, 'https://static.wikia.nocookie.net/onepiece/images/e/e0/Lucky_Roux_Anime_Infobox.png', 'Core member of Red Hair Pirates.', 'Unknown');

-- ============================================================
-- Verify row count
-- ============================================================
SELECT COUNT(*) AS total_characters FROM characters;
