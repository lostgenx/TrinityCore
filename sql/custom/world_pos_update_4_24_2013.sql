SET @ENTRY1=36840;
SET @ENTRY2=36892;
SET @ENTRY3=36893;
SET @ENTRY4=36841;
SET @ENTRY5=36842;
SET @ENTRY6=37584;
SET @ENTRY7=37588;
SET @ENTRY8=37587;
SET @ENTRY9=37496;
SET @ENTRY10=37497;
DELETE FROM creature WHERE id IN (@ENTRY1, @ENTRY2, @ENTRY3, @ENTRY4, @ENTRY5, @ENTRY6, @ENTRY7, @ENTRY8, @ENTRY9, @ENTRY10);

SET @GUID1=201888;
SET @GUID2=202281;
SET @GUID3=201965;
DELETE FROM creature WHERE guid IN (@GUID1, @GUID2, @GUID3);

SET @GUID1=202141;
SET @GUID2=201909;
SET @GUID3=201840;
SET @GUID4=202222;
SET @GUID5=124338;
SET @GUID6=202018;
SET @GUID7=202022;
SET @GUID8=202050;
SET @GUID9=202097;
DELETE FROM creature WHERE guid IN (@GUID1, @GUID2, @GUID3, @GUID4, @GUID5, @GUID6, @GUID7, @GUID8, @GUID9);
DELETE FROM creature_addon where guid IN(@GUID5); 

DELETE FROM `areatrigger_scripts` where `entry`= 5573;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5573,'at_pos_intro');

UPDATE creature_template SET scriptname = "pos_intro" WHERE entry IN (36990, 36993);

DELETE FROM `areatrigger_scripts` where `entry`= 5598;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5598,'at_slave_rescued_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5599;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5599,'at_geist_ambusher_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5599;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES (5599,'at_geist_ambusher_pos'); 

UPDATE creature_template SET Scriptname = 'pos_outro' WHERE entry IN (38189, 38188);