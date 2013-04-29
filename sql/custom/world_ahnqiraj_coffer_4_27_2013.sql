SET @LSCOFFER := 180690;
SET @SCOFFER  := 180691;
SET @GUIDLSC  := 17800;
SET @GUIDSC   := 20918;

-- Updating maxcount for Scarab Scarab Bag
UPDATE `item_loot_template` SET `maxcount` = 5 WHERE `entry` = 21156;

-- Updating loot for Scarab Coffer
DELETE FROM `gameobject_loot_template` WHERE (`entry`=17532);
INSERT INTO `gameobject_loot_template` VALUES 
(17532, 20866, -14, 1, 0, 1, 2),
(17532, 20867, -15, 1, 0, 1, 2),
(17532, 20868, -14, 1, 0, 1, 2),
(17532, 20869, -19, 1, 0, 1, 2),
(17532, 20870, -15, 1, 0, 1, 2),
(17532, 20871, -16, 1, 0, 1, 2),
(17532, 20872, -15, 1, 0, 1, 2),
(17532, 20873, -15, 1, 0, 1, 2),
(17532, 21156, 100, 1, 0, 1, 1);

-- Updating loot for Large Scarab Coffer
DELETE FROM `gameobject_loot_template` WHERE (`entry`=17533);
INSERT INTO `gameobject_loot_template` VALUES 
(17533, 20874, -22, 1, 0, 1, 3),
(17533, 20875, -30, 1, 0, 1, 3),
(17533, 20876, -24, 1, 0, 1, 3),
(17533, 20877, -23, 1, 0, 1, 3),
(17533, 20878, -30, 1, 0, 1, 3),
(17533, 20879, -22, 1, 0, 1, 3),
(17533, 20881, -26, 1, 0, 1, 3),
(17533, 20882, -25, 1, 0, 1, 3),
(17533, 21156, 100, 1, 0, 1, 1);

-- Updating spawn location for Large Scarab Coffers
DELETE FROM `gameobject` WHERE `guid` IN (@GUIDLSC, @GUIDLSC+1, @GUIDLSC+2, @GUIDLSC+3, @GUIDLSC+4, @GUIDLSC+5, @GUIDLSC+6, @GUIDLSC+7, @GUIDLSC+8, @GUIDLSC+9, @GUIDLSC+10, @GUIDLSC+11);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(@GUIDLSC, @LSCOFFER, 531, 1, 1, -8130.227, 1136.687, -88.93, 0.857524, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+1, @LSCOFFER, 531, 1, 1, -8588.386, 1300.252, -68.730408, 2.097758, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+2, @LSCOFFER, 531, 1, 1, -8685.795, 1598.988, -87.498146, 4.515244, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+3, @LSCOFFER, 531, 1, 1, -8878.372, 1366.834, -98.920456, 1.169440, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+4, @LSCOFFER, 531, 1, 1, -9094.497, 1515.304, -98.369436, 5.289001, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+5, @LSCOFFER, 531, 1, 1, -9205.269, 1489.207, -94.166359, 0.800427, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+6, @LSCOFFER, 531, 1, 1, -9239.013, 1569.972, -77.098450, 5.92124, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+7, @LSCOFFER, 531, 1, 1, -9162.003, 1584.0142, -79.262154, 2.819869, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+8, @LSCOFFER, 531, 1, 1, -9203.490, 1967.797, -51.939789, 1.508256, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+9, @LSCOFFER, 531, 1, 1, -8923.832, 1826.973, -20.905273, 1.040937, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+10, @LSCOFFER, 531, 1, 1, -8561.847, 1988.220, -3.113131, 4.493683, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDLSC+11, @LSCOFFER, 531, 1, 1, -8507.548, 2018.031, 104.526520, 3.540616, 0, 0, 0, 0, 10800, 100, 1);

-- Updating spawn location for Scarab Coffers
DELETE FROM `gameobject` WHERE `guid` IN (@GUIDSC, @GUIDSC+1, @GUIDSC+2, @GUIDSC+3, @GUIDSC+4, @GUIDSC+5, @GUIDSC+6, @GUIDSC+7, @GUIDSC+8);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(@GUIDSC, @SCOFFER, 509, 1, 1, -8698.908, 1560.894, 32.013947, 2.385138, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+1, @SCOFFER, 509, 1, 1, -9117.897, 1511.653, 21.414448, 1.780370, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+2, @SCOFFER, 509, 1, 1, -8775.216, 2003.485, 21.403147, 3.060552, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+3, @SCOFFER, 509, 1, 1, -9009.267, 1989.094, 33.044173, 0.115302, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+4, @SCOFFER, 509, 1, 1, -9130.286, 2188.145, 25.825098, 0.872438, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+5, @SCOFFER, 509, 1, 1, -9544.468, 2010.560, 105.250053, 0.864585, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+6, @SCOFFER, 509, 1, 1, -9701.868, 1619.060, 27.191568, 0.042328, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+7, @SCOFFER, 509, 1, 1, -9552.093, 1567.647, 23.153004, 2.197394, 0, 0, 0, 0, 10800, 100, 1),
(@GUIDSC+8, @SCOFFER, 509, 1, 1, -9335.515, 1214.496, 21.385408, 0.709061, 0, 0, 0, 0, 10800, 100, 1);

-- Pool template for Large Scarab Coffers and Scarab Coffers
DELETE FROM `pool_template` WHERE entry IN (1161, 1162);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1161, 5, 'Large Scarab Coffers'),
(1162, 7, 'Scarab Coffers');

-- Pool_gameobject pool for Large Scarab Coffers
DELETE FROM `pool_gameobject` WHERE guid IN (@GUIDLSC, @GUIDLSC+1, @GUIDLSC+2, @GUIDLSC+3, @GUIDLSC+4, @GUIDLSC+5, @GUIDLSC+6, @GUIDLSC+7, @GUIDLSC+8, @GUIDLSC+9, @GUIDLSC+10, @GUIDLSC+11);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUIDLSC, 1161, 0, 'Large Scarab Coffers - Spawn 1'),
(@GUIDLSC+1, 1161, 0, 'Large Scarab Coffers - Spawn 2'),
(@GUIDLSC+2, 1161, 0, 'Large Scarab Coffers - Spawn 3'),
(@GUIDLSC+3, 1161, 0, 'Large Scarab Coffers - Spawn 4'),
(@GUIDLSC+4, 1161, 0, 'Large Scarab Coffers - Spawn 5'),
(@GUIDLSC+5, 1161, 0, 'Large Scarab Coffers - Spawn 6'),
(@GUIDLSC+6, 1161, 0, 'Large Scarab Coffers - Spawn 7'),
(@GUIDLSC+7, 1161, 0, 'Large Scarab Coffers - Spawn 8'),
(@GUIDLSC+8, 1161, 0, 'Large Scarab Coffers - Spawn 9'),
(@GUIDLSC+9, 1161, 0, 'Large Scarab Coffers - Spawn 10'),
(@GUIDLSC+10, 1161, 0, 'Large Scarab Coffers - Spawn 11'),
(@GUIDLSC+11, 1161, 0, 'Large Scarab Coffers - Spawn 12');

-- Pool_gameobject pool for Large Scarab Coffers
DELETE FROM `pool_gameobject` WHERE guid IN (@GUIDSC, @GUIDSC+1, @GUIDSC+2, @GUIDSC+3, @GUIDSC+4, @GUIDSC+5, @GUIDSC+6, @GUIDSC+7, @GUIDSC+8, @GUIDSC+9, @GUIDSC+10, @GUIDSC+11);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUIDSC, 1162, 0, 'Scarab Coffers - Spawn 1'),
(@GUIDSC+1, 1162, 0, 'Scarab Coffers - Spawn 2'),
(@GUIDSC+2, 1162, 0, 'Scarab Coffers - Spawn 3'),
(@GUIDSC+3, 1162, 0, 'Scarab Coffers - Spawn 4'),
(@GUIDSC+4, 1162, 0, 'Scarab Coffers - Spawn 5'),
(@GUIDSC+5, 1162, 0, 'Scarab Coffers - Spawn 6'),
(@GUIDSC+6, 1162, 0, 'Scarab Coffers - Spawn 7'),
(@GUIDSC+7, 1162, 0, 'Scarab Coffers - Spawn 8'),
(@GUIDSC+8, 1162, 0, 'Scarab Coffers - Spawn 9');

-- Updating maxcount for Scarab Scarab Bag
UPDATE `item_loot_template` SET `maxcount`=5 WHERE `entry`=21156 AND `item` IN (20858,20859,20860,20861,20862,20863,20864,20865);
UPDATE `reference_loot_template` SET `maxcount`=2 WHERE `entry`=14001 AND `item` IN (20866,20867,20868,20869,20870,20871,20872,20873);
-- Updating loot for Scarab Coffer
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (17532,17533);
INSERT INTO `gameobject_loot_template` VALUES 
-- Scarab Coffer
(17532,21156,-100,1,0,1,1), -- Always drop a Sacrab Bag
(17532,1,100,1,0,-14001,1), -- Drop a AQ20 idol from reference
-- Large Scarab Coffer
(17533,21156,-100,1,0,1,1), -- Always drop a Sacrab Bag
(17533,1,100,1,0,-14502,1); -- Drop a AQ40 idol from reference
-- Updating loot for Large Scarab Coffer
DELETE FROM `reference_loot_template` WHERE `entry`=14502;
INSERT INTO `reference_loot_template` VALUES 
(14502,20877,0,1,1,1,3), -- 1 to 3  Idol of the Sage
(14502,20879,0,1,1,1,3), -- 1 to 3  Idol of Life
(14502,20878,0,1,1,1,3), -- 1 to 3  Idol of Rebirth
(14502,20881,0,1,1,1,3), -- 1 to 3  Idol of Strife
(14502,20874,0,1,1,1,3), -- 1 to 3  Idol of the Sun
(14502,20882,0,1,1,1,3), -- 1 to 3  Idol of War
(14502,20876,0,1,1,1,3), -- 1 to 3  Idol of Death
(14502,20875,0,1,1,1,3); -- 1 to 3  Idol of Night