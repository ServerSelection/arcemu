-- a minor adjustment to the ordering

alter table `gameobject_names` change `entry` `entry` int(10) unsigned NOT NULL DEFAULT '0' comment '' first, change `Type` `Type` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `entry`, change `DisplayID` `DisplayID` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `Type`, change `Name` `Name` varchar(100) NOT NULL collate utf8_unicode_ci comment '' after `DisplayID`, change `Name2` `Name2` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `Name`, change `Name3` `Name3` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `Name2`, change `Name4` `Name4` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `Name3`, change `Category` `Category` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `Name4`, change `CastBarText` `CastBarText` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `Category`, change `UnkStr` `UnkStr` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `CastBarText`, change `spellfocus` `spellfocus` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `UnkStr`, change `sound1` `sound1` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `spellfocus`, change `sound2` `sound2` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound1`, change `sound3` `sound3` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound2`, change `sound4` `sound4` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound3`, change `sound5` `sound5` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound4`, change `sound6` `sound6` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound5`, change `sound7` `sound7` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound6`, change `sound8` `sound8` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound7`, change `sound9` `sound9` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound8`, change `unknown1` `unknown1` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `sound9`, change `unknown2` `unknown2` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown1`, change `unknown3` `unknown3` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown2`, change `unknown4` `unknown4` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown3`, change `unknown5` `unknown5` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown4`, change `unknown6` `unknown6` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown5`, change `unknown7` `unknown7` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown6`, change `unknown8` `unknown8` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown7`, change `unknown9` `unknown9` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown8`, change `unknown10` `unknown10` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown9`, change `unknown11` `unknown11` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown10`, change `unknown12` `unknown12` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown11`, change `unknown13` `unknown13` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown12`, change `unknown14` `unknown14` int(10) unsigned NOT NULL DEFAULT '0' comment '' after `unknown13`, change `Size` `Size` float NOT NULL DEFAULT '1' comment '' after `unknown14`, change `QuestItem1` `QuestItem1` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `Size`, change `QuestItem2` `QuestItem2` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem1`, change `QuestItem3` `QuestItem3` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem2`, change `QuestItem4` `QuestItem4` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem3`, change `QuestItem5` `QuestItem5` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem4`, change `QuestItem6` `QuestItem6` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem5`;


alter table `gameobject_names` drop column `Name2`, drop column `Name3`, drop column `Name4`;


alter table `creature_names` change `entry` `entry` int(10) unsigned NOT NULL DEFAULT '0' comment '' first, change `name` `name` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `entry`, change `subname` `subname` varchar(100) NOT NULL collate latin1_swedish_ci comment '' after `name`, change `info_str` `info_str` varchar(500) NOT NULL collate latin1_swedish_ci comment '' after `subname`, change `Flags1` `Flags1` int(10) unsigned NULL DEFAULT '0' comment '' after `info_str`, change `type` `type` int(10) unsigned NULL DEFAULT '0' comment '' after `Flags1`, change `family` `family` int(10) unsigned NULL DEFAULT '0' comment '' after `type`, change `rank` `rank` int(10) unsigned NULL DEFAULT '0' comment '' after `family`, change `unk4` `unk4` int(10) unsigned NULL DEFAULT '0' comment '' after `rank`, change `spelldataid` `spelldataid` int(10) unsigned NULL comment '' after `unk4`, change `male_displayid` `male_displayid` int(30) NOT NULL comment '' after `spelldataid`, change `female_displayid` `female_displayid` int(30) NOT NULL comment '' after `male_displayid`, change `male_displayid2` `male_displayid2` int(30) NOT NULL DEFAULT '0' comment '' after `female_displayid`, change `female_displayid2` `female_displayid2` int(30) NOT NULL DEFAULT '0' comment '' after `male_displayid2`, change `unknown_float1` `unknown_float1` float NOT NULL DEFAULT '1' comment '' after `female_displayid2`, change `unknown_float2` `unknown_float2` float NOT NULL DEFAULT '1' comment '' after `unknown_float1`, change `civilian` `civilian` int(4) unsigned NULL comment '' after `unknown_float2`, change `leader` `leader` tinyint(3) unsigned NULL comment '' after `civilian`, change `QuestItem1` `QuestItem1` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `leader`, change `QuestItem2` `QuestItem2` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem1`, change `QuestItem3` `QuestItem3` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem2`, change `QuestItem4` `QuestItem4` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem3`, change `QuestItem5` `QuestItem5` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem4`, change `QuestItem6` `QuestItem6` int(11) unsigned NOT NULL DEFAULT '0' comment '' after `QuestItem5`;


alter table `creature_names` change `Flags1` `flags1` int(10) UNSIGNED DEFAULT '0' NULL , change `rank` `rank` int(10) UNSIGNED DEFAULT '0' NULL , change `unk4` `killcredit1` int(10) UNSIGNED DEFAULT '0' NULL , change `spelldataid` `killcredit2` int(10) UNSIGNED NULL , change `QuestItem1` `questitem1` int(11) UNSIGNED DEFAULT '0' NOT NULL, change `QuestItem2` `questitem2` int(11) UNSIGNED DEFAULT '0' NOT NULL, change `QuestItem3` `questitem3` int(11) UNSIGNED DEFAULT '0' NOT NULL, change `QuestItem4` `questitem4` int(11) UNSIGNED DEFAULT '0' NOT NULL, change `QuestItem5` `questitem5` int(11) UNSIGNED DEFAULT '0' NOT NULL, change `QuestItem6` `questitem6` int(11) UNSIGNED DEFAULT '0' NOT NULL;

alter table `creature_names` drop column `civilian`;

alter table `creature_names` change `flags1` `flags1` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `type` `type` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `family` `family` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `rank` `rank` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `killcredit1` `killcredit1` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `killcredit2` `killcredit2` int(10) UNSIGNED DEFAULT '0' NOT NULL, change `male_displayid` `male_displayid` int(30) DEFAULT '0' NOT NULL, change `female_displayid` `female_displayid` int(30) DEFAULT '0' NOT NULL, change `leader` `leader` tinyint(3) UNSIGNED DEFAULT '0' NOT NULL;

alter table `creature_names` add column `waypointid` int UNSIGNED DEFAULT '0' NOT NULL after `questitem6`,change `male_displayid` `male_displayid` int(30) UNSIGNED DEFAULT '0' NOT NULL, change `female_displayid` `female_displayid` int(30) UNSIGNED DEFAULT '0' NOT NULL, change `male_displayid2` `male_displayid2` int(30) UNSIGNED DEFAULT '0' NOT NULL, change `female_displayid2` `female_displayid2` int(30) UNSIGNED DEFAULT '0' NOT NULL;
