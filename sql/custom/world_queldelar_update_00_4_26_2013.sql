INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('37523', '530', '1', '1', '0', '0', '12594.9', '-6787.55', '14.3221', '1.25648', '300', '0', '0', '41', '60', '0', '0', '0', '0');
UPDATE `creature_template` SET `npcflag`='1', `AIName`='SmartAI' WHERE (`entry`='37523');
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES ('37523', '64', '56', '49871', '1', '7', 'On gossip hello - give quest item Restored Quel\'Delar');

UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24553;
UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24564;
UPDATE `quest_template` SET `RequiredClasses`=446 WHERE `id`=24594;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24595;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=24596;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24598;