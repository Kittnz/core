-- Remove CREATURE_FLAG_EXTRA_LARGE_AOI from creatures that shouldn't have it. (Open World)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=1284; -- Archbishop Benedictus (Max Distance 99)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=1768; -- Vile Fin Tidehunter (Max Distance 100)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=2726; -- Scorched Guardian (Max Distance 101)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=2754; -- Anathemus (Max Distance 111)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3936; -- Shandris Feathermoon (Max Distance 94)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3943; -- Ruuzel (Max Distance 98)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4968; -- Lady Jaina Proudmoore (Max Distance 113)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=5359; -- Shore Strider (Max Distance 107)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6193; -- Spitelash Screamer (Max Distance 110)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6196; -- Spitelash Myrmidon (Max Distance 111)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7977; -- Gammerita (Max Distance 99)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7999; -- Tyrande Whisperwind (Max Distance 103)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8197; -- Chronalis (Max Distance 93)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8198; -- Tick (Max Distance 90)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10826; -- Lord Darkscythe (Max Distance 100)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11897; -- Duskwing (Max Distance 103)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14661; -- Stinglasher (Max Distance 100)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=15192; -- Anachronos (Max Distance 98)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3943; -- Ruuzel (Max Distance 98)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8197; -- Chronalis (Max Distance 93)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8198; -- Tick (Max Distance 90)

-- Remove CREATURE_FLAG_EXTRA_LARGE_AOI from creatures that shouldn't have it. (Instances)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3653; -- Kresh (Max Distance 96) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3669; -- Lord Cobrahn (Max Distance 96) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3670; -- Lord Pythas (Max Distance 98) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3671; -- Lady Anacondra (Max Distance 92) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3673; -- Lord Serpentis (Max Distance 99) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3674; -- Skum (Max Distance 92) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3886; -- Razorclaw the Butcher (Max Distance 81) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=3887; -- Baron Silverlaine (Max Distance 98) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4274; -- Fenrus the Devourer (Max Distance 94) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4278; -- Commander Springvale (Max Distance 80) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4279; -- Odo the Blindwatcher (Max Distance 94) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4830; -- Old Serra'kis (Max Distance 98) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4831; -- Lady Sarevess (Max Distance 98) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4832; -- Twilight Lord Kelris (Max Distance 99) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4887; -- Ghamoo-ra (Max Distance 93) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=5709; -- Shade of Eranikus (Max Distance 99) (Count 9)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=5710; -- Jammal'an the Prophet (Max Distance 99) (Count 11)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=5711; -- Ogom the Wretched (Max Distance 99) (Count 9)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=5775; -- Verdan the Everliving (Max Distance 99) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6235; -- Electrocutioner 6000 (Max Distance 92) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6243; -- Gelihast (Max Distance 97) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7023; -- Obsidian Sentinel (Max Distance 98) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7079; -- Viscous Fallout (Max Distance 98) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7267; -- Chief Ukorz Sandscalp (Max Distance 99) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7271; -- Witch Doctor Zum'rah (Max Distance 99) (Count 19)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7272; -- Theka the Martyr (Max Distance 99) (Count 21)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7275; -- Shadowpriest Sezz'ziz (Max Distance 95) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7795; -- Hydromancer Velratha (Max Distance 98) (Count 9)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7797; -- Ruuzlu (Max Distance 99) (Count 8)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8127; -- Antu'sul (Max Distance 97) (Count 9)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8923; -- Panzor the Invincible (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8929; -- Princess Moira Bronzebeard (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8933; -- Cave Creeper (Max Distance 100) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=8983; -- Golem Lord Argelmach (Max Distance 100) (Count 13)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9017; -- Lord Incendius (Max Distance 100) (Count 16)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9018; -- High Interrogator Gerstahn (Max Distance 100) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9024; -- Pyromancer Loregrain (Max Distance 100) (Count 16)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9025; -- Lord Roccor (Max Distance 100) (Count 26)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9028; -- Grizzle (Max Distance 98) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9029; -- Eviscerator (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9032; -- Hedrum the Creeper (Max Distance 100) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9033; -- General Angerforge (Max Distance 100) (Count 25)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9041; -- Warder Stilgiss (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9042; -- Verek (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9156; -- Ambassador Flamelash (Max Distance 100) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9236; -- Shadow Hunter Vosh'gajin (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9237; -- War Master Voone (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9319; -- Houndmaster Grebmar (Max Distance 100) (Count 24)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9499; -- Plugger Spazzring (Max Distance 100) (Count 16)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9502; -- Phalanx (Max Distance 100) (Count 18)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9537; -- Hurley Blackbreath (Max Distance 99) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9543; -- Ribbly Screwspigot (Max Distance 100) (Count 13)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9568; -- Overlord Wyrmthalak (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9736; -- Quartermaster Zigris (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9816; -- Pyroguard Emberseer (Max Distance 90) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=9938; -- Magmus (Max Distance 90) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10220; -- Halycon (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10268; -- Gizrul the Slavener (Max Distance 100) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10363; -- General Drakkisath (Max Distance 100) (Count 16)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10429; -- Warchief Rend Blackhand (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10435; -- Magistrate Barthilas (Max Distance 100) (Count 10)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10436; -- Baroness Anastari (Max Distance 100) (Count 12)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10437; -- Nerub'enkan (Max Distance 100) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10438; -- Maleki the Pallid (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10440; -- Baron Rivendare (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10502; -- Lady Illucia Barov (Max Distance 100) (Count 8)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10503; -- Jandice Barov (Max Distance 100) (Count 10)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10505; -- Instructor Malicia (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10508; -- Ras Frostwhisper (Max Distance 100) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10558; -- Hearthsinger Forresten (Max Distance 98) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10596; -- Mother Smolderweb (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10808; -- Timmy the Cruel (Max Distance 97) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10809; -- Stonespine (Max Distance 100) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10811; -- Archivist Galford (Max Distance 91) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10812; -- Grand Crusader Dathrohan (Max Distance 99) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10901; -- Lorekeeper Polkelt (Max Distance 100) (Count 9)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=10997; -- Cannon Master Willey (Max Distance 91) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11032; -- Malor the Zealous (Max Distance 95) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11261; -- Doctor Theolen Krastinov (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11486; -- Prince Tortheldrin (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11487; -- Magister Kalendris (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11488; -- Illyanna Ravenoak (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11490; -- Zevrim Thornhoof (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=11622; -- Rattlegore (Max Distance 100) (Count 6)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=12203; -- Landslide (Max Distance 91) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=12225; -- Celebras the Cursed (Max Distance 95) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=12236; -- Lord Vyletongue (Max Distance 99) (Count 8)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=12243; -- Spirit of Veng (Max Distance 100) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=12258; -- Razorlash (Max Distance 99) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=13280; -- Hydrospawn (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=13282; -- Noxxion (Max Distance 94) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=13596; -- Rotgrip (Max Distance 99) (Count 10)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=13601; -- Tinkerer Gizlock (Max Distance 99) (Count 10)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14321; -- Guard Fengus (Max Distance 100) (Count 4)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14323; -- Guard Slip'kik (Max Distance 96) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14325; -- Captain Kromcrush (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14326; -- Guard Mol'dar (Max Distance 100) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14327; -- Lethtendris (Max Distance 100) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14349; -- Pimgib (Max Distance 100) (Count 2)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=14861; -- Blood Steward of Kirtonos (Max Distance 100) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7291; -- Galgann Firehammer (Max Distance 99) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7228; -- Ironaya (Max Distance 94) (Count 1)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=2748; -- Archaedas (Max Distance 99) (Count 10)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=4854; -- Grimlok (Max Distance 99) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6907; -- Eric "The Swift" (Max Distance 92) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6906; -- Baelog (Max Distance 97) (Count 5)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6908; -- Olaf (Max Distance 94) (Count 3)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=7206; -- Ancient Stone Keeper (Max Distance 99) (Count 7)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=6910; -- Revelosh (Max Distance 98) (Count 8)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~2097152) WHERE `entry`=16604; -- Blackwing Spell Marker (Max Distance 106) (Count 3)

-- Remove CREATURE_FLAG_EXTRA_GIGANTIC_AOI from creatures that shouldn't have it.
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=392; -- Captain Grayson (Max Distance 99)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=832; -- Dust Devil (Max Distance 100)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=1493; -- Mok'rash (Max Distance 106)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=2120; -- Archmage Ataeric (Max Distance 99)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=7024; -- Agent Kearnen (Max Distance 17)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=14269; -- Seeker Aqualon (Max Distance 94)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra` & ~4194304) WHERE `entry`=14272; -- Snarlflare (Max Distance 96)
