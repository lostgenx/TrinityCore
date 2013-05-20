-- WAILING CAVERNS --

-- Mutanus The Devourer should now leave the water.
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=3654;

-- Disciple of Naralex's InhabitType for flight form
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=3678;

-- Naralex's InhabitType for flight form
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=3679;

-- ICECROWN CITADEL --

-- AreaTrigger for Gauntlet Event
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5623;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(5623, 'at_icc_start_sindragosa_gauntlet');

-- Template "Sindragosa's Ward"
DELETE FROM `creature_template` WHERE `entry` = 37503;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(37503, 0, 0, 0, 0, 0, 19725, 25455, 0, 0, 'Sindragosa\'s Ward', '', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 0, 496, 674, 0, 783, 1, 0, 0, 2, 33555200, 8, 0, 0, 0, 0, 0, 365, 529, 98, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 7, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, 'npc_sindragosa_ward', 12340);

-- Spawn "Sindragosa's Ward"
SET @GUID = 14570086;
DELETE FROM `creature` WHERE `id` = 37503;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID, 37503, 631, 1, 1, 0, 0, 4181.18, 2484.12, 242.349, 0.0117905, 300, 0, 0, 27890000, 8516000, 0, 0, 0, 0);

-- PIT OF SARON --

SET @GUID1=202141;
SET @GUID2=201909;
SET @GUID3=201840;
SET @GUID4=202222;
SET @GUID5=124338;
SET @GUID6=202018;
SET @GUID7=202022;
SET @GUID8=202050;
SET @GUID9=202097;

-- Cleanup
DELETE FROM creature WHERE guid IN (@GUID1, @GUID2, @GUID3, @GUID4, @GUID5, @GUID6, @GUID7, @GUID8, @GUID9);
DELETE FROM creature_addon WHERE guid IN(@GUID5);

-- Update flags and factions for Wrathbone Laborer and Ymirjar Deathbriger
UPDATE creature_template SET unit_flags = 32832, faction_A = 21, faction_H = 21 WHERE entry IN(36830, 36892);

-- Add AreaTrigger for Intro event.
DELETE FROM `areatrigger_scripts` WHERE `entry`= 5573;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5573,'at_pos_intro');

UPDATE creature_template SET scriptname = "pos_intro" WHERE entry IN (36990, 36993);

-- AreaTrigger for Rescued Slaves.
DELETE FROM `areatrigger_scripts` WHERE `entry`= 5598;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5598,'at_slave_rescued_pos');

-- AreaTrigger for Geist Ambush.
DELETE FROM `areatrigger_scripts` WHERE `entry`= 5599;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5599,'at_geist_ambusher_pos');

-- AreaTrigger for Outro Event.
UPDATE creature_template SET Scriptname = 'at_pos_outro' WHERE entry IN (38189, 38188);

-- FORGE OF SOULS --

-- Script Names for trash mobs.
UPDATE `creature_template` SET `ScriptName`="npc_spiteful_apparition" WHERE `entry`=36551;
UPDATE `creature_template` SET `ScriptName`="npc_spectral_warden" WHERE `entry`=36666;
UPDATE `creature_template` SET `ScriptName`="npc_soulguard_watchman" WHERE `entry`=36478;
UPDATE `creature_template` SET `ScriptName`="npc_soulguard_reaper" WHERE `entry`=36499;
UPDATE `creature_template` SET `ScriptName`="npc_soulguard_bonecaster" WHERE `entry`=36564;
UPDATE `creature_template` SET `ScriptName`="npc_soulguard_animator" WHERE `entry`=36516;
UPDATE `creature_template` SET `ScriptName`="npc_soulguard_adept" WHERE `entry`=36620;