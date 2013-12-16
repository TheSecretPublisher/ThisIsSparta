DELETE FROM `areatrigger_teleport` WHERE `id`=6769;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(6769, 'Zul''Gurub - Exit', 0, -11916.2, -1209.47, 92.2873, 1.5708);
DELETE FROM `spell_target_position` WHERE `id` IN (17608, 17610, 17611);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(17608, 1, 9656.54, 2518.26, 1331.66, 0), -- Portal Effect: Darnassus
(17610, 1, -967.375, 284.82, 110.773, 3.199991), -- Portal Effect: Thunder Bluff
(17611, 0, 1773.42, 61.7391, -46.3215, 0); -- Portal Effect: Undercity
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=203135; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=193612; -- Barricade
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=110230; -- Bonfire
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=187193; -- Standing, Giant - Xmas
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=178557; -- Christmas Tree (Medium)
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=182198; -- Arcane Container
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=176352; -- King's Square Postbox
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=175966; -- Enchanted Scarlet Thread
UPDATE `gameobject_template` SET `size`=3, `WDBVerified`=15050 WHERE `entry`=185951; -- Simon Game Aura Yellow Large
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=202969; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=203091; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=184993; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=184991; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=184994; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=182737; -- Silvermoon Alchemy
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=187680; -- Farseer Grimwalker's Remains
UPDATE `gameobject_template` SET `WDBVerified`=15050 WHERE `entry`=181324; -- Campfire

UPDATE `creature_model_info` SET `bounding_radius`=0.4125, `combat_reach`=0.825 WHERE `modelid`=24719; -- 24719
UPDATE `creature_model_info` SET `bounding_radius`=0.52785, `combat_reach`=2.5875 WHERE `modelid`=15480; -- 15480
UPDATE `creature_model_info` SET `bounding_radius`=0.8725, `combat_reach`=3.75 WHERE `modelid`=18806; -- 18806
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=18807; -- 18807
UPDATE `creature_model_info` SET `bounding_radius`=1.875, `combat_reach`=8.25 WHERE `modelid`=16206; -- 16206
UPDATE `creature_model_info` SET `bounding_radius`=0.5967, `combat_reach`=2.925 WHERE `modelid`=30478; -- 30478
UPDATE `creature_model_info` SET `bounding_radius`=0.15, `combat_reach`=0.45 WHERE `modelid`=7470; -- 7470
UPDATE `creature_model_info` SET `bounding_radius`=0.63195, `combat_reach`=2.475 WHERE `modelid`=31034; -- 31034
UPDATE `creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=1 WHERE `modelid`=31088; -- 31088
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18785; -- 18785
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18793; -- 18793
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=19342; -- 19342
UPDATE `creature_model_info` SET `bounding_radius`=0.35, `combat_reach`=0.7 WHERE `modelid`=38418; -- 38418
UPDATE `creature_model_info` SET `bounding_radius`=0.2396136, `combat_reach`=1.566102 WHERE `modelid`=9021; -- 9021
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=22475; -- 22475
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=17835; -- 17835
UPDATE `creature_model_info` SET `bounding_radius`=0.25, `combat_reach`=0.5 WHERE `modelid`=19634; -- 19634
UPDATE `creature_model_info` SET `bounding_radius`=0.47875, `combat_reach`=1.875 WHERE `modelid`=21341; -- 21341
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `combat_reach`=1.5 WHERE `modelid`=20808; -- 20808
UPDATE `creature_model_info` SET `bounding_radius`=0.54, `combat_reach`=7.2, `gender`=0 WHERE `modelid`=20825; -- 20825
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=36925; -- 36925
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19629; -- 19629
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19648; -- 19648
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19628; -- 19628
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19896; -- 19896
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19964; -- 19964
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=19681; -- 19681
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19675; -- 19675
UPDATE `creature_model_info` SET `bounding_radius`=0.106946, `gender`=0 WHERE `modelid`=19676; -- 19676
UPDATE `creature_model_info` SET `bounding_radius`=0.3, `combat_reach`=1, `gender`=0 WHERE `modelid`=19671; -- 19671
UPDATE `creature_model_info` SET `bounding_radius`=0.24, `combat_reach`=0.8, `gender`=0 WHERE `modelid`=19337; -- 19337
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=20961; -- 20961
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=20824; -- 20824
UPDATE `creature_model_info` SET `bounding_radius`=0.6, `combat_reach`=0.5 WHERE `modelid`=18156; -- 18156
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=20472; -- 20472
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=18959; -- 18959
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19080; -- 19080
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=19082; -- 19082
UPDATE `creature_model_info` SET `bounding_radius`=0.7639, `combat_reach`=2.5 WHERE `modelid`=14509; -- 14509
UPDATE `creature_model_info` SET `bounding_radius`=0.775, `combat_reach`=3.75 WHERE `modelid`=21246; -- 21246
UPDATE `creature_model_info` SET `bounding_radius`=1.05, `combat_reach`=7.5 WHERE `modelid`=21247; -- 21247
UPDATE `creature_model_info` SET `bounding_radius`=0.279 WHERE `modelid`=30302; -- 30302
UPDATE `creature_model_info` SET `bounding_radius`=0.279 WHERE `modelid`=30301; -- 30301
UPDATE `creature_model_info` SET `bounding_radius`=0.806, `combat_reach`=2.6 WHERE `modelid`=27706; -- 27706
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=5560; -- 5560
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38335; -- 38335
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38338; -- 38338
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38339; -- 38339
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=38742; -- 38742
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38334; -- 38334
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=38336; -- 38336
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38199; -- 38199
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38198; -- 38198
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38200; -- 38200
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=38197; -- 38197
UPDATE `creature_model_info` SET `combat_reach`=1.283898 WHERE `modelid`=2437; -- 2437
UPDATE `creature_model_info` SET `bounding_radius`=0.775, `combat_reach`=2.5 WHERE `modelid`=28010; -- 28010
UPDATE `creature_model_info` SET `combat_reach`=0.605 WHERE `modelid`=25390; -- 25390
UPDATE `creature_model_info` SET `bounding_radius`=0.18755, `combat_reach`=0.605 WHERE `modelid`=25391; -- 25391
UPDATE `creature_model_info` SET `bounding_radius`=2.25, `combat_reach`=1.875 WHERE `modelid`=15878; -- 15878
UPDATE `creature_model_info` SET `bounding_radius`=1, `gender`=0 WHERE `modelid`=15879; -- 15879
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26958; -- 26958
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=27003; -- 27003
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=26949; -- 26949
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26961; -- 26961
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26953; -- 26953
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=27098; -- 27098
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26954; -- 26954
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26952; -- 26952
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26960; -- 26960
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26966; -- 26966
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26964; -- 26964
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26959; -- 26959
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26950; -- 26950
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25 WHERE `modelid`=27970; -- 27970
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26962; -- 26962
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26957; -- 26957
UPDATE `creature_model_info` SET `bounding_radius`=0.3875, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=26955; -- 26955
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=26956; -- 26956
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=39076; -- 39076
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=39077; -- 39077
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15612; -- 15612
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15632; -- 15632
UPDATE `creature_model_info` SET `bounding_radius`=0.7454644, `combat_reach`=0.6338983 WHERE `modelid`=607; -- 607
UPDATE `creature_model_info` SET `bounding_radius`=1.047, `combat_reach`=4.5 WHERE `modelid`=15608; -- 15608
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15630; -- 15630
UPDATE `creature_model_info` SET `bounding_radius`=0.759, `combat_reach`=1.4375 WHERE `modelid`=373; -- 373
UPDATE `creature_model_info` SET `bounding_radius`=0.7374915, `combat_reach`=0.6271186 WHERE `modelid`=503; -- 503
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8 WHERE `modelid`=15638; -- 15638
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15600; -- 15600
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15609; -- 15609
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8, `gender`=1 WHERE `modelid`=39085; -- 39085
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=31208; -- 31208
UPDATE `creature_model_info` SET `bounding_radius`=1.4, `combat_reach`=1.75 WHERE `modelid`=6828; -- 6828
UPDATE `creature_model_info` SET `bounding_radius`=1.3, `combat_reach`=1.625 WHERE `modelid`=6818; -- 6818
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `combat_reach`=1.5 WHERE `modelid`=31211; -- 31211
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15644; -- 15644
UPDATE `creature_model_info` SET `bounding_radius`=0.062, `combat_reach`=0.3 WHERE `modelid`=35015; -- 35015
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8 WHERE `modelid`=15601; -- 15601
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8 WHERE `modelid`=15640; -- 15640
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8 WHERE `modelid`=15624; -- 15624
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8, `gender`=1 WHERE `modelid`=39082; -- 39082
UPDATE `creature_model_info` SET `bounding_radius`=1.51 WHERE `modelid`=38705; -- 38705
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=33004; -- 33004
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=22254; -- 22254
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15642; -- 15642
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8 WHERE `modelid`=15634; -- 15634
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8 WHERE `modelid`=15629; -- 15629
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=6084; -- 6084
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=29443; -- 29443
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15615; -- 15615
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15604; -- 15604
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15635; -- 15635
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8 WHERE `modelid`=15623; -- 15623
UPDATE `creature_model_info` SET `bounding_radius`=1.047, `combat_reach`=4.5 WHERE `modelid`=15628; -- 15628
UPDATE `creature_model_info` SET `bounding_radius`=0.71, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=39072; -- 39072
UPDATE `creature_model_info` SET `bounding_radius`=0.71, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=39071; -- 39071
UPDATE `creature_model_info` SET `bounding_radius`=1.090305, `combat_reach`=0.8745763 WHERE `modelid`=711; -- 711
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8 WHERE `modelid`=15602; -- 15602
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15626; -- 15626
UPDATE `creature_model_info` SET `bounding_radius`=1.047, `combat_reach`=4.5 WHERE `modelid`=15619; -- 15619
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=15613; -- 15613
UPDATE `creature_model_info` SET `bounding_radius`=1.16964, `combat_reach`=4.860001 WHERE `modelid`=28420; -- 28420
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8 WHERE `modelid`=15605; -- 15605
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8 WHERE `modelid`=15603; -- 15603
UPDATE `creature_model_info` SET `combat_reach`=1.060169 WHERE `modelid`=32764; -- 32764
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=39075; -- 39075
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=39074; -- 39074
UPDATE `creature_model_info` SET `bounding_radius`=0.4668, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=39086; -- 39086
UPDATE `creature_model_info` SET `bounding_radius`=1.047, `combat_reach`=4.5 WHERE `modelid`=15645; -- 15645
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=35664; -- 35664
UPDATE `creature_model_info` SET `bounding_radius`=1.17695, `combat_reach`=4.890375 WHERE `modelid`=31633; -- 31633
UPDATE `creature_model_info` SET `bounding_radius`=0.916125, `combat_reach`=3.9375 WHERE `modelid`=31634; -- 31634
UPDATE `creature_model_info` SET `bounding_radius`=0.9747, `combat_reach`=4.05 WHERE `modelid`=31629; -- 31629
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=36822; -- 36822
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725, `gender`=1 WHERE `modelid`=36831; -- 36831
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725, `gender`=0 WHERE `modelid`=36829; -- 36829
UPDATE `creature_model_info` SET `bounding_radius`=0.389, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=36821; -- 36821
UPDATE `creature_model_info` SET `bounding_radius`=0.375, `combat_reach`=0.75 WHERE `modelid`=28067; -- 28067
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=36830; -- 36830
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=9434; -- 9434
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=14425; -- 14425
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=11638; -- 11638
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=11639; -- 11639
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=9439; -- 9439
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=12371; -- 12371
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=9440; -- 9440
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=9423; -- 9423
UPDATE `creature_model_info` SET `bounding_radius`=0.4164, `combat_reach`=1.8 WHERE `modelid`=15637; -- 15637
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=30213; -- 30213
UPDATE `creature_model_info` SET `bounding_radius`=1.016542, `combat_reach`=0.8644068 WHERE `modelid`=6807; -- 6807
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=18649; -- 18649
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725, `gender`=0 WHERE `modelid`=32920; -- 32920
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `modelid`=19176; -- 19176
UPDATE `creature_model_info` SET `bounding_radius`=5, `combat_reach`=7.5, `gender`=0 WHERE `modelid`=21302; -- 21302
UPDATE `creature_model_info` SET `bounding_radius`=0.08000001, `combat_reach`=0.5 WHERE `modelid`=37912; -- 37912
UPDATE `creature_model_info` SET `bounding_radius`=0.1427288, `combat_reach`=0.6116949 WHERE `modelid`=9535; -- 9535
UPDATE `creature_model_info` SET `bounding_radius`=2.5002, `combat_reach`=4.5, `gender`=0 WHERE `modelid`=25109; -- 25109
UPDATE `creature_model_info` SET `bounding_radius`=0.015278, `combat_reach`=0.05 WHERE `modelid`=33845; -- 33845
UPDATE `creature_model_info` SET `bounding_radius`=0.85, `combat_reach`=1.0625 WHERE `modelid`=999; -- 999
UPDATE `creature_model_info` SET `bounding_radius`=0.714, `combat_reach`=2.25, `gender`=1 WHERE `modelid`=974; -- 974
UPDATE `creature_model_info` SET `bounding_radius`=0.520833, `combat_reach`=2.25, `gender`=0 WHERE `modelid`=31571; -- 31571
UPDATE `creature_model_info` SET `bounding_radius`=1.955, `combat_reach`=1.725 WHERE `modelid`=10889; -- 10889
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=10 WHERE `modelid`=35065; -- 35065
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=6 WHERE `modelid`=35460; -- 35460
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=6 WHERE `modelid`=35462; -- 35462
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=6 WHERE `modelid`=35461; -- 35461
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=1, `gender`=0 WHERE `modelid`=31572; -- 31572
UPDATE `creature_model_info` SET `bounding_radius`=6, `combat_reach`=6, `gender`=0 WHERE `modelid`=34250; -- 34250
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=29418; -- 29418
UPDATE `creature_model_info` SET `bounding_radius`=0.754339, `combat_reach`=0.6050848 WHERE `modelid`=513; -- 513
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=10750; -- 10750

UPDATE `npc_text` SET `text0_0`='Why you''re just the $c I was looking for! I''m testing a new rocket-powered flying device, and I need your help!

Just take one of these harnesses and put it on under your armor.  Hit the button on the side, and BOOM, off you go.

Don''t go trying to steal my work though. Each of these babies is fitted with a Transponster 8000 linked to the one in my hand. If you get too far from me the Transponster will shut down the main rocket and you''ll be unable to lift off until you return.

Now where did I put those liability forms?' WHERE `ID`=15134; -- 15134
UPDATE `npc_text` SET `text0_0`='<The night elf turns to you as you approach and reaches for your hand.>

It is too late for me. We earned our fate with our pride. Go... others may have made it. Save any that you can.

<Her grip loosens as life slips from her.>', `text0_1`='<The night elf turns to you as you approach and reaches for your hand.>

It is too late for me. We earned our fate with our pride. Go... others may have made it. Save any that you can.

<Her grip loosens as life slips from her.>' WHERE `ID`=14295; -- 14295
UPDATE `npc_text` SET `text0_0`='So this... is what it feels like... to be mortal?

<The question trails off as Mavralyn''s breathing stops.>', `text0_1`='So this... is what it feels like... to be mortal?

<The question trails off as Mavralyn''s breathing stops.>' WHERE `ID`=14296; -- 14296
UPDATE `npc_text` SET `text0_0`='<A whisper escapes Shaldyn''s throat as you approach.>

Help... please.', `text0_1`='<A whisper escapes Shaldyn''s throat as you approach.>

Help... please.' WHERE `ID`=14299; -- 14299
UPDATE `npc_text` SET `text0_0`='Dat not true. Me just want to nibble. I don''t eat all. Ok, maybe I eat da little ones.$B$BDey so delicious!
' WHERE `ID`=9355; -- 9355
UPDATE `npc_text` SET `text0_0`='<Lump shrugs.>$B$BYou bring da war to da Boulderfist. We put it in da stew.
' WHERE `ID`=9356; -- 9356
UPDATE `npc_text` SET `text0_0`='Weary of one of your demonic charges? Hoping for one with a more pleasing name?

For a price, I can assist you in the obliteration of a current minion so that you may summon an entirely new one...', `text0_1`='Weary of one of your demonic charges? Hoping for one with a more pleasing name?

For a price, I can assist you in the obliteration of a current minion so that you may summon an entirely new one...' WHERE `ID`=17816; -- 17816
UPDATE `npc_text` SET `text0_0`='The Earthen Ring have set up portals to various regions of the world on a small lake islet northwest of Stormwind Keep.

There are representatives from the Baradin Wardens there as well, offering transport to Tol Barad.', `text0_1`='The Earthen Ring have set up portals to various regions of the world on a small lake islet northwest of Stormwind Keep.

There are representatives from the Baradin Wardens there as well, offering transport to Tol Barad.' WHERE `ID`=17200; -- 17200
UPDATE `npc_text` SET `WDBVerified`=15050 WHERE `ID`=9195; -- 9195


DELETE FROM `gossip_menu_option` WHERE (`menu_id`=12343 AND `id`=0) OR (`menu_id`=12299 AND `id`=0) OR (`menu_id`=12253 AND `id`=0) OR (`menu_id`=12253 AND `id`=1) OR (`menu_id`=8540 AND `id`=0) OR (`menu_id`=4354 AND `id`=0) OR (`menu_id`=12231 AND `id`=0) OR (`menu_id`=7809 AND `id`=1) OR (`menu_id`=11557 AND `id`=0) OR (`menu_id`=11558 AND `id`=0) OR (`menu_id`=11560 AND `id`=0) OR (`menu_id`=11559 AND `id`=0) OR (`menu_id`=11562 AND `id`=0) OR (`menu_id`=12669 AND `id`=2) OR (`menu_id`=12826 AND `id`=0) OR (`menu_id`=12827 AND `id`=0) OR (`menu_id`=12828 AND `id`=0) OR (`menu_id`=11351 AND `id`=0) OR (`menu_id`=10808 AND `id`=0) OR (`menu_id`=4105 AND `id`=0) OR (`menu_id`=4105 AND `id`=1) OR (`menu_id`=5123 AND `id`=0) OR (`menu_id`=5123 AND `id`=1) OR (`menu_id`=4529 AND `id`=1) OR (`menu_id`=12266 AND `id`=0) OR (`menu_id`=12266 AND `id`=1) OR (`menu_id`=12165 AND `id`=0) OR (`menu_id`=12247 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(12343, 0, 0, 'I am ready, Uchek!', 0, 0, ''), -- -Unknown-
(12299, 0, 0, 'I''m ready to press up the canyon. Is the Gob Squad prepped?', 0, 0, ''), -- -Unknown-
(12253, 0, 0, 'Dismissed!', 0, 0, ''), -- -Unknown-
(12253, 1, 0, '<Make a series of complicated hand gestures.>', 0, 0, ''), -- -Unknown-
(8540, 0, 3, 'I would like to train.', 0, 0, ''), -- Lorokeem
(4354, 0, 3, 'Train me.', 0, 0, ''), -- Josef Gregorian
(12231, 0, 0, 'I''m ready. Let''s go!', 0, 0, ''), -- -Unknown-
(7809, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- -Unknown-
(11557, 0, 0, 'How did you get down here?', 0, 0, ''), -- -Unknown-
(11558, 0, 0, 'Tell us about your captors, Gurrok.', 0, 0, ''), -- -Unknown-
(11560, 0, 0, 'How were you able to get away?', 0, 0, ''), -- -Unknown-
(11559, 0, 0, 'Did you see Nazgrim and his troops?', 0, 0, ''), -- -Unknown-
(11562, 0, 0, 'What is there to report of these beasts, Gurrok? How do we defeat them?', 0, 0, ''), -- -Unknown-
(12669, 2, 0, 'Can you take me to the Ramparts?', 0, 0, ''), -- -Unknown-
(12826, 0, 0, 'Malfurion, a coward? How can you justify that?', 0, 0, ''), -- -Unknown-
(12827, 0, 0, 'Malfurion is not here. Only me.', 0, 0, ''), -- -Unknown-
(12828, 0, 0, 'Tauren arch druid? Do you mean Hamuul?', 0, 0, ''), -- -Unknown-
(11351, 0, 0, 'You''re with the Earthen Ring, I just figured you''d have a water breathing spell like the rest of them.', 0, 0, ''), -- -Unknown-
(10808, 0, 0, 'Up, Up & Away!', 0, 0, ''), -- -Unknown-
(4105, 0, 3, 'Teach me the ways of the spirits.', 0, 0, ''), -- -Unknown-
(4105, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(5123, 0, 3, 'Teach me the ways of the spirits.', 0, 0, ''), -- Sagorne Creststrider
(5123, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- Sagorne Creststrider
(4529, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(12266, 0, 0, 'End the orc''s misery.', 0, 0, ''), -- -Unknown-
(12266, 1, 0, 'Help the injured orc up.', 0, 0, ''), -- -Unknown-
(12165, 0, 0, 'Let the gryphon smell the piece of charred highland birch.', 0, 0, ''), -- -Unknown-
(12247, 0, 0, 'Not backing out, are you?', 0, 0, ''); -- -Unknown-

UPDATE `gossip_menu_option` SET `option_text`='<Read on, if you dare...>' WHERE `menu_id`=7984 AND `id`=0; -- The Codex of Blood
UPDATE `gossip_menu_option` SET `option_text`='<Continue reading...>' WHERE `menu_id`=7985 AND `id`=0; -- The Codex of Blood
UPDATE `gossip_menu_option` SET `option_text`='<Continue reading...>' WHERE `menu_id`=7986 AND `id`=0; -- The Codex of Blood
UPDATE `gossip_menu_option` SET `option_text`='<Continue reading...>' WHERE `menu_id`=7987 AND `id`=0; -- The Codex of Blood
UPDATE `gossip_menu_option` SET `option_text`='<Continue reading...>' WHERE `menu_id`=7988 AND `id`=0; -- The Codex of Blood

UPDATE `quest_template` SET `OfferRewardText`='You continue to amaze me!  Tell you what... why don''t you come back tomorrow and we''ll let the rope cool off for now?$B$B<Khatie laughs.>$B$BThank you so much, $N!' WHERE `Id`=11066; -- Wrangle More Aether Rays!
UPDATE `quest_template` SET `OfferRewardText`='Outstanding work, $N!  I''d have you back up in the air and bombing them again, but policy around here is to make sure that our pilots get plenty of R&R.  Sorry, I don''t make the rules, but I sure as hell enforce them!$B$BSee you again tomorrow, Ace!' WHERE `Id`=11023; -- Bomb Them Again!
UPDATE `quest_template` SET `OfferRewardText`='You continue to amaze us with your acumen as concerns the relics, $N.  May we suggest that you practice with the relics at least once a day to maintain such a sharp edge to your mental acuity?' WHERE `Id`=11080; -- The Relic's Emanation
UPDATE `quest_template` SET `OfferRewardText`='We wish the process of creating a darkrune was foolproof, $N.  Alas, it is not.  Please, take this bag and look in it to see what we''ve wrought today.  We couldn''t bear to look ourselves.$B$BRemember, if you get a darkrune, take it to Gahk to exchange for a crystalforged darkrune.  Then you''ll be able to once more bring down Shartuul''s transporter.$B$BOh, and $N, don''t forget to come by again tomorrow and pickup the banishing crystal.  There are always more demons to be banished.' WHERE `Id`=11051; -- Banish More Demons
UPDATE `quest_template` SET `OfferRewardText`='I do not believe my eyes!  If this is some sort of trick, I will flay the flesh from your bones, $c!$B$BQuickly, let me examine these priceless artifacts before you break them with your clumsy hands.' WHERE `Id`=10524; -- Thunderlord Clan Artifacts
UPDATE `quest_template` SET `OfferRewardText`='The back of the Draenethyst Mine?  The Bloodmaul clan must have stolen it from the Bladespire ogres.$B$BBah!  That is too far away... too deep into Bloodmaul territory for me to travel.$B$BBut you.  You know the path.  You will go there in my stead!' WHERE `Id`=10525; -- Vision Guide
UPDATE `quest_template` SET `OfferRewardText`='Now I am impressed!  Do you have any idea how many others died attempting to retrieve all of these relics?$B$BWe are fortunate to have you working with us here, $N.  Even if you are a bit slow.$B$BYou must allow me to reward your dedication to our cause.  Choose, but choose wisely.  When you are done, I will hand over the artifacts to appease the ghosts of Thunderlord Stronghold.' WHERE `Id`=10526; -- The Thunderspike
UPDATE `quest_template` SET `OfferRewardText`='That is great news, great news indeed, $N. I could not have asked for a better outcome. Your service to our people is most greatly appreciated; choose one of the following heroic items.$B$BYour name will forever be remembered in our peoples'' hearts.' WHERE `Id`=10821; -- You're Fired!
UPDATE `quest_template` SET `OfferRewardText`='It is a relief that Wildlord Antelarion has sent you to us.  The problem is much worse than first we feared!$B$B' WHERE `Id`=10910; -- Death's Door
UPDATE `quest_template` SET `OfferRewardText`='You are truly an amazing $r!  If I thought that we were indebted to you before, then now there is simply no way in which we could ever repay you.$B$BBut we''ll give it a try.  Thank you, $g hero : heroine; of Evergrove!' WHERE `Id`=10912; -- The Hound-Master
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  They''re even sharper than I expected them to be.  I''ll pack them in the snow until the bomb is ready.$b$bLet''s see... what next...
' WHERE `Id`=12045; -- Shaved Ice
UPDATE `quest_template` SET `OfferRewardText`='Good... good... these should do fine.  The shrapnel bombs are almost finished. $b$bWait... what happened to my ice shards?  Narf told me shards from those elementals should be enchanted, but they''re melting just like the ones hanging from Narf''s grumpy chin!' WHERE `Id`=12046; -- Soft Packaging
UPDATE `quest_template` SET `OfferRewardText`='Ha ha!  One of those meat slabs landed clear over here!  Nice work there!
' WHERE `Id`=12049; -- Hard to Swallow
UPDATE `quest_template` SET `OfferRewardText`='My name is Tyrygosa, of the brood of Malygos, but most call me ''Tyri.'' My companion is the paladin Jorad Mace.$B$BWord of these strange dragonkin has already traveled far and I fear that too many will rush to exploit them for profit without realizing the true nature of what they''re dealing with. With your help, we''re hoping to gain insight into these creatures before others discover their presence.' WHERE `Id`=10281; -- Formal Introductions
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  That''ll show Kael''thas not to underestimate our power.' WHERE `Id`=10658; -- More Sunfury Signets
UPDATE `quest_template` SET `OfferRewardText`='The corpse matches the description of Krun Spinebreaker, Hellfire Citadel''s assassin.  As you turn the body over, you notice a stone axe protruding from his back.' WHERE `Id`=9400; -- The Assassin
UPDATE `quest_template` SET `OfferRewardText`='For generations to come, they will sing songs of this day, $N - songs of your valor. I wish Thrall had been here to celebrate this victory with us. The Legion is undone - and Hellfire now belongs to the Horde once again! There may yet be hope for this ravaged world - and our peoples'' place within it. $B$BLok''tar ogar!  
' WHERE `Id`=10136; -- Cruel's Intentions
UPDATE `quest_template` SET `OfferRewardText`='Bravo, $N. I knew you would be victorious! The Legion''s defeat draws ever nearer! 
' WHERE `Id`=10389; -- The Agony and the Darkness
UPDATE `quest_template` SET `OfferRewardText`='I understand Nazgrel''s request, $c.  Say no more.' WHERE `Id`=9405; -- The Warchief's Mandate
UPDATE `quest_template` SET `OfferRewardText`='Who are you to walk in here unannounced?  I ordered my men to stay their hand only because Ryga sensed that the spirits were with you.  $B$BSpeak freely, but choose your words wisely.  We rarely trust strangers this close to the Citadel.' WHERE `Id`=9410; -- A Spirit Guide
UPDATE `quest_template` SET `OfferRewardText`='You''re certain of this?  This is big news, $N.  These orcs can surely help our cause both here and at home!' WHERE `Id`=9406; -- The Mag'har
UPDATE `quest_template` SET `OfferRewardText`='You obtained the reading?  Excellent -- I am sure this data will prove invaluable to our research.  I will disseminate it to Apothecaries Zelana and Albreck.$B$BYou should be proud, $N.  Your strength and bravery is unquestionable... as is your service to the Horde.' WHERE `Id`=10838; -- The Demoniac Scryer
UPDATE `quest_template` SET `OfferRewardText`='It is good to hear of all your moves against the fel orcs, $N.  The apothecaries have spent much time and resources studying the cause of their corruption, and although such information is invaluable... my orc blood burns to strike a severe blow against these betrayers!$B$BListen close, and I will explain my task...' WHERE `Id`=10875; -- Report to Nazgrel
UPDATE `quest_template` SET `OfferRewardText`='Keep your head down, or it''s likely to end up on the wrong end of an arrow.' WHERE `Id`=29688; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hurray, you found some parts!  Now maybe I can get my shredder working.  If I earn enough money I might be able to get back to Booty Bay. $B$BI sure hope my cousin, Screed Luckheed, crashes that stupid zeppelin of his.  I can''t believe he tricked me into coming to Outland.' WHERE `Id`=10236; -- Outland Sucks!
UPDATE `quest_template` SET `OfferRewardText`='Thank you for saving my peons.  Now maybe I can get them to fix my shredder with those parts you found, earn some money and get out of Outland.  I can''t wait to be back in Booty Bay.' WHERE `Id`=10238; -- How to Serve Goblins
UPDATE `quest_template` SET `OfferRewardText`='You killed them all?  I wish that would ease my mind, but these guys seem to have a habit of coming back from the dead.$b$bAh, but what''s that you have?$b$bYou say it might keep them out of Booty Bay?$b$bNow we are talking!$b$bOh right, I said I had a reward for you?  Sure... Just give me a minute to find it.' WHERE `Id`=29252; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It seems da spirits be wit'' you, $c.' WHERE `Id`=29220; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thanks for da help, $n.  Dese serpents, dere don''t seem to be an end to dem.' WHERE `Id`=29221; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Venoxis... Dis can''t be good, $n.' WHERE `Id`=29222; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We know all about the serpents, $n.  But there is something else out there lurking...  The jungle has come to life, $c!' WHERE `Id`=29223; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Shhh.... ' WHERE `Id`=29226; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Looks like the real Mauti was tracking Grent Direhammer all along.  Clever cat.' WHERE `Id`=29227; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We be here... Da hunter, he be in da cave.  Da beast... Sometin'' ain''t right about her...' WHERE `Id`=29228; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='High Priestess Kilnara be behind dis abomination.  Dis ain''t looking good.  We should see to da dwarf and then make our way to see what other trouble be going on.' WHERE `Id`=29230; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh... Me spine...  Brother, is that you?' WHERE `Id`=29231; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Th-thank ye, $g lad:lass;.$b$bPappy...?$b$b$bIs that...$b$b$b$byou...$b$b$b$b$b...' WHERE `Id`=29232; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The panther cub looks at you with a look in its eyes that says, \"Will you be my new $g dad:mom;?\"' WHERE `Id`=29268; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='First we had snakes, then we had panthers, now we have blood-thirsty trolls.$b$bIt''s good that you''re here, $c, there are plenty of trolls to kill.' WHERE `Id`=29233; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These trolls just keep coming, $n.  I love it!$b$bLike I said before, the Darkspear emissary was here for a small amount of time.  He warned us and then left.$b$bThysta, our Wind Rider Master, helped get him to his next destination, maybe she can help you out.$b$bHappy hunting, $n.' WHERE `Id`=29235; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Dis don''t look very good, $n.' WHERE `Id`=29236; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We done enough, $n.  We can''t keep fighting dese zombies.  We need to figure out da source of dis voodoo.  An'' I tink I know where to start...' WHERE `Id`=29237; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Zanzil... Dis is all startin'' to come together now.  If I can find my contact den we can formulate a plan of attack.  A way to end dis madness.' WHERE `Id`=29238; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I be tellin'' Baron Revilgaz about da Zandalar threat now...' WHERE `Id`=29250; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Dere ya have it, $n.  It look like we gonna lead an assault on da Gurubashi in Zul''Gurub.$b$bDese be dire times for us Darkspear.  But dey be even more dire for da Zandalar.  Dey goin'' too far.$b$bYa been good to Bwemba, hopefully ya gonna continue to help out all of Stranglethorn.$b$bSpirits be wit'' ya, $n.' WHERE `Id`=29219; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Loot at last!' WHERE `Id`=29253; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Very well done, $N.  Defeating Omen sent his spirit back to the waters of Elune''ara.  Although the beast himself is blessed by Elune and so cannot die, his anger will subside for another year.$B$BYour victory is a celebration, $n--a celebration of the might of Omen, of you and your allies, and of the peace you have given this tragic hero of our past.' WHERE `Id`=8868; -- Elune's Blessing
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=13026; -- Bluewolf the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=13021; -- Igasho the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=29736; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=29737; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8643; -- Highpeak the Elder
UPDATE `quest_template` SET `OfferRewardText`='Welcome, $N.  Are you here to join in the festivities?' WHERE `Id`=8874; -- The Lunar Festival
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8648; -- Darkcore the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8642; -- Silvervein the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8653; -- Goldwell the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8651; -- Ironband the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8683; -- Dawnstrider the Elder
UPDATE `quest_template` SET `OfferRewardText`='The stuff of life is doomed to die and return to the earth, but the stuff of spirit lives eternal.  I bid you well, $N, and offer you this token...' WHERE `Id`=8636; -- Rumblerock the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8649; -- Stormbrow the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8675; -- Skychaser the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8716; -- Starglade the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8647; -- Bellowrage the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8674; -- Winterhoof the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8721; -- Starweave the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8723; -- Nightwind the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=29739; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=29740; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8672; -- Stonespire the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8720; -- Skygleam the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8725; -- Riversong the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8717; -- Moonwarden the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8670; -- Runetotem the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8686; -- High Mountain the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8673; -- Bloodhoof the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8682; -- Skyseer the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8724; -- Morningdew the Elder
UPDATE `quest_template` SET `OfferRewardText`='All tol''vir were once as I am. Now, my people are flesh and blood, and more in need of the wisdom of the ages than ever before.' WHERE `Id`=29742; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='All tol''vir were once as I am. Now, my people are flesh and blood, and more in need of the wisdom of the ages than ever before.' WHERE `Id`=29741; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8685; -- Mistwalker the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8679; -- Grimtotem the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=8678; -- Wheathoof the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8726; -- Brightspear the Elder
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=8718; -- Bladeswift the Elder
UPDATE `quest_template` SET `OfferRewardText`='It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token...' WHERE `Id`=8866; -- Bronzebeard the Elder
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=29735; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...' WHERE `Id`=29734; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?' WHERE `Id`=29738; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='What is this? A pearl? Much more I think.$B$BThis is exactly what I was looking for, thank you for bringing it to me.' WHERE `Id`=25442; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The battles of ages past are seeds from which legends grow.  Yours is a time of heroes, young one.  May your legend take root, thrive.$B$BI bid you well, $N, and offer you this token...' WHERE `Id`=8635; -- Splitrock the Elder
UPDATE `quest_template` SET `OfferRewardText`='Welcome, $N.  Are you here to join in the festivities?' WHERE `Id`=8872; -- The Lunar Festival
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c. Some of them surely would not have made it without you.$B$BWe''ll be taking the wounded to the main building once we have them all safely back in town. Perhaps you can meet us there later?' WHERE `Id`=13518; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I''m really sorry about this, $r. He''s always getting himself into trouble. I just wish I could put a leash on him...
' WHERE `Id`=9923; -- HELP!
UPDATE `quest_template` SET `OfferRewardText`='<Mo''mor looks perplexed.>$B$BSo, a new tribe of ogres is forcing the Boulderfist further and further south. This is quite troubling. We must first deal with the situation closest to home...
' WHERE `Id`=9920; -- Mo'mor the Breaker
UPDATE `quest_template` SET `OfferRewardText`='Thank you so much, $N. His mother will deal with him from now on. ' WHERE `Id`=9924; -- Corki's Gone Missing Again!
UPDATE `quest_template` SET `OfferRewardText`='If the great Malfurion requires my presence, it is my duty to heed his call.  It is also my duty to protect these ruins, however.$B$BPerhaps you''ll help me fulfill both my obligations, $N?' WHERE `Id`=13579; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It''s become clear, $N.  The elements won''t be calm until Malfurion succeeds in returning balance to the land.  Aiding him is, in a way, also fulfilling my task.' WHERE `Id`=13584; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I have much respect for the great Malfurion Stormrage.  I cannot, however, leave my people in their time of need.  Maybe there is a way we can both help each other.' WHERE `Id`=13575; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The element of fire is unique in that attacking it indiscriminately can often lead it to spreading further... succeeding only in agitating its flames.$B$BWe are wiser than that, $N.  We are going to dispose of it properly.' WHERE `Id`=13576; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We are in your debt, $N.  Perhaps now, with Malfurion''s help, we can save the rest of Darkshore.' WHERE `Id`=13580; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent job, $N!  Selenn''s help in holding back the vortex will be invaluable.' WHERE `Id`=13585; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is fortunate news, $N.  The furbolg may seem little more than a savage race, but their ties to the land are ancient and their shamans are second to none.' WHERE `Id`=13581; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A terrible sadness surrounds the creature.  Its eyes stare beyond you as you approach it.' WHERE `Id`=13577; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I see you have already mastered Immolation! I look forward to instructing you in the future. Do not forget to return for further lessons as you grow in power.' WHERE `Id`=26914; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The wildkin were once the guardians of the land.  It is good to hear they haven''t all forgotten their old ways.' WHERE `Id`=13583; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Malfurion calls?  Yes... I can hear his voice through the dream...' WHERE `Id`=13586; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I thank you, $N.  You''ve given me my freedom.  Let''s see what we can do for your world now.' WHERE `Id`=13587; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''re just in time, $N.  I don''t know how much longer we can hold. ' WHERE `Id`=13940; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We are turning the tides, $N.  We should be able to contain further damage.$B$BMuch work still remains to be done.' WHERE `Id`=13588; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Aye, you''re the fine $g lad : lass; who saved my Hollee!$B$BWell, I''ve got a fitting reward for you here, I''m sure. We really can''t thank you enough for bringing her to safety, $N.' WHERE `Id`=13605; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So much death and pain. Can there be any doubt that there is more yet to come?$B$BAll I wish to do is move onward into the Goddess''s embrace as do these others.$B$BBut first, let us see if we can keep even more misery and destruction from being spread.' WHERE `Id`=13547; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I cannot thank you enough, $N. Now we''ll have a fighting chance to retake the ruins as soon as we are in better health.' WHERE `Id`=13542; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yalda? The spirits of others from the Ruins of Auberdine?$B$B<The druid ponders what you''ve conveyed about your adventure in the ruins.>$B$BI remember them all. They will be dearly missed, but they have moved on into the Goddess''s embrace and that is for the best.$B$BAnde''thoras-ethil, may your troubles be diminished, $N!' WHERE `Id`=13558; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Without those three coaxing them, perhaps the flow of elementals into the Ruins of Auberdine will be stemmed.$B$BThank you, $N.' WHERE `Id`=13543; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='There is no time to waste, $c.  It is taking every ounce of my power to keep Darkshore''s entire landmass from being shattered and swept into the ocean... you must listen to me very carefully.' WHERE `Id`=13573; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='If Malfurion placed his trust in you, then so shall I.  You''ll find that our enemies greatly outnumber us this far south.$B$BWhere brute force and numbers fail us, strategy and guile will prove our biggest advantages.' WHERE `Id`=13902; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='At the very least, these creatures'' suffering has ended. Let us hope their sacrifice will bring a stop to further pain.' WHERE `Id`=25447; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c. That''s one less distraction for me.' WHERE `Id`=25448; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These lands will finally be free of the foulness of the harpies. I cannot thank you enough.' WHERE `Id`=25654; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This development worries me greatly. This has happened before...' WHERE `Id`=25394; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The spirits of these guardians will return in time, $n. You''ve freed them to move on in nature''s cycle.$B$BNow it falls to us to make sure that cycle is free of corruption and needless suffering.' WHERE `Id`=25397; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The mountain giants are precious allies of our race. We must stop this corruption before it claims any more creatures of the forest.' WHERE `Id`=25396; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your bravery has seen us through! The Emerald Nightmare has been shut out from this land.$B$BThe fate of the dragon Taerar worries me...but there is much work still to be done. I cannot afford to dwell on it.' WHERE `Id`=25398; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Telaron has already sent word of you, $n. I''m interested in seeing if you''re half as skilled as he claims.$B$BI am fighting a war on multiple fronts, while keeping our currently held areas properly defended, as well as overseeing the instruction of our youngest sentinels. If you''re a decent fighter, there will be plenty for you to do.' WHERE `Id`=26402; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These foul things will be driven back into the sea. I hope you''re ready.' WHERE `Id`=25304; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Your valor was mentioned in my briefings, $n. I commend you.' WHERE `Id`=25399; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good riddance to foul creatures. May the naga slither back into the sea and never return.$B$BYou''ve proven yourself on the battlefield, $n. I would ask more assistance of you in defending our lands here.' WHERE `Id`=25458; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good to see you here. Estulan is being...difficult. We''re going to have to deal with these ogres for Lady Shandris on our own until he decides to deal with us.' WHERE `Id`=25463; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Wisps have always lived in harmony with night elves, and we depend on them for many things. These little guys you sent back, for example, will be helping us with some new construction and repairs.$B$BReady for more?' WHERE `Id`=25407; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Is that it? Let me see here...' WHERE `Id`=25401; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It sounds like there were more than we thought! Thank you for your brave work, $n.' WHERE `Id`=25400; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A properly trained squadron of hippogryph riders can take on nearly any opposing force. Feathermoon Stronghold will be much safer with these noble beasts on our side.' WHERE `Id`=25409; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ahh, the orb I mentioned before. A decent reason to disturb me.' WHERE `Id`=25402; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Wonderful! Everything''s going according to plan. Lady Shandris will be pleased.' WHERE `Id`=25406; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='They may not look it, but some treants grow to be ancient protectors. We could use a few more of those around here...' WHERE `Id`=25410; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, you''ve brought him. Now I merely have to suffer the fate of speaking to him.' WHERE `Id`=25403; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''re back. What did Estulan say?' WHERE `Id`=25208; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Welcome back from the battle! The Twilight''s Hammer have been disgraced in the eyes of the Gordunni, and driven from Feralas.$B$BWe''ve shown the glory of the Alliance in full force today! Be proud!' WHERE `Id`=25333; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Welcome to Shadebough, $n. Lady Shandris sent word of you.' WHERE `Id`=26574; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Falfindel Waywarder sent you? Good! We need your help, now!' WHERE `Id`=25481; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A boat? Yes, you can have this last one.' WHERE `Id`=25486; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Aren''t they adorable? The babies are even cuter.' WHERE `Id`=25468; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent!$B$B$n, you''ve helped bolster our forces here, and you''ve saved many of these forest creatures from the Horde as well. With our army now ready, Feathermoon will stand against all threats, Horde or otherwise!$B$BOn behalf of Lady Feathermoon, I''d like to award you with this weapon, fit for a Sentinel.' WHERE `Id`=25469; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $n. I didn''t think those gnolls would give you much trouble.' WHERE `Id`=25426; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It''s good to see you back. We''ve learned more about the ogre situation.' WHERE `Id`=25432; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good work, and good riddance. I hope we never have to see another ogre here again!' WHERE `Id`=25434; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Perfect. Any gnolls left will be simple prey, lost in the woods.$B$BHeh...here, soldier, take your reward before I get distracted. We''ve got other threats to deal with.' WHERE `Id`=25427; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done once again, $n. Yet another threat removed from Feralas.' WHERE `Id`=25433; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These are silithid after all...I wasn''t sure, having never seen one in person. Gilneas had its problems, but at least we didn''t have these monstrosities running around!' WHERE `Id`=25429; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, $n! You''re proving very valuable to securing this area for the Alliance.' WHERE `Id`=25431; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I didn''t want to scare you, but this is a grave situation. If the portal at Dream Bough was sealed, and the corruption is still spreading...' WHERE `Id`=25436; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve come.$B$BI am ashamed to ask this of you, $c, but I''ve ran from him long enough. Taerar must be stopped.' WHERE `Id`=25437; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It is done.$B$BThis land that has suffered so much can rest now.' WHERE `Id`=25379; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='To be drawn into a fight between dragons...I don''t know if you''re blessed or cursed.$B$BLady Shandris has heard of all you''ve done, and has personally sent this reward for your bravery. I''m glad you came back in one piece to receive it.' WHERE `Id`=25438; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Scrumdillyriffic!  These cores will keep me working for some time.  Add to that the benefit of there now being fewer elementals along the coast, and I might no longer cry myself to sleep at the prospect of having set up shop in perhaps the worst place imaginable!$B$BThank you, $N, for your efforts on my behalf.  While it certainly straps me financially to do this, allow me to show you some gratitude you may understand and appreciate... loot!' WHERE `Id`=25466; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Splendifimous!  Not only am I glad to see that you''ve returned with the residue, but also with all your major appendages intact!  That is, well, there was never any danger in using the Ultra-Shrinker, now was there!$B$BI do appreciate your effort on my behalf, $N.  Truly, you are a friend to goblins everywhere.  Accept this as a token of my appreciation!' WHERE `Id`=25465; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Did you stop and examine the texture of these hides?  Properly treated, these hides could very well be stronger than iron.  Not many people know about these hides, and that in combination with the vast treating solutions I know will allow me to potentially make items with a true mark of quality... thanks to you, of course!$B$BAnd now, please choose from what I am able to offer you for your service!' WHERE `Id`=25449; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You place the egg... distress beacon... inside the chicken... homing robot.$B$BHums and whirs are heard from inside the robot as it struggles to stand up.  After the robot comes to life, Oglethorpe''s voice is heard once more, but now from inside the robot:$B$B\"OOX-22/FE is working at least, but it needs major repairs!  It is much too heavy for you to carry it... but I think I have an idea.  Are you up for watching over it some more?\"' WHERE `Id`=25475; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent, excellent!  These are going to work out incredibly well - I can already tell that they''re going to be much harder when properly cured.$B$BThanks again for your help $N.  Here - please take one of my latest creations.' WHERE `Id`=25450; -- -Unknown-

UPDATE `quest_template` SET `RequestItemsText`='You''re doing great work for us, $N.  I want you to know that we really appreciate everything that you''re doing to keep us stocked up in fresh mounts!' WHERE `Id`=11066; -- Wrangle More Aether Rays!
UPDATE `quest_template` SET `RequestItemsText`='A seasoned pro such as yourself shouldn''t be having any difficulty banishing demons.  You''re not having any difficulties, right, $r?' WHERE `Id`=11051; -- Banish More Demons
UPDATE `quest_template` SET `RequestItemsText`='What did you see?  Tell me, I must know where it is!' WHERE `Id`=10525; -- Vision Guide
UPDATE `quest_template` SET `RequestItemsText`='The significance of these artifacts eludes you, I am sure.$B$BWhen we have all five, our right to the ownership of Thunderlord Stronghold will be secured through the appeasement of its dead spirits.$B$BDo you begin to grasp now why this is so important?  Do you understand why I have little patience for niceties?' WHERE `Id`=10526; -- The Thunderspike
UPDATE `quest_template` SET `RequestItemsText`='It is over then?  Has the danger at Death''s Door been averted?' WHERE `Id`=10912; -- The Hound-Master
UPDATE `quest_template` SET `RequestItemsText`='Even the smallest contribution to our cause is noted, $N.  Our enemies are many, but we shall prevail!' WHERE `Id`=10659; -- Single Sunfury Signet
UPDATE `quest_template` SET `RequestItemsText`='Do you have the reading?  Has your mission with the Demoniac Scryer been successful?' WHERE `Id`=10838; -- The Demoniac Scryer
UPDATE `quest_template` SET `RequestItemsText`='Have you faced the Hand of Kargath, $N?' WHERE `Id`=10876; -- The Foot of the Citadel
UPDATE `quest_template` SET `RequestItemsText`='Did you find some spare parts for my shredder?  I really want to get it fixed so I can get back to mining.  I have to make a living somehow, if only so I can buy a one-way ticket back to Booty Bay.  ' WHERE `Id`=10236; -- Outland Sucks!
UPDATE `quest_template` SET `RequestItemsText`='Did you find something, $n?' WHERE `Id`=29252; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Dis won''t be no easy task, $n.' WHERE `Id`=29219; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do ya have me boots?  Grant a dwarf his last request will ya?' WHERE `Id`=29232; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes, $c? Have you found something?' WHERE `Id`=25442; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you all that is required?' WHERE `Id`=27933; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Well? I don''t have all day.' WHERE `Id`=26564; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Is he dead? Do you have the cudgel?' WHERE `Id`=26625; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Are those spare parts you have there?' WHERE `Id`=27126; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve returned. Did you recover the middle fragment?' WHERE `Id`=27938; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Those plans are the key to everything.' WHERE `Id`=27005; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You have what I asked for?' WHERE `Id`=26427; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We must make haste if we''re to rebuild the World Pillar, $N.' WHERE `Id`=26256; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<You scroll through the notes, trying to put them in order.>' WHERE `Id`=27100; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='If the snares are good enough for stone drakes, they might work on Abyssion.' WHERE `Id`=26768; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you obtain the meat?' WHERE `Id`=26766; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You return, $N.  Did you obtain the blood?' WHERE `Id`=26259; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='$N!  You''ve returned!' WHERE `Id`=26876; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''re alive. This is good.$B$BIs the gemstone with you?' WHERE `Id`=26871; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you done this favor that I asked of you? Did you bring the crystals?' WHERE `Id`=26437; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Pebble looks up at you expectantly.>' WHERE `Id`=26440; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Pebble starts to look up at you, eyes glowing faintly, growing rounder and larger every moment.>' WHERE `Id`=26507; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you find a mallet?' WHERE `Id`=26658; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I await your proof, $r...' WHERE `Id`=26585; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Is it done, $r?' WHERE `Id`=28824; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You have the heart yet?' WHERE `Id`=27135; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<The spirit fades in and out of your vision, as though here and elsewhere at the same time.>' WHERE `Id`=25663; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Thisalee is cleaning her nails with a dagger. She looks up at you expectantly.>' WHERE `Id`=25656; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get a hold of some plates? Did you have to kill anyone to get them?$B$BI hope so.' WHERE `Id`=25758; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Oh good.$B$BYou''re still alive.' WHERE `Id`=25761; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='If a minor dragon like Sethria can cause us so many problems, I hate to see what else Twilight''s Hammer has in store...' WHERE `Id`=25776; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<You pour over the Apocrypha, trying to make sense of it all.>' WHERE `Id`=25303; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I am at my wit''s end, $N! Aessina is silent.$B$BHave you found something? What is this?' WHERE `Id`=25372; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get the papers?' WHERE `Id`=25274; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You will address me with the respect I am due, recruit.' WHERE `Id`=25276; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes, $Ndamus?' WHERE `Id`=25224; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get it?' WHERE `Id`=25494; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you succeed in your task, $N?' WHERE `Id`=25554; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve returned, $r.' WHERE `Id`=25552; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the shells? Hand them here!$B$B...Gently!' WHERE `Id`=27586; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Show me the insignias you''ve collected, $c.' WHERE `Id`=27751; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<You gather up the fresh carcass.>' WHERE `Id`=28041; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Hungry.' WHERE `Id`=27750; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have it? Yes? The fate of the Dragonmaw depends on the Demon Chain!' WHERE `Id`=28123; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I wonder what happens when you douse an elemental with that stuff. Jumbo-super-bonfire-elemental? I''m thinkin'' so. We''ll have to try.' WHERE `Id`=27302; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you recover the hearts?' WHERE `Id`=27303; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Shhh, $N! Listen. Listen...' WHERE `Id`=28149; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This is good, $N. With heroes like you stirring up trouble out here, we''ll keep the cult distracted from our main invasion.$B$BDo you have a disguise?' WHERE `Id`=28147; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='De light of souls. Does you have it, mon?' WHERE `Id`=28166; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Show me the insignias you''ve collected, $c.' WHERE `Id`=28871; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Twilight dragons were born of these disgusting experiments of theirs. The Twilight''s Hammer have gone too far. Deathwing has gone too far.' WHERE `Id`=27508; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You know, we could probably just blow the gates, but knowing our demoman, we''re probably better off dodging the risk.' WHERE `Id`=28090; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Welcome, $r.' WHERE `Id`=28093; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to tame a sea turtle, $n?' WHERE `Id`=25477; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You got food for the troops, $r?' WHERE `Id`=25943; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to gather up our gear, $r?' WHERE `Id`=25944; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find To''gun?' WHERE `Id`=29641; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is it you have there?' WHERE `Id`=29445; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get the dust, $N?' WHERE `Id`=13359; -- Where Dragons Fell
UPDATE `quest_template` SET `RequestItemsText`='We very much appreciate what you have done for the Timbermaw, $N.  Your continued efforts will surely earn my tribe''s trust and respect.' WHERE `Id`=28522; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Welcome to the hot springs. What''ve you got there?' WHERE `Id`=28524; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I hope you found something, $N. The Winterfall are becoming increasingly aggressive!' WHERE `Id`=28467; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You got de bear? Let''s see de bear.' WHERE `Id`=28540; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We''ll see what happens when the Winterfall don''t get their firewater!' WHERE `Id`=28469; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What did you find?' WHERE `Id`=28530; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Now, what''s this, $N?' WHERE `Id`=28471; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is it you carry, $c?' WHERE `Id`=28472; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Maenius was a powerful mage and an honorable elf.  His spirit did not deserve such an ignoble fate.' WHERE `Id`=28518; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you find the shade? Was anything left to indicate its origin?' WHERE `Id`=28537; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve obtained it, I assume?' WHERE `Id`=29659; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I see you have obtained the frond. Very good.' WHERE `Id`=29667; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='$R has book? ' WHERE `Id`=27107; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is it you have there?' WHERE `Id`=29456; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is it you have there?' WHERE `Id`=29458; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you manage to get any of that soothsayer''s dust?' WHERE `Id`=29510; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find a place for that new banner of yours?' WHERE `Id`=29520; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''re back! Even better, you''re not dead! Well done. Better than anyone else so far.' WHERE `Id`=29535; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you bring me the cloth?' WHERE `Id`=29655; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you bring the ember? Caza''rez deserves a warrior''s death.' WHERE `Id`=29650; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you proof of Kargath Bladefist''s defeat?' WHERE `Id`=29653; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How many piles were you able to take?' WHERE `Id`=29593; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to dispose of the foul creature?' WHERE `Id`=29530; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This operation depends on your success, $N.' WHERE `Id`=29527; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You have that magic flask, yet?  It will mean the world to little Torkus Jr.' WHERE `Id`=11030; -- Our Boy Wants To Be A Skyguard Ranger
UPDATE `quest_template` SET `RequestItemsText`='You wrangle me some aether rays yet?  You look like you might have some skill with rope, so it shouldn''t take you too long.' WHERE `Id`=11065; -- Wrangle Some Aether Rays!
UPDATE `quest_template` SET `RequestItemsText`='How fares yer mission, $N?  I needn''t tell ye how important this be ta our continued ability ta fly around up here.' WHERE `Id`=11078; -- To Rule The Skies
UPDATE `quest_template` SET `RequestItemsText`='If Taragaman is dead, show me his heart.' WHERE `Id`=26858; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the bindings?' WHERE `Id`=26862; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes?' WHERE `Id`=28330; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Well, now.$b$bWould ya look at that!?' WHERE `Id`=28633; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you find them, $N?  Were they salvageable?' WHERE `Id`=28498; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you retrieve the codex, $N?' WHERE `Id`=28500; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<The terminal whirrs as its mechanisms become active.>' WHERE `Id`=27760; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Hail, $N!' WHERE `Id`=28486; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes, $n?' WHERE `Id`=27176; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What have you found, $n?' WHERE `Id`=27517; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Any news, $n?' WHERE `Id`=27541; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='So?$b$bFind anything interesting?' WHERE `Id`=27549; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Find anything interesting, $n?' WHERE `Id`=27624; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You wipe away the sand from the hieroglyphs only for them to become covered in a new layer.  You''d best hurry.' WHERE `Id`=27623; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''re back, $N!' WHERE `Id`=27706; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This might be the map you''re after.' WHERE `Id`=27632; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I am glad to see you don''t think you''re above this sort of task.' WHERE `Id`=28200; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Dis new warlord must fall before da Zandalari foothold here becomes permanent.' WHERE `Id`=11196; -- TEMP X
UPDATE `quest_template` SET `RequestItemsText`='Have ya eliminated Hex Lord Malacrass?' WHERE `Id`=29186; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve returned, $N.  How did the operation go?' WHERE `Id`=27839; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you got the titan activation device, $n?' WHERE `Id`=27901; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Time to see if this old mechanism still works...' WHERE `Id`=27903; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you successful in your hunt?' WHERE `Id`=27928; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you captured zhe Desert Fox, $c?' WHERE `Id`=27939; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to recover the uniforms we need?' WHERE `Id`=27941; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Haff you brought me zhe idols, $r?' WHERE `Id`=27942; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Vell, little $gman:lady;? Vere you successful?' WHERE `Id`=27943; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find us some uniforms, $r?' WHERE `Id`=28194; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you got enough to fill my bucket, $n?' WHERE `Id`=28350; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find anything interesting, $n?' WHERE `Id`=28272; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The sooner we can break through our invasion portal, the better.' WHERE `Id`=29199; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''dya have there, $gfriend:young lady;?' WHERE `Id`=27179; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Is that blood dripping from your pack? I hope that it''s not yours.' WHERE `Id`=27501; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How many pendants do you have?' WHERE `Id`=27653; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the axe?' WHERE `Id`=27696; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How much do you think you can carry?' WHERE `Id`=27742; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I know, this isn''t the most desirable work, but can you really help but be curious about that shell? It''s immense. There has to be something more to it.' WHERE `Id`=25219; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='If only air weren''t so darn floaty! Or if only those water breathing spells came with stylish helmets! Either would do nicely.' WHERE `Id`=25218; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This slightly encrusted lock might still be functional.' WHERE `Id`=25377; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You examine the chain, hoping it can be restored.' WHERE `Id`=25419; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Dominic stares at you.>' WHERE `Id`=26996; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The earth speaks to us, $N.  It will not abandon us even in these perilous times.' WHERE `Id`=14283; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The caravan will be here shortly; do you have the newly tamed kodos I was asking for?' WHERE `Id`=5561; -- Kodo Roundup
UPDATE `quest_template` SET `RequestItemsText`='Have you collected the components I require?' WHERE `Id`=14257; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What have you learned, $c?' WHERE `Id`=14282; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The Burning Blade must not be allowed to succeed with their plan!' WHERE `Id`=14225; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What have you there, $c?' WHERE `Id`=14232; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Whatcha got there, $c?' WHERE `Id`=14254; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How is the search for swoops coming?' WHERE `Id`=14253; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Let''s have a look at those scorpion tails, friend.' WHERE `Id`=14251; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How''s the search for tail coming, $n?' WHERE `Id`=14252; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The statue stands expectantly.' WHERE `Id`=14219; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The brazier silently awaits an offering.' WHERE `Id`=14217; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you carry the essence, or did the task prove too difficult?' WHERE `Id`=27105; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How''s that fancy new lure comin'' along?' WHERE `Id`=29350; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you bring the materials I''ll need for your weapon?' WHERE `Id`=27397; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Greetings, $c. What brings you here?' WHERE `Id`=28152; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Is it done, $N?' WHERE `Id`=24616; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='These animals were once men, but they''ve turned into mindless beasts under the influence of the Twilight''s hammer. Do not hesitate to slay them all.' WHERE `Id`=25270; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We meet again, $c. You fight well! You carve a path of fear and confusion in your wake.$B$B<Lo''Gosh peers at you, expectantly.>' WHERE `Id`=25355; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you managed to deal with Alystros? The verdant keeper is very powerful.' WHERE `Id`=12456; -- The Plume of Alystros
UPDATE `quest_template` SET `RequestItemsText`='Do you have the soil? I''m having trouble staying together...hurry...' WHERE `Id`=25422; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you gathered it?' WHERE `Id`=25423; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Are you ready to return to Orgrimmar?' WHERE `Id`=26806; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Mok''ra, stranger. Are you here from Far Watch?' WHERE `Id`=13949; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Don''t be too harsh with our captive, he will still need his head attached to answer our questions.' WHERE `Id`=13961; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The creature doesn''t lift its head, but looks at you imploringly with large, watery eyes.' WHERE `Id`=13970; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Was that you I saw waving a gun around from the back of my last caravan?' WHERE `Id`=13975; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you exterminated the Vile Fin murlocs of the Dawning Isles?' WHERE `Id`=26998; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Is that my list of parts from Pozzik?' WHERE `Id`=25505; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We can get started as soon as you get everything that''s on the list.' WHERE `Id`=25516; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the Alliance''s proposal? What are they offering for the drilling rights?' WHERE `Id`=25757; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You already have all of that sunken treasure?' WHERE `Id`=25610; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''s going on? You gonna get me out of here?' WHERE `Id`=25628; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='A fresh heart, lungs, an'' liver be what we needin''. The ones from his cap''ns will have ta do though they all be likely picked.' WHERE `Id`=25661; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Ya gots to get me lotsa those carcasses, mon! We not be rid of his foolish spirit if ya don''t!' WHERE `Id`=25672; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you bring those reports?' WHERE `Id`=26807; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How''s that herb collection coming along?' WHERE `Id`=29514; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve returned, $N.' WHERE `Id`=26244; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Those plans are the key to everything.' WHERE `Id`=27004; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We cannot let the binding be interrupted. They need your help in the back rooms - please hurry.' WHERE `Id`=26875; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This is a sad task, $n, but necessary.' WHERE `Id`=25447; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We must not tolerate the infestation of our ancestor''s ruins by the harpies.' WHERE `Id`=25654; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The tears are among the very rocks that the giants themselves rise from. There should be loose ones near the base of these large monoliths.' WHERE `Id`=25396; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Has the general fallen?' WHERE `Id`=25458; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the orb?' WHERE `Id`=25401; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is that you''re holding?' WHERE `Id`=25402; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The manes aren''t just for trophies. If there''s to be slaughter, we may as well not let it be a total waste.' WHERE `Id`=25426; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How goes the hunt, $N?  Are you here to report your success?' WHERE `Id`=25429; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='While I could bore you with the technical details of the utility behind elemental cores, I will instead tempt you to completion of this important task by offering valuable coin and prizes for doing so.  Yon verily, are you finished?' WHERE `Id`=25466; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I had to tweak the thing to stop working on mountain giants. Even though I wasn''t the one running around zapping things, those night elves beat the copper out of me after they found those guys shrunk.' WHERE `Id`=25465; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='A stack of ten thick yeti hides will net you a choice of one of my crafted items.  Because I care about quality, I am able to ensure you''ll get a good item!$B$B' WHERE `Id`=25449; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You appear to have uncovered the wreckage of... a robotic chicken?  The voice from within the egg crackles to life again:$B$B\"Yes, excellent work!  This is indeed my homing robot, though my sensors indicate that it needs a jump start before it can fly back to Booty Bay for repairs.  Go ahead and place the beacon inside the rover - the beacon will take care of the rest!\"' WHERE `Id`=25475; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='These hides may not be as resilient as thorium, but they''re nice and supple.' WHERE `Id`=25450; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get the documents, $N?' WHERE `Id`=25296; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I need more powder! Get me more powder! More more more!' WHERE `Id`=28597; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Ain''t no problem a bomb can''t solve.' WHERE `Id`=28598; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How much were you able to recover?' WHERE `Id`=27177; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is this I keep hearing about the muck of the Verrall River?' WHERE `Id`=27538; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How many have you got so far?' WHERE `Id`=27814; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you found ''em yet?  This grain is pretty itchy.' WHERE `Id`=28234; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''s the tally?' WHERE `Id`=28210; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you succeed, $N?  I estimated your chances of survival at 68.5%.' WHERE `Id`=27777; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='It is good to see you once more, $N.' WHERE `Id`=28483; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to steal their arms?' WHERE `Id`=13206; -- Disarmament
UPDATE `quest_template` SET `RequestItemsText`='This is just the tip of the iceberg, so to speak.' WHERE `Id`=11262; -- Ingvar Must Die!
UPDATE `quest_template` SET `RequestItemsText`='Happy landings!' WHERE `Id`=29436; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve something for me, $glad : lass;?' WHERE `Id`=11098; -- To Skettis!
UPDATE `quest_template` SET `RequestItemsText`='You''re back!  Did your ray behave well?' WHERE `Id`=11093; -- Hungry Nether Rays
UPDATE `quest_template` SET `RequestItemsText`='You have the smell of Skettis on you!  Explain yourself!' WHERE `Id`=11024; -- An Ally in Lower City
UPDATE `quest_template` SET `RequestItemsText`='Have you finished collecting cactus apples?' WHERE `Id`=25136; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What?  Who are you?  Get away!$b$bOh, you''re the other mage, the new one, the one with the $g big arms: funny hair;.  Come on, let''s get to work.' WHERE `Id`=25138; -- -Unknown-
DELETE FROM `gameobject_template` WHERE `entry` IN (207362, 208967, 205969);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(207362, 22, 10126, 'Cauldron of Battle', '', '', '', 92612, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75, 0, 0, 0, 0, 0, 0, 0, 15211), -- -Unknown-
(208967, 3, 10684, 'Cache of the Fire Lord', '', '', '', 1634, 40061, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5, 0, 0, 0, 0, 0, 0, 0, 15211), -- -Unknown-
(205969, 5, 8620, 'Explorer''s League Banner', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15211); -- -Unknown-

UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=19020; -- Box of Assorted Parts
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142344; -- Artificial Extrapolator
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175085; -- The Sparklematic 5200
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142487; -- The Sparklematic 5200
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175084; -- The Sparklematic 5200
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=144179; -- Mailbox
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142476; -- Matrix Punchograph 3005-C
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142214; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142211; -- Gnome Face 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142212; -- Gnome Face 06
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142219; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142215; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142210; -- Gnome Face 02
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142213; -- Gnome Face 05
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142218; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142217; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142216; -- Button
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142209; -- Gnome Face 03
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=142208; -- Gnome Face 04
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=206837; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=69427; -- Bonfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179532; -- Warpwood Pod
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179528; -- Warpwood Pod
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179526; -- Warpwood Pod
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179533; -- Warpwood Pod
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176905; -- Smoldering Brazier
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176906; -- Smoldering Brazier
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179502; -- Doodad_CorruptedCrystalVine01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179559; -- Felvine Shard
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=193272; -- 193272
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179972; -- Stormwind Crate 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179977; -- General Lantern 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179969; -- Replace Crate 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179970; -- Replace Crate 02
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179967; -- Barrel 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179968; -- Haystack 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180050; -- Bread French Half
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180046; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180048; -- Mug Foam 01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175615; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175616; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175610; -- Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176944; -- Old Treasure Chest
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176487; -- The Deed to Tarren Mill
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177381; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175167; -- Viewing Room Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175619; -- Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177385; -- Torch
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175611; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175747; -- The Invasion of Draenor
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175614; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177378; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177382; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175620; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177380; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175618; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175737; -- The Seven Kingdoms
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177384; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175613; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175570; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175612; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177374; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175617; -- Iron Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179724; -- Doodad_PallyDoor01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177376; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177371; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177375; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177372; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177370; -- Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177373; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177377; -- Gate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177379; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175762; -- The Lich King Triumphant
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177383; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176486; -- The Deed to Southshore
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176544; -- Remains of Eva Sarkhoff
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175564; -- Brazier of the Herald
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=177387; -- Alchemy Lab
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175965; -- Frostwhisper's Embalming Fluid
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176484; -- The Deed to Brill
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=203009; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=190589; -- Flag of Ownership
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179485; -- Broken Trap
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179511; -- Knot's Ball and Chain
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179499; -- Ogre Tannin Basket
UPDATE `gameobject_template` SET `size`=3, `WDBVerified`=15211 WHERE `entry`=179512; -- Fixed Trap
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179564; -- Gordok Tribute
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192152; -- Big Berry Pie
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180875; -- Boss Fight Altar
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180874; -- Cluster Launcher
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=209058; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194099; -- Tiny Green Ragdoll
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=19021; -- Rusty Chest
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194349; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194817; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194815; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194812; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194811; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194819; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194813; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194814; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194816; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194818; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194575; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194991; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194633; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194649; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=3702; -- Armor Crate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=2552; -- Cauldron Steam
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180857; -- Firework Rocket, Type 1 White
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180860; -- Firework Rocket, Type 1 Red BIG
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180862; -- Firework Rocket, Type 1 Green BIG
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=204111; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=204112; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=204113; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=204114; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=207133; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=207131; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=207132; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=207134; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158563; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158565; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158566; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158568; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140396; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158556; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140393; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140392; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140390; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158555; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158559; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158560; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140391; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158561; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140395; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=164689; -- Monument of Franclorn Forgewright
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140394; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140399; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140403; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140402; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140398; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140397; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158583; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158585; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158584; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140401; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=140400; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=207103; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158552; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=170439; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174698; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174699; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174408; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174407; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174410; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174409; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185303; -- Fei Fei's Stash
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=181574; -- Glowing Crystal
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=178394; -- Alliance Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179004; -- Drek'Thar's Scrolls
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179005; -- Drek'Thar's Scrolls
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182536; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182535; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182538; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182579; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182082; -- The Ark of Ssslith
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182185; -- Daggerfen Poison Vial
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182146; -- Hut Fire (Large)
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180794; -- Journal of Jandice Barov
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182303; -- Wyvern Roost
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182307; -- Bomb Wagon
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182308; -- Bomb Wagon
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182304; -- Wyvern Roost
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182211; -- Fire (Small)
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182282; -- Wyvern Roost
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182274; -- Bomb Wagon
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182222; -- Bomb Wagon
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182267; -- Wyvern Roost
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182167; -- Fire Bomb
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182353; -- Warmaul Ogre Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182354; -- Kil'sorrow Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182519; -- Bufferlo's Crock Pot
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188426; -- Weapon Rack
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187105; -- Brazier
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188003; -- Caribou Trap
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=178365; -- Alliance Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187875; -- Salrand's Lockbox
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187850; -- Beryl Shield Detonator
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175467; -- Goodman's General Store
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175454; -- Elders' Square
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175455; -- Slaughter Square
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=181085; -- Stratholme Supply Crate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=175474; -- The Bayberry Inn
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=176631; -- Menethil's Gift
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=170440; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158576; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158571; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158547; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=158564; -- Bench
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=161456; -- Dark Keeper Portrait
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=164820; -- Dark Keeper Nameplate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187886; -- Burblegobble's Bauble
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187981; -- Wolf Droppings
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187903; -- Portable Oil Collector
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=161521; -- Research Equipment
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=202065; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=202165; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=169216; -- Preserved Threshadon Carcass
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=174682; -- Beware of Pterrordax
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184694; -- Zelana's Alchemy Set
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192261; -- Gravestone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185180; -- Mordiba's Cauldron
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192375; -- Horde Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192373; -- Horde Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192374; -- Horde Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192269; -- Horde Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=191622; -- Bonfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=193195; -- Pulsing Crystal
UPDATE `gameobject_template` SET `data0`=1634, `data20`=80, `WDBVerified`=15211 WHERE `entry`=202336; -- The Captain's Chest
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184062; -- Durnholde Keep
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184068; -- Tarren Mill
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184063; -- Southshore
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=110231; -- Bonfire
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=110232; -- Bonfire
UPDATE `gameobject_template` SET `data20`=80, `WDBVerified`=15211 WHERE `entry`=194957; -- Cache of Innovation
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194361; -- Chair
UPDATE `gameobject_template` SET `size`=1.21285, `WDBVerified`=15211 WHERE `entry`=194360; -- Chair
UPDATE `gameobject_template` SET `size`=1.21285, `WDBVerified`=15211 WHERE `entry`=194362; -- Chair
UPDATE `gameobject_template` SET `size`=1.21285, `WDBVerified`=15211 WHERE `entry`=194363; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194364; -- Chair
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194462; -- The Dragon Soul
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194339; -- Doodad_InstanceNewPortal_Green01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194338; -- Doodad_InstanceNewPortal_Green_Skull01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184685; -- Stonebreaker Brew
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184827; -- Legion Display Device
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185059; -- Fel Reaver Control Console
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185060; -- Fel Reaver Control Console
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185061; -- Fel Reaver Control Console
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184315; -- Bloodmaul Brew
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184214; -- Instance_Portal_Difficulty_1
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184213; -- Instance_Portal_Difficulty_0
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184319; -- Containment Core Security Field Beta
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184318; -- Containment Core Security Field Alpha
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183963; -- Stasis Pod Beta
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183362; -- Brazier
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183964; -- Stasis Pod Delta
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183363; -- Brazier
UPDATE `gameobject_template` SET `data10`=1, `WDBVerified`=15211 WHERE `entry`=184802; -- Warden's Shield
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183965; -- Stasis Pod Omega
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183961; -- Stasis Pod Alpha
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183962; -- Stasis Pod Gamma
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=182198; -- Arcane Container
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184217; -- Instance_Portal_Difficulty_0
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184218; -- Instance_Portal_Difficulty_1
UPDATE `gameobject_template` SET `displayId`=10478, `WDBVerified`=15211 WHERE `entry`=194279; -- Gnomeregan Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187669; -- Rubble
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184227; -- Instance_Portal_Difficulty_0
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184228; -- Instance_Portal_Difficulty_1
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=183788; -- Doodad_FactoryElevator01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184632; -- Mo'arg 1 Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184322; -- Mo'arg 2 Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184449; -- Nethermancer Encounter Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185015; -- Overcharged Manacell
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=185018; -- Charged Manacell
UPDATE `gameobject_template` SET `questItem1`=72663, `WDBVerified`=15211 WHERE `entry`=184465; -- Cache of the Legion
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184226; -- Instance_Portal_Difficulty_1
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=184225; -- Instance_Portal_Difficulty_0
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187687; -- Super Strong Metal Plate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187685; -- Super Strong Metal Plate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187686; -- Super Strong Metal Plate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187684; -- Super Strong Metal Plate
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188653; -- Bor's Hammer
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188655; -- The Kur Drakkar
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188656; -- The Serpent's Maw
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188657; -- Bor's Anvil
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187683; -- Pneumatic Tank Transjigamarig
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187707; -- Mist of the Ancient Mariner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187704; -- Kvaldir Inferno
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187774; -- Warsong Land Mine
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=192451; -- Horde Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188177; -- Doodad_InstancePortal_PurpleDifficultyIcon02
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187770; -- Doodad_SunwellRaid_Gate_04
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188064; -- Asylum Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188065; -- Assembly Chamber Door
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188165; -- Doodad_Kael_Explode_FX_Left01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188166; -- Doodad_Kael_Explode_FX_Right01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187979; -- Doodad_SunwellRaid_Gate_02
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187896; -- Doodad_SunwellRaid_Gate_05
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188178; -- Doodad_InstancePortal_PurpleDifficultyIcon01
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188171; -- Meeting Stone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=187578; -- Scrying Orb
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188415; -- Orb of the Blue Flight
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180456; -- Lesser Wind Stone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180466; -- Greater Wind Stone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180518; -- Lesser Wind Stone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180461; -- Wind Stone
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=164877; -- Freezing Trap III
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=188173; -- Escape to the Isle of Quel'Danas
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=180091; -- Mine Banner
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=179697; -- Arena Treasure Chest
UPDATE `gameobject_template` SET `WDBVerified`=15211 WHERE `entry`=194152; -- Signal Fire

DELETE FROM `creature_model_info` WHERE `modelid`=29422;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`) VALUES
(29422, 0.4513886, 1.95, 0); -- 29422

UPDATE `creature_model_info` SET `bounding_radius`=0.075, `combat_reach`=0.15 WHERE `modelid`=24719; -- 24719
UPDATE `creature_model_info` SET `bounding_radius`=0.7056, `combat_reach`=0.6 WHERE `modelid`=503; -- 503
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=38286; -- 38286
UPDATE `creature_model_info` SET `bounding_radius`=0.2832, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=32397; -- 32397
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=32395; -- 32395
UPDATE `creature_model_info` SET `bounding_radius`=0.3672, `combat_reach`=1.8, `gender`=0 WHERE `modelid`=32396; -- 32396
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725, `gender`=0 WHERE `modelid`=33962; -- 33962
UPDATE `creature_model_info` SET `bounding_radius`=0.7639, `combat_reach`=2.5 WHERE `modelid`=36529; -- 36529
UPDATE `creature_model_info` SET `bounding_radius`=0.3825, `combat_reach`=1.875 WHERE `modelid`=21698; -- 21698
UPDATE `creature_model_info` SET `bounding_radius`=0.17, `combat_reach`=1 WHERE `modelid`=1269; -- 1269
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=32546; -- 32546
UPDATE `creature_model_info` SET `bounding_radius`=0.7288136 WHERE `modelid`=30212; -- 30212
UPDATE `creature_model_info` SET `bounding_radius`=0.7254238 WHERE `modelid`=30211; -- 30211
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=30107; -- 30107
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=6852; -- 6852
UPDATE `creature_model_info` SET `bounding_radius`=0.48, `combat_reach`=2.4 WHERE `modelid`=28417; -- 28417
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29799; -- 29799
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29798; -- 29798
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29801; -- 29801
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29800; -- 29800
UPDATE `creature_model_info` SET `bounding_radius`=0.1, `combat_reach`=0.125 WHERE `modelid`=5560; -- 5560
UPDATE `creature_model_info` SET `bounding_radius`=0.1850254, `combat_reach`=0.7929661 WHERE `modelid`=1955; -- 1955
UPDATE `creature_model_info` SET `bounding_radius`=0.155, `combat_reach`=0.5 WHERE `modelid`=25390; -- 25390
UPDATE `creature_model_info` SET `bounding_radius`=0.217, `combat_reach`=0.7 WHERE `modelid`=25391; -- 25391
UPDATE `creature_model_info` SET `bounding_radius`=0.220678, `combat_reach`=0.5044068 WHERE `modelid`=6368; -- 6368
UPDATE `creature_model_info` SET `bounding_radius`=0.7322034 WHERE `modelid`=30213; -- 30213
UPDATE `creature_model_info` SET `bounding_radius`=0.203339 WHERE `modelid`=30301; -- 30301
UPDATE `creature_model_info` SET `bounding_radius`=1.05, `combat_reach`=0.875 WHERE `modelid`=18156; -- 18156
UPDATE `creature_model_info` SET `bounding_radius`=0.93, `combat_reach`=3 WHERE `modelid`=25630; -- 25630
UPDATE `creature_model_info` SET `bounding_radius`=1.3, `combat_reach`=1.625 WHERE `modelid`=6211; -- 6211
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.2 WHERE `modelid`=27358; -- 27358
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=27099; -- 27099
UPDATE `creature_model_info` SET `bounding_radius`=0.4166664, `combat_reach`=1.8 WHERE `modelid`=27100; -- 27100
UPDATE `creature_model_info` SET `bounding_radius`=1.023435, `combat_reach`=4.2525 WHERE `modelid`=31633; -- 31633
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=37461; -- 37461
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=30577; -- 30577
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=30579; -- 30579
UPDATE `creature_model_info` SET `bounding_radius`=0.93, `combat_reach`=3, `gender`=1 WHERE `modelid`=24808; -- 24808
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=21675; -- 21675
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=4540; -- 4540
UPDATE `creature_model_info` SET `bounding_radius`=0.986, `combat_reach`=1.2325 WHERE `modelid`=1000; -- 1000
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=4370; -- 4370
UPDATE `creature_model_info` SET `bounding_radius`=1.173, `combat_reach`=1.46625 WHERE `modelid`=641; -- 641
UPDATE `creature_model_info` SET `bounding_radius`=0.9775, `combat_reach`=1.221875 WHERE `modelid`=999; -- 999
UPDATE `creature_model_info` SET `bounding_radius`=0.5508475, `combat_reach`=0.5508475 WHERE `modelid`=1742; -- 1742
UPDATE `creature_model_info` SET `bounding_radius`=1.1925, `combat_reach`=2.25 WHERE `modelid`=14935; -- 14935
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=22910; -- 22910
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=34971; -- 34971
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=30912; -- 30912
UPDATE `creature_model_info` SET `bounding_radius`=0.2295, `combat_reach`=1.5 WHERE `modelid`=9021; -- 9021
UPDATE `creature_model_info` SET `bounding_radius`=1.072881, `combat_reach`=0.8940678 WHERE `modelid`=604; -- 604
UPDATE `creature_model_info` SET `bounding_radius`=1.065254, `combat_reach`=0.8877119 WHERE `modelid`=447; -- 447
UPDATE `creature_model_info` SET `bounding_radius`=0.3, `combat_reach`=0.9 WHERE `modelid`=13096; -- 13096
UPDATE `creature_model_info` SET `bounding_radius`=2.09855, `combat_reach`=3.525, `gender`=0 WHERE `modelid`=13130; -- 13130
UPDATE `creature_model_info` SET `bounding_radius`=2.35, `combat_reach`=3.525, `gender`=0 WHERE `modelid`=13132; -- 13132
UPDATE `creature_model_info` SET `bounding_radius`=2.09855, `combat_reach`=3.525, `gender`=0 WHERE `modelid`=13093; -- 13093
UPDATE `creature_model_info` SET `bounding_radius`=1.2502, `combat_reach`=2.1, `gender`=0 WHERE `modelid`=14406; -- 14406
UPDATE `creature_model_info` SET `bounding_radius`=0.696, `combat_reach`=3, `gender`=0 WHERE `modelid`=11382; -- 11382
UPDATE `creature_model_info` SET `bounding_radius`=1.10339, `combat_reach`=1.379237 WHERE `modelid`=32022; -- 32022
UPDATE `creature_model_info` SET `bounding_radius`=0.7118644, `combat_reach`=0.8898305 WHERE `modelid`=31269; -- 31269
UPDATE `creature_model_info` SET `bounding_radius`=1.8 WHERE `modelid`=30408; -- 30408
UPDATE `creature_model_info` SET `bounding_radius`=0.15278, `combat_reach`=0.5 WHERE `modelid`=33845; -- 33845
UPDATE `creature_model_info` SET `bounding_radius`=0.3262712, `combat_reach`=0.9788135 WHERE `modelid`=7470; -- 7470
UPDATE `creature_model_info` SET `bounding_radius`=0.7215458, `combat_reach`=0.6135594 WHERE `modelid`=607; -- 607
UPDATE `creature_model_info` SET `bounding_radius`=1.065254, `combat_reach`=0.8877119 WHERE `modelid`=855; -- 855
UPDATE `creature_model_info` SET `bounding_radius`=0.2275, `combat_reach`=0.65 WHERE `modelid`=29056; -- 29056
UPDATE `creature_model_info` SET `bounding_radius`=0.882, `combat_reach`=0.75 WHERE `modelid`=6807; -- 6807
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=37691; -- 37691
UPDATE `creature_model_info` SET `bounding_radius`=0.5392, `combat_reach`=1.2 WHERE `modelid`=29057; -- 29057
UPDATE `creature_model_info` SET `bounding_radius`=1.56975, `combat_reach`=2.925 WHERE `modelid`=36123; -- 36123
UPDATE `creature_model_info` SET `bounding_radius`=0.28, `combat_reach`=0.8 WHERE `modelid`=36150; -- 36150
UPDATE `creature_model_info` SET `bounding_radius`=0.28, `combat_reach`=0.8 WHERE `modelid`=36148; -- 36148
UPDATE `creature_model_info` SET `bounding_radius`=0.28, `combat_reach`=0.8 WHERE `modelid`=36152; -- 36152
UPDATE `creature_model_info` SET `bounding_radius`=2.992, `combat_reach`=2.4 WHERE `modelid`=36519; -- 36519
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=4 WHERE `modelid`=36513; -- 36513
UPDATE `creature_model_info` SET `bounding_radius`=0.2325 WHERE `modelid`=30963; -- 30963
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=15580; -- 15580
UPDATE `creature_model_info` SET `bounding_radius`=0.389, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=29797; -- 29797
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29849; -- 29849
UPDATE `creature_model_info` SET `bounding_radius`=0.389, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=29848; -- 29848
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=29863; -- 29863
UPDATE `creature_model_info` SET `bounding_radius`=0.5610169, `combat_reach`=0.5610169 WHERE `modelid`=3006; -- 3006
UPDATE `creature_model_info` SET `bounding_radius`=0.1575, `combat_reach`=0.675 WHERE `modelid`=16724; -- 16724
UPDATE `creature_model_info` SET `combat_reach`=1.294068 WHERE `modelid`=2437; -- 2437
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=11452; -- 11452
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=13540; -- 13540
UPDATE `creature_model_info` SET `bounding_radius`=0.8725, `combat_reach`=3.75 WHERE `modelid`=13562; -- 13562
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=37536; -- 37536
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=9581; -- 9581
UPDATE `creature_model_info` SET `bounding_radius`=0.3817, `combat_reach`=1.65 WHERE `modelid`=13298; -- 13298
UPDATE `creature_model_info` SET `bounding_radius`=2, `combat_reach`=3 WHERE `modelid`=14112; -- 14112
UPDATE `creature_model_info` SET `bounding_radius`=0.4896, `combat_reach`=1.44 WHERE `modelid`=2289; -- 2289
UPDATE `creature_model_info` SET `combat_reach`=0.9 WHERE `modelid`=18933; -- 18933
UPDATE `creature_model_info` SET `bounding_radius`=0.21, `combat_reach`=0.9 WHERE `modelid`=4566; -- 4566
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18253; -- 18253
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18233; -- 18233
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18260; -- 18260
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18243; -- 18243
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=20310; -- 20310
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=18259; -- 18259
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=20311; -- 20311
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5 WHERE `modelid`=20305; -- 20305
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=30800; -- 30800
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=25932; -- 25932
UPDATE `creature_model_info` SET `bounding_radius`=4.5, `combat_reach`=6 WHERE `modelid`=23413; -- 23413
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `gender`=0 WHERE `modelid`=23412; -- 23412
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=23414; -- 23414
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=23383; -- 23383
UPDATE `creature_model_info` SET `bounding_radius`=4.89, `combat_reach`=4.5 WHERE `modelid`=37583; -- 37583
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=9430; -- 9430
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5 WHERE `modelid`=11308; -- 11308
UPDATE `creature_model_info` SET `bounding_radius`=0.26, `combat_reach`=1.875, `gender`=1 WHERE `modelid`=31100; -- 31100
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=31099; -- 31099
UPDATE `creature_model_info` SET `bounding_radius`=0.3825, `combat_reach`=1.875, `gender`=1 WHERE `modelid`=31101; -- 31101
UPDATE `creature_model_info` SET `bounding_radius`=2.6825, `combat_reach`=3.75 WHERE `modelid`=11318; -- 11318
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=26566; -- 26566
UPDATE `creature_model_info` SET `bounding_radius`=10, `combat_reach`=100 WHERE `modelid`=35268; -- 35268
UPDATE `creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=0.75, `gender`=0 WHERE `modelid`=34805; -- 34805
UPDATE `creature_model_info` SET `bounding_radius`=0.238, `combat_reach`=0.75, `gender`=1 WHERE `modelid`=32129; -- 32129
UPDATE `creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=0.625 WHERE `modelid`=32127; -- 32127
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=31461; -- 31461
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=31462; -- 31462
UPDATE `creature_model_info` SET `bounding_radius`=4.5, `combat_reach`=3.75 WHERE `modelid`=31488; -- 31488
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=31562; -- 31562
UPDATE `creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=2.5 WHERE `modelid`=9210; -- 9210
UPDATE `creature_model_info` SET `bounding_radius`=0.155, `combat_reach`=2.5 WHERE `modelid`=34264; -- 34264
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=34123; -- 34123
UPDATE `creature_model_info` SET `bounding_radius`=0.025, `combat_reach`=0.05 WHERE `modelid`=38498; -- 38498
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=34305; -- 34305
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.25, `gender`=0 WHERE `modelid`=4613; -- 4613
UPDATE `creature_model_info` SET `bounding_radius`=1.95, `combat_reach`=1.95 WHERE `modelid`=39456; -- 39456
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=29488; -- 29488
UPDATE `creature_model_info` SET `bounding_radius`=0.459, `combat_reach`=2.25 WHERE `modelid`=30478; -- 30478
UPDATE `creature_model_info` SET `bounding_radius`=0.558, `combat_reach`=2.25, `gender`=0 WHERE `modelid`=30530; -- 30530
UPDATE `creature_model_info` SET `bounding_radius`=0.5835, `combat_reach`=2.25, `gender`=0 WHERE `modelid`=30455; -- 30455
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=6.6 WHERE `modelid`=16206; -- 16206
UPDATE `creature_model_info` SET `bounding_radius`=0.354, `combat_reach`=2.25 WHERE `modelid`=30479; -- 30479
UPDATE `creature_model_info` SET `bounding_radius`=0.3978, `combat_reach`=1.95 WHERE `modelid`=56; -- 56
UPDATE `creature_model_info` SET `bounding_radius`=0.214, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=18; -- 18
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=18064; -- 18064
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=15374; -- 15374
UPDATE `creature_model_info` SET `bounding_radius`=0.91, `combat_reach`=1.365 WHERE `modelid`=19030; -- 19030
UPDATE `creature_model_info` SET `bounding_radius`=0.5425, `combat_reach`=1.75 WHERE `modelid`=26474; -- 26474
UPDATE `creature_model_info` SET `bounding_radius`=1.75, `combat_reach`=1.75, `gender`=0 WHERE `modelid`=28672; -- 28672
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=28621; -- 28621
UPDATE `creature_model_info` SET `bounding_radius`=0.236, `combat_reach`=1.5 WHERE `modelid`=6999; -- 6999
UPDATE `creature_model_info` SET `bounding_radius`=0.306, `combat_reach`=1.5 WHERE `modelid`=28717; -- 28717
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=10 WHERE `modelid`=1687; -- 1687
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=10 WHERE `modelid`=2717; -- 2717
UPDATE `creature_model_info` SET `bounding_radius`=1.333, `combat_reach`=8.6 WHERE `modelid`=28839; -- 28839
UPDATE `creature_model_info` SET `bounding_radius`=0.4284, `combat_reach`=2.1 WHERE `modelid`=28654; -- 28654
UPDATE `creature_model_info` SET `bounding_radius`=0.5745, `combat_reach`=2.25 WHERE `modelid`=28669; -- 28669
UPDATE `creature_model_info` SET `bounding_radius`=1.333, `combat_reach`=12.9 WHERE `modelid`=28838; -- 28838
UPDATE `creature_model_info` SET `bounding_radius`=0.7602, `combat_reach`=0.75 WHERE `modelid`=28833; -- 28833
UPDATE `creature_model_info` SET `bounding_radius`=0.3, `combat_reach`=0.5 WHERE `modelid`=28911; -- 28911
UPDATE `creature_model_info` SET `bounding_radius`=0.7602, `combat_reach`=0.75 WHERE `modelid`=28916; -- 28916
UPDATE `creature_model_info` SET `bounding_radius`=1.75, `combat_reach`=1.75 WHERE `modelid`=18957; -- 18957
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=20005; -- 20005
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=20465; -- 20465
UPDATE `creature_model_info` SET `bounding_radius`=4, `combat_reach`=8 WHERE `modelid`=20431; -- 20431
UPDATE `creature_model_info` SET `bounding_radius`=0.372, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=35619; -- 35619
UPDATE `creature_model_info` SET `bounding_radius`=0.208, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=35622; -- 35622
UPDATE `creature_model_info` SET `bounding_radius`=0.383, `combat_reach`=1.5, `gender`=0 WHERE `modelid`=35621; -- 35621
UPDATE `creature_model_info` SET `bounding_radius`=0.236, `combat_reach`=1.5, `gender`=1 WHERE `modelid`=35620; -- 35620
UPDATE `creature_model_info` SET `bounding_radius`=3, `combat_reach`=3 WHERE `modelid`=36688; -- 36688
UPDATE `creature_model_info` SET `gender`=0 WHERE `modelid`=2880; -- 2880
UPDATE `creature_model_info` SET `bounding_radius`=0.9, `combat_reach`=2.5, `gender`=0 WHERE `modelid`=21122; -- 21122
UPDATE `creature_model_info` SET `bounding_radius`=0.47875, `combat_reach`=1.875 WHERE `modelid`=21340; -- 21340
UPDATE `creature_model_info` SET `bounding_radius`=0.2325, `combat_reach`=0.75 WHERE `modelid`=28943; -- 28943
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=1.5 WHERE `modelid`=29040; -- 29040
UPDATE `creature_model_info` SET `bounding_radius`=0.1, `combat_reach`=0.5, `gender`=0 WHERE `modelid`=29005; -- 29005
UPDATE `creature_model_info` SET `bounding_radius`=0.093, `combat_reach`=0.3 WHERE `modelid`=28940; -- 28940
UPDATE `creature_model_info` SET `bounding_radius`=0.0775, `combat_reach`=0.75, `gender`=0 WHERE `modelid`=28942; -- 28942
UPDATE `creature_model_info` SET `bounding_radius`=0.3, `combat_reach`=1.5 WHERE `modelid`=29062; -- 29062
UPDATE `creature_model_info` SET `bounding_radius`=0.062, `combat_reach`=0.4, `gender`=1 WHERE `modelid`=28939; -- 28939
UPDATE `creature_model_info` SET `bounding_radius`=0.465 WHERE `modelid`=25755; -- 25755
UPDATE `creature_model_info` SET `bounding_radius`=0.558, `combat_reach`=2.25, `gender`=0 WHERE `modelid`=31661; -- 31661
UPDATE `creature_model_info` SET `bounding_radius`=0.558, `combat_reach`=2.25, `gender`=0 WHERE `modelid`=31662; -- 31662
UPDATE `creature_model_info` SET `bounding_radius`=0.558, `combat_reach`=2.25 WHERE `modelid`=16656; -- 16656
UPDATE `creature_model_info` SET `bounding_radius`=0.558, `combat_reach`=2.25 WHERE `modelid`=16657; -- 16657
UPDATE `creature_model_info` SET `bounding_radius`=0.3519, `combat_reach`=1.725 WHERE `modelid`=29903; -- 29903
UPDATE `creature_model_info` SET `bounding_radius`=0.375, `combat_reach`=7.5, `gender`=0 WHERE `modelid`=23305; -- 23305
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=23742; -- 23742
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=27593; -- 27593

DELETE FROM `npc_text` WHERE `ID` IN (16488, 18043, 18075, 16541, 16633, 14801, 17747, 17225, 18390, 15918, 17214, 15915, 15898, 17896, 18160, 18162, 18166, 18168, 18170, 18176, 18172, 17892, 18175, 17659, 15280, 18362, 16733, 16883, 15264, 15274, 15500, 15213, 18559, 14770, 14767, 14766, 14768, 14338, 14358, 16334, 16336, 16338, 16339, 16341, 16340, 16337, 16324, 6873, 6865, 6799, 6236, 6714, 6805, 6810, 6242, 6807, 6813, 6816, 6819, 6822, 6826, 6829, 6835, 16574, 18307, 2673, 16832, 16732, 15556, 15632, 15652, 15653, 15754, 15294, 15346, 15370, 15371, 15372, 15373, 15374, 15375, 15376, 15348, 15351, 15350, 15369, 15349, 15345, 15347, 18292, 15933, 15922, 16343, 17229, 17232, 17306, 17292, 17153, 17315, 17307, 17360, 17371, 17097, 17095, 17208, 17400, 17036, 17467, 17535, 18963, 18163, 18301, 14333, 18376, 17419, 18329, 18322, 18354, 13005, 13006);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
(16488, 'What shall the Light teach you?', 'What shall the Light teach you?', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16488
(18043, '', 'Your deeds shall live on forever in the memories of every blue dragon, $n.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18043
(18075, '<The staff pulsates with arcane energies.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18075
(16541, 'Are you ready to train, warrior?', 'Are you ready to train, warrior?', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16541
(16633, 'If only I could get to the Launch Bay. Gimme one, just one, of those beautiful airborne machines and I could retake Gnomeregan and scare the goggles off of B.E Barechus at the same time!$B$BIf you need another parachute, we''ve stored some in chests near the drop points.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16633
(14801, '', 'The whispering winds have made it known to me that a $r $c would come; that $ghe:she; would assist me where many others have failed.$b$bCould you be the one?', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14801
(17747, 'The magic of today pales in comparison to that of millennia past. Still, we Highborne know much of the arcane. Are you ready to learn?', 'The magic of today pales in comparison to that of millennia past. Still, we Highborne know much of the arcane. Are you ready to learn?', 7, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17747
(17225, 'Places like Uldaman hold secrets as to the mysteries of my people''s past!', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17225
(18390, 'This set up sure is hard work.', 'This set up sure is hard work.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18390
(15918, 'Pirates and centaurs and Grimtotem, oh my!$B$BAnd I think I saw something big fly overhead last night. It was so big it blocked out the moon!', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15918
(17214, '', 'May I suggest that you save us from the pirates, my dear $N?!', 0, 1, 6, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17214
(15915, 'Oh gosh! Oh golly! You''re gonna put out the fires and stop those pirates from getting on the Speedbarge, right?!!', '', 0, 1, 6, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15915
(15898, 'I owe you a debt that I can never repay, $N. Or, can''t I?$B$BHmm?', '', 0, 1, 6, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15898
(17896, '<The Arcane Guardian gestures towards the city''s center.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17896
(18160, 'Greetings, mage.  Shall I provide you with further insight into the world of magic?', 'Greetings, mage.  Shall I provide you with further insight into the world of magic?', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18160
(18162, 'I have no time for a sermon now, $c. Seek your knowledge elsewhere.', 'I have no time for a sermon now, $c. Seek your knowledge elsewhere.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18162
(18166, 'I apologize, $c. I mistook you for someone with a spine. Begone; our secrets are not for untrained ears.', 'I apologize, $c. I mistook you for someone with a spine. Begone; our secrets are not for untrained ears.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18166
(18168, 'We have little to discuss, $c. Perhaps you should seek other, more like-minded individuals.', 'We have little to discuss, $c. Perhaps you should seek other, more like-minded individuals.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18168
(18170, 'I train only warriors, $c. You''ll have to look elsewhere.', 'I train only warriors, $c. You''ll have to look elsewhere.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18170
(18176, 'It appears you took a wrong turn, $c.', 'It appears you took a wrong turn, $c.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18176
(18172, 'Ours is a path for those with an iron will and unfaltering resolve. You seem to possess none of these traits, $c.', 'Ours is a path for those with an iron will and unfaltering resolve. You seem to possess none of these traits, $c.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18172
(17892, 'My path is a dark and cursed one, $c. You do not wish to walk with me.', 'My path is a dark and cursed one, $c. You do not wish to walk with me.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17892
(18175, 'If you seek training, I cannot help you.', 'If you seek training, I cannot help you.', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18175
(17659, 'I cannot help you, $c.', 'I cannot help you, $c.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17659
(15280, 'No snooping around, friend.$B$BIf you''re looking to buy Crown holiday goods, you''ll have to do it at the Lovely Merchant in the city.', 'No snooping around, friend.$B$BIf you''re looking to buy Crown holiday goods, you''ll have to do it at the Lovely Merchant in the city.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15280
(18362, 'Hello and welcome to the Darkmoon Faire Staging Area.$b$bThe portal here will take you to the Darkmoon Faire.$b$bBut if you have any questions before you go, I can answer them.', 'Hello and welcome to the Darkmoon Faire Staging Area.$b$bThe portal here will take you to the Darkmoon Faire.$b$bBut if you have any questions before you go, I can answer them.', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18362
(16733, 'How did you manage to get here on foot alive? You must be quite the hero to brave Dire Maul.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16733
(16883, 'I heard ya comin'' a league away, mon. Maybe ya need some more trainin''?', 'I heard ya comin'' a league away, mon. Maybe ya need some more trainin''?', 1, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16883
(15264, 'I can''t help ya. Go talk ta Tunari if ya want priest trainin''.', 'I can''t help ya. Go talk ta Tunari if ya want priest trainin''.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15264
(15274, '', 'In tha chaos of battle, it''s tha balance of light and shadow that leads us ta victory.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15274
(15500, 'Dis is wild! Vol''jin''s not messin'' around. He''s going afta tha Sea Witch wit a vengeance.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15500
(15213, 'I told you what I know, now shove off!', '', 0, 1, 274, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15213
(18559, 'We waiting for tour guide.', 'We waiting for tour guide.', 0, 1, 1, 0, 0, 0, 0, 0, 'Tour guide taking forever...', 'Tour guide taking forever...', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18559
(14770, '', '<The shimmering vision does not acknowledge your presence. She is lost in her own world, reacting to events that played out thousands of years ago.>', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14770
(14767, '', 'I''ve got to keep the arcane wards charged.', 0, 1, 0, 0, 0, 0, 0, 0, '', 'My strength ... is beginning ... to falter. Kalytha, please tell me the Archmages have a backup plan...', 0, 1, 0, 0, 0, 0, 0, 0, '', 'I can''t maintain this shield much longer. Kalytha - are any of us going to survive this?', 0, 1, 0, 0, 0, 0, 0, 0, '', 'More of these creatures! Where are they coming from? What''s going on in the capital?', 0, 1, 0, 0, 0, 0, 0, 0, '', 'Kalytha! Hurry - Archmage Selwyn wanted to see you, she said it was urgent. Maybe we can win this thing?', 0, 2, 0, 0, 0, 0, 0, 0, '', 'It''s all I can do to keep these wards up. Find one of the Archmages, Kalytha! I feel like I''m about to collapse...', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14767
(14766, 'Kalytha - you''re still alive! Find some cover, there''s no end to these ... things!', '', 0, 1, 0, 0, 0, 0, 0, 0, 'Am I still bleeding? I can''t ... I can''t keep this up much longer. Have you seen any of the archmages?', '', 0, 1, 0, 0, 0, 0, 0, 0, 'Hmph. I suppose these are the consequences of magic. You reap what you sew ... Elune help us all.', '', 0, 1, 0, 0, 0, 0, 0, 0, 'Kalytha! Archmage Selwyn was looking for you. She should be nearby...', '', 0, 2, 0, 0, 0, 0, 0, 0, 'These creatures ... so many of them. So many dead! Look at Azshara burn. What have the highborne done?', '', 0, 1, 0, 0, 0, 0, 0, 0, 'Why didn''t I flee with the others? They''ve got the academy surrounded. We''re trapped here.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14766
(14768, '', 'Kalytha ... it is done. The Sarcen Stone is fully charged and is already diverting energy from the portal. Are you still the incredible swimmer I knew those many years ago? The stone must not be found by either the demons or our \"beloved\" Queen.$B$BSwim to the bottom of the lake, Kalytha, and bury the stone deep under the center arch. Hopefully the demonic invaders will not discover it when they raze the surrounding temple. Go!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14768
(14338, '<The orc''s lifeless body is no longer responsive....>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14338
(14358, '', 'Hurry, $c! There is no time to waste!$b$bSplintertree must not fall!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14358
(16334, 'Welcome to Grom''gol, $c.  Before we get off on the wrong foot, I''ll have you know that I won''t have slackers in my Base Camp.  I expect a healthy $r like you to pull your own weight around here.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16334
(16336, 'The trolls of Stranglethorn don''t take too kindly to us Darkspear.  I''m not afraid of no Bloodscalp or Skullsplitter, but still... Grom''gol''s high walls make me feel safe.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16336
(16338, '<The cauldron bubbles.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16338
(16339, '<The troll sings to himself and stares into the cauldron.  He appears to be injured.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16339
(16341, 'The great Rastakhan sends his greetings to you, member of the Horde.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16341
(16340, 'There''s a lot of money out there in that jungle, $r.  Can you see it?$b$bNo, it doesn''t look like gold or copper.  It looks like raptor hides, and mineral veins, and ancient troll artifacts.$b$bOK, maybe the mineral veins might look like gold or copper.$b$bBut still, you get my point, right?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16340
(16337, 'Maybe I wasn''t as safe as I thought I was here in Grom''gol.$b$bA troll''s gotta watch his neck wherever he goes.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16337
(16324, 'You wish to escape?  That is fine, but you must know some things first.$b$bStay away from the trolls.  They will not kill you, but they will trap you and bring you back here.$b$bSpeak with every raptor you see.  Not only can they teach you new abilities, but they will help you remember your progress and make your path out of Zul''Gurub much easier.$b$bYou already have a Dash ability - use it to get out of tight spots.$b$bOh... and stay out of the water.$b$bGood luck!', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16324
(6873, 'Frostwolf Keep lies in the south corner of Alterac Valley and protects Frostwolf Village, home of orc clan of the same name.  All Horde territories in Alterac Valley stem from this one place of power.$B$BFrostwolf Keep is intact.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6873
(6865, 'Vanndar Stormpike is the general of the Alliance military in Alterac, and directs his forces from Dun Baldar.$B$BIf he is defeated then the Alliance will surely lose the battle for Alterac.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6865
(6799, 'The Stormpike Aid Station is in Dun Baldar, right outside the Dun Baldar barracks.$B$BThe Alliance currently controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6799
(6236, 'The Stormpike Graveyard is cut into the mountains, across the bridge east of Dun Baldar.$B$BThe Alliance currently controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6236
(6714, 'The Stonehearth Graveyard lies east of the Stonehearth Outpost in the Field of Strife.$B$BThe Alliance currently controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6714
(6805, 'The Snowfall Graveyard lies high atop a hill in the Field of Strife, east of Winterax Hold.$B$BNeither side controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6805
(6810, 'The Iceblood Graveyard is on the south side of the Field of Strife, east of the Iceblood Tower.$B$BThe Horde currently controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6810
(6242, 'The Frostwolf Graveyard is along the side of the road, not far north of Frostwolf Village.$B$BThe Horde currently controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6242
(6807, 'The Frostwolf Relief Hut lies in Frostwolf Keep, south of the Frostwolf Towers.$B$BThe Horde controls it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6807
(6813, 'The Dun Baldar South Bunker protects the south and east flanks of Dun Baldar.$B$BIt is controlled by the Alliance.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6813
(6816, 'The Dun Baldar North Bunker protects the eastern entrance to Dun Baldar.$B$BIt is controlled by the Alliance.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6816
(6819, 'The Icewing Bunker holds the pass between Alliance territory and the Field of Strife.$B$BIt is controlled by the Alliance.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6819
(6822, 'The Stonehearth Bunker protects the eastern flank of the Field of Strife.$B$BIt is controlled by the Alliance.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6822
(6826, 'The West Frostwolf Tower protects the gate between Frostwolf Village and Frostwolf Keep.$B$BIt is controlled by the Horde.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6826
(6829, 'Tower Point East holds the pass between the Field of Strife and Horde territories to the south.$B$BIt is controlled by the Horde.The East Frostwolf Tower protects the gate between Frostwolf Village and Frostwolf Keep.$B$BIt is controlled by the Horde.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6829
(6835, 'The Iceblood Tower protects the Iceblood Garrison from the southeast.$B$BIt is controlled by the Horde.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 6835
(16574, '', 'Welcome to Nethergarde, $c.  Call me \"Mama,\" I''m here to take care of you.', 7, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16574
(18307, 'You don''t have the slightest idea how to operate the various mechanisms on this device, yet you are filled with a feeling of familiarity that you can''t seem to shake off.$B$BIt''s probably best to just leave it alone.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18307
(2673, 'I am a mage of great power, I have spent my days studying the mind and the memory as it pertains to learning and the retention of learned abilities. I would even now be perfecting my studies if not for the great voices that came to me in the night, informing me that my services were required. I will be here for only a short time offering my ability to wipe your talents for free. Soon I will leave again, and you will once more be stuck with whatever choices you make.', 'I am a mage of great power, I have spent my days studying the mind and the memory as it pertains to learning and the retention of learned abilities. I would even now be perfecting my studies if not for the great voices that came to me in the night, informing me that my services were required. I will be here for only a short time offering my ability to wipe your talents for free. Soon I will leave again, and you will once more be stuck with whatever choices you make.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 2673
(16832, 'For a small donation, I can train you in the priestly arts.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16832
(16732, 'Hm?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16732
(15556, '', 'This was going to be a walk in the park until that airhead over there came out of nowhere with an army of gnomes.$B$BGallywix will have my head if we let these creepy runts one-up us here.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15556
(15632, 'We are here to pay respect to the great forest, and take part in the wonder of the Earth Mother''s gifts.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15632
(15652, '', 'The Gordunni Ogres have blighted this land long enough. We are here to take this land and its resources for the Horde.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15652
(15653, '', 'The Stonemaul clan serves the Horde!$B$BDuring the founding of Orgrimmar, when Kalimdor was being tamed as our people''s homeland, the hero Rexxar defeated the chief of the Stonemaul ogre clan.$B$BThey have served the Horde ever since, and I''ve called them in here to do the heavy lifting against the Gordunni clan.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15653
(15754, '', 'I''m here to study the ways of the muisek spirits, the wild magic. Witch Doctor Uzeri sent me here to start practicing with the lesser creatures of the forest.', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15754
(15294, 'Save me!  I''ve dropped my belongings into the hot springs.$b$bMy gowns are in there!', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15294
(15346, 'My patron requests your presence.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15346
(15370, '', 'Un''Goro Crater serves a very specific purpose, $N.  It is now time for you to learn that purpose.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15370
(15371, '', 'I am Nablya, apprentice to Khaz''goroth and envoy to Un''Goro Crater.  I am known as the Watcher.$b$bI stand here in the place of my master, who has since left Azeroth.  He once stood in this very spot when he shaped many of his creations.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15371
(15372, '', 'I am observing.  It is my charge to watch over Un''Goro, and I do so from this spot.$b$bI am also performing tests, and recording the results.  These tests allow me to observe that which most interests me.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15372
(15373, '', 'Simple stimulus-response tests.  Normally my kind does not interfere with the matters of Azeroth, but here in Un''Goro, we are free to take a more direct approach.  As Un''Goro is the experimental ground of the Titans, it is our right to do so.$b$bFor example, say Khaz''goroth wants to know what happens when one of his creations is exposed to a sulfurous hot spring.  He could wait for millenia, observing, and waiting for the creature to accidentally stumble and fall in.  Or, he could place the creature in the water himself.$b$bIn Un''Goro, we may do so.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15373
(15374, '', 'Not exactly.  In fact, many of the creatures here in the crater existed long before my master arrived... but some did not.$b$bNevertheless, we observe them all, without prejudice.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15374
(15375, '', 'When the cataclysm struck Azeroth, it disrupted the cloaking mechanism that kept this terrace hidden.  At that point, it was only a matter of time until the intelligent races discovered me here.$b$bThis was a scenario that, quite honestly, we did not foresee.  It required us to perform some new tests.  And you, $n, are my test subject.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15375
(15376, '', 'I am not authorized to answer that question.  I am, however, permitted to offer you a suggestion:$b$bSeek out Brann Bronzebeard.$b$bHe has already learned much of what there is to know about us, and he is teetering on the verge of another discovery.  Help him, and he may help you uncover the knowledge that you desire.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15376
(15348, 'Who are you?  What do you want with our tribe?', '', 0, 3, 0, 0, 0, 0, 0, 0, 'Nablya, is that you?', '', 0, 3, 0, 0, 0, 0, 0, 0, 'Welcome, outsider, to our home.', '', 0, 3, 0, 0, 0, 0, 0, 0, 'Have you come to observe?  Would you like a coconut?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15348
(15351, 'The lashers to the south will eat small creatures, like frogs and parrots.  We, the gorillas, will eat the lashers.  And dinosaurs will eat gorillas.  All this is honorable and natural.$b$bThe humans and orcs also hunt the gorilla, but they take the skin and leave the body to rot.  This is why we attack the humans and orcs.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15351
(15350, 'Individual strength is important, but tribal strength is more so.  Our tribe is only as strong as its weakest member.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15350
(15369, 'Hey, did you hear the one about the $r $c?  OK, here goes:$b$bA $r $c walks into a cave and starts fighting gorillas.  The leader of the gorillas says, \"Hey, why are you doing that?!\"  So then the $r $c says, \"A goblin told me to.\"$b$bThe gorilla leader says, \"Do you do everything that goblins tell you to do?\"  And the $r $c says, \"Yes, because I''m stupid and smelly and I walk on two legs.\"$b$bPretty funny, huh?  Hmm... maybe it needs some work...', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15369
(15349, 'A few of our tribe have harnessed the power of thunder.  We use it to defend ourselves against invaders, whether human, orc, or dinosaur.$b$bOur thunder stuns all dinosaurs, you know.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15349
(15345, '', 'Do you understand now, $N?', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15345
(15347, 'Yes, $N?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15347
(18292, 'The Warchief has ordered an invasion of the Hellfire Citadel, and we''re starting with these exposed ramparts.', '', 0, 1, 396, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18292
(15933, '', 'Greetings, $c.  I hope you find your accomodations suitable, even in this time of war.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15933
(15922, '', 'Hello, $c!$B$BThese poor creatures are giving everything they have to fight the minions of the Twilight''s Hammer in this dark place.$B$BI''ve done my best to revive those that have fallen.$B$BIf you need an additional mount, these birds are ready to take wing again. Treat them well!', 0, 1, 1, 6, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 15922
(16343, 'You must fly up to Stonehearth, aid my people against the stone troggs, and free my father.$B$BI will meet you there shortly after speaking with the Earthcaller.$B$BDon''t let him die, $N, or I will put you in the ground myself!', '', 0, 1, 25, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 16343
(17229, 'Pardon me, friend, but I''m busier than it might appear.$b$bI''ve been commissioned to document the discoveries of the commander in this region, you see.$b$bThey''re certain to be most profound!', '', 0, 1, 0, 0, 0, 0, 0, 0, 'I''m working on a biographical piece for Commander Schnottz, among other things.$b$bYou''ll have to excuse me.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17229
(17232, '', 'I saw them loading a shipment of artifacts onto the boats the other day.$b$bIt was the most gold I''ve ever seen in one place!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17232
(17306, 'My advice to you is simple, $r.$b$bDo not get in the way here.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17306
(17292, 'What a surprise!$b$bWe weren''t expecting anyone today...', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17292
(17153, 'Eediot!$b$bAvay vizh you!$b$bCan''t you see zhat I am concentratink?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17153
(17315, '', '<The starlet stares at you blankly.>', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17315
(17307, 'Move along, $r.$b$bYour presence is of no consequence to me.', '', 0, 1, 0, 0, 0, 0, 0, 0, '<The emissary sneers without looking at you.>$b$bGo about your business, $r.', '', 0, 1, 0, 0, 0, 0, 0, 0, '<The man barely acknowledges your presence. It is clear that he isn''t interested in speaking with you.>', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17307
(17360, 'If ever there comes a time that I have something to say to you, you should run.', '', 0, 1, 0, 0, 0, 0, 0, 0, 'You foolishly stumble about here, $r, oblivious to what forces surround you.', '', 0, 1, 0, 0, 0, 0, 0, 0, 'There is fear in you, mortal.$b$bI can smell it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17360
(17371, 'My life''s fortune... gone.$b$bThere''s no hope left for me.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17371
(17097, 'Pleasure to meet ya, young $gman:lady;.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17097
(17095, '', 'Hi! You''re new. Did you lose your home too? You can sit with me if you want.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17095
(17208, '<The Mullan Gryphon Rider stays still, eyes locked forward, not acknowledging your presence.>', '<The Mullan Gryphon Rider stays still, eyes locked forward, not acknowledging your presence.>', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17208
(17400, 'I''m from the Highbank advance unit, trying to win over the Wildhammer here at Thundermar.$B$BI think I can help them out, but can you believe that they don''t have a single tri-cyclic alternating current re-polarization device? Not a one!$B$BHow do they even get by?', '', 0, 1, 1, 274, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17400
(17036, 'That heap o'' rubble yonder was me family''s homestead fer five generations.$B$BWe''re takin'' it back.$B$BWe''re outnumbered... But we''re Wildhammer! Are yeh with me?', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17036
(17467, 'Since the fall of Grim Batol, we Wildhammers have never truly been united. Out here in the Highlands, forgotten by the rest of the world, the different clans have all gone their separate ways.$B$BTo join them all back together isn''t going to be easy. ', '', 0, 1, 1, 274, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17467
(17535, 'The wedding''s a go! I''m going to need a gift for the happy couple, of course. Something important.$B$BThe future of the Wildhammer really hinges on this one last chance to bring us all together!', '', 0, 1, 1, 6, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17535
(18963, 'It is done. The Dragon Soul is safely within the clutch of the dragonflights.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18963
(18163, 'The Light gives us the strength and magic to triumph.', 'The Light gives us the strength and magic to triumph.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18163
(18301, 'A trio of ethereal technomancers has set up shop in Stormwind, along the canal south of Cathedral Square.

\"The Three Winds,\" it''s called. Look for the weird machinery and purple lights... you can''t miss it.

They offer just the sort of services you''re looking for.', 'A trio of ethereal technomancers has set up shop in Stormwind, along the canal south of Cathedral Square.

\"The Three Winds,\" it''s called. Look for the weird machinery and purple lights... you can''t miss it.

They offer just the sort of services you''re looking for.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18301
(14333, 'Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.

I can grant you and your friends the Fury of the Storm, increasing your damage and maximum health. Should you be faced with evil so malevolent that it cannot be destroyed, I can channel all my power into a final Titanic Storm that will destroy even Immortals.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 14333
(18376, 'Caza''rez was not as lucky as I was, $N. He rests with the spirits now.', '', 0, 1, 18, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18376
(17419, 'Now that we have captured this wretched isle, we need to do some work to get it into shape.  Can you help us out $n?', 'Now that we have captured this wretched isle, we need to do some work to get it into shape.  Can you help us out $n?', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 17419
(18329, '', 'We people of the Lower City had a rather extensive spy network set up in the Shadow Labyrinth until recently.$B$BNow they''re all dead except me and To''gun.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18329
(18322, 'How may I help you?', '', 0, 1, 6, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18322
(18354, 'Keep your wits about you. There are demons nearby.', '', 0, 1, 396, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 18354
(13005, 'How may this one help you, $gsir:madame;?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211), -- 13005
(13006, 'My business partner slays things; I drain a portion of their essence... a pittance, really; the slightest of slivers. It won''t be missed.$B$BStill, to fulfil my portion of the contract, I pay in Ethereal Credits.$B$BOne may redeem these credits for items I sell at any time. I''m bound to have something that will interest you...', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 15211); -- 13006

UPDATE `npc_text` SET `text0_0`='Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke C, a security level chi terminal.$B$BYou must posses a blue punch card to access terminal functions.

01010010 01100101 01100011 01101001 01110000 01100101 00111010 00100000 01001101 01100101 01100011 01101000 01100001 01101110 01101001 01100011 01100001 01101100 00100000 01000011 01101000 01101001 01100011 01101011 01100101 01101110 00100000 01010011 01101111 01110101 01110000', `WDBVerified`=15211 WHERE `ID`=1649; -- 1649
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5874; -- 5874
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=5844; -- 5844
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8205; -- 8205
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8213; -- 8213
UPDATE `npc_text` SET `text0_0`='To honor your elders is to honor your culture and your people, $c.  For this, the Coins of Ancestry serve as a tangible means to recognize those who choose to follow a venerable path of respect.$B$BDuring this Lunar Festival, you may have the opportunity to honor many elders.  As you do so, you will acquire the Coins of Ancestry.  Bring me these coins, and I will reward your diligence with a selection of unique items.
' WHERE `ID`=8202; -- 8202
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2639; -- 2639
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15808; -- 15808
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5104; -- 5104
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15816; -- 15816
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15719; -- 15719
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5218; -- 5218
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16716; -- 16716
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16712; -- 16712
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6695; -- 6695
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=1202; -- 1202
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9662; -- 9662
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10025; -- 10025
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7933; -- 7933
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15845; -- 15845
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15838; -- 15838
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15821; -- 15821
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4042; -- 4042
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4043; -- 4043
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4044; -- 4044
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4045; -- 4045
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4046; -- 4046
UPDATE `npc_text` SET `text0_1`='Restraints? There are things in this world far more restraining than bars and shackles, young $g master:mistress;. The undead surrounded us, constantly tormenting us with horrifying acts of depravity.$B$BFinally, he came. He introduced himself as Doctor Theolen Krastinov. We came to know him as ''The Butcher.''
', `WDBVerified`=15211 WHERE `ID`=4047; -- 4047
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4048; -- 4048
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4049; -- 4049
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4050; -- 4050
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4447; -- 4447
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15847; -- 15847
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15851; -- 15851
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7956; -- 7956
UPDATE `npc_text` SET `text0_0`='Someone''s got to stop the Crown Chemical Co. I''d bet my gold-plated Nether-Rocket they''re cooking up the next big plague on the chocolate-crazed citizenry''s coin...

If only I could find someone to serve their apothecaries with court papers! Then we could put an end to it... and maybe seize all their assets, while we''re at it!' WHERE `ID`=15857; -- 15857
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17536; -- 17536
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7357; -- 7357
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7358; -- 7358
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7359; -- 7359
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7360; -- 7360
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10834; -- 10834
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10832; -- 10832
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10833; -- 10833
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10831; -- 10831
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15400; -- 15400
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9700; -- 9700
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9187; -- 9187
UPDATE `npc_text` SET `em0_0`=2, `em0_1`=0, `em0_3`=1, `WDBVerified`=15211 WHERE `ID`=10292; -- 10292
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=10430; -- 10430
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10504; -- 10504
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9964; -- 9964
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=6, `em0_2`=0, `em0_3`=0, `em0_4`=1000, `WDBVerified`=15211 WHERE `ID`=8589; -- 8589
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8586; -- 8586
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12227; -- 12227
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12623; -- 12623
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9071; -- 9071
UPDATE `npc_text` SET `text0_0`='Should Kil''jaeden rise up through the Sunwell our world will be thrown into a war the likes of which has not been seen for 10,000 years!
', `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=12309; -- 12309
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6897; -- 6897
UPDATE `npc_text` SET `text0_1`='The Shen''dralar were Queen Azshara''s most revered arcanists. It was within these very walls that the Queen''s most important demands were processed - often in secret.$B$BAfter the destruction of the Well and the subsequent lethargy that overcame the Highborne and lesser night elf sects, the Prince of Eldre''Thalas, Tortheldrin, began construction of the pylons that you see littering the halls of the west wing.
', `WDBVerified`=15211 WHERE `ID`=6898; -- 6898
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6899; -- 6899
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6900; -- 6900
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6901; -- 6901
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6939; -- 6939
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6940; -- 6940
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6927; -- 6927
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8336; -- 8336
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8335; -- 8335
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5876; -- 5876
UPDATE `npc_text` SET `text0_1`='Hi. Welcome to my salon.$B$BYou look great! But if you''re in the mood for a change, just sit right down in one of the chairs.', `WDBVerified`=15211 WHERE `ID`=16659; -- 16659
UPDATE `npc_text` SET `em0_0`=66, `em0_1`=1, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=7334; -- 7334
UPDATE `npc_text` SET `prob0`=1, `em0_0`=0, `WDBVerified`=15211 WHERE `ID`=7361; -- 7361
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6876; -- 6876
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6882; -- 6882
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6922; -- 6922
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6895; -- 6895
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6916; -- 6916
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=5, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=6924; -- 6924
UPDATE `npc_text` SET `em0_0`=5, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6914; -- 6914
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6920; -- 6920
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=1516; -- 1516
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=1513; -- 1513
UPDATE `npc_text` SET `text0_0`='It spoke to me of secrets and power, and also of truths. The Light had not forsaken the Broken! The fel energies that the orcs had wielded long ago against the draenei had infused us, causing a break in our ability to be heard by, or perhaps to hear, the Light. The same that had been responsible for the degradation of our bodies.$B$BBut our spirits were not broken, and the air offered to me another path, through which I might deliver my people.
' WHERE `ID`=9102; -- 9102
UPDATE `npc_text` SET `text0_0`='Your next choice awaits.$B$BYou are the sworn executioner for your liege.  A man has been sent to you for execution as a traitor of the liege and your people.  You know this individual as a close, virtuous friend who mysteriously vanished one day.  You also know that the man''s crimes for which he was convicted supposedly caused the deaths of many innocent civilians.  Upon seeing you he begs for his life, claiming he was framed by a higher authority.$B$BMake your choice.', `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=7341; -- 7341
UPDATE `npc_text` SET `text0_0`='Like a cat dragged in from the rain, you scratch and claw, then do it all over again... I''ll be back for more...$B$BOh, I didn''t see you enter, $N! What can I do for you? 
' WHERE `ID`=934; -- 934
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=581; -- 581
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4838; -- 4838
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6165; -- 6165
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2753; -- 2753
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11182; -- 11182
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4997; -- 4997
UPDATE `npc_text` SET `text0_1`='I train hunters in the ways and traditions of our ancestors. ', `WDBVerified`=15211 WHERE `ID`=4867; -- 4867
UPDATE `npc_text` SET `text0_0`='Remember, all things are connected. If the beasts were gone from the land, our kind would die from a great loneliness of spirit, for whatever happens to the beasts also happens to the Tauren. Whatever befalls Azeroth befalls all those that inhabit it. 
', `em0_0`=2, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=4889; -- 4889
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5838; -- 5838
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13474; -- 13474
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7722; -- 7722
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5001; -- 5001
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4866; -- 4866
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15252; -- 15252
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15484; -- 15484
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15485; -- 15485
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3795; -- 3795
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4032; -- 4032
UPDATE `npc_text` SET `prob0`=0, `prob1`=0, `text2_0`='Is it that hard for you to find the wind rider master on your own?  Burok is at the southern end of town, next to the wind riders.', `text2_1`='Is it that hard for you to find the wind rider master on your own?  Burok is at the southern end of town, next to the wind riders.', `lang2`=1, `prob2`=1, `WDBVerified`=15211 WHERE `ID`=4033; -- 4033
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4034; -- 4034
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5973; -- 5973
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15083; -- 15083
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14982; -- 14982
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14983; -- 14983
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14977; -- 14977
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15002; -- 15002
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14344; -- 14344
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14346; -- 14346
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14336; -- 14336
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14357; -- 14357
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14507; -- 14507
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8883; -- 8883
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14432; -- 14432
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6193; -- 6193
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8887; -- 8887
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14488; -- 14488
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5529; -- 5529
UPDATE `npc_text` SET `text0_0`='Your next choice awaits.$B$BYou alone have defeated a terrible beast that has been ravaging the countryside, taking its ear as a trophy.  You later learn that your liege had offered a reward for the beast''s death, and that a kind but destitute knight who you know is trying to support a family by meager means claims the beast''s kill as his own.  You have no real need for money yourself, but you know that the destitute knight is lying for his own personal gain.$B$BMake your choice.', `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=7363; -- 7363
UPDATE `npc_text` SET `text0_0`='He grows fatter and more corrupt with each passing day. Ye can smell the stink comin'' off o'' his body. He be dirty, an'' I dun just mean he be needin'' a wash.$B$BEnough babblin'' from Hulfdan. Where did ye come from and how can me help ye, $c?
' WHERE `ID`=908; -- 908
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16521; -- 16521
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16311; -- 16311
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16312; -- 16312
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16322; -- 16322
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16313; -- 16313
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6846; -- 6846
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6854; -- 6854
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6863; -- 6863
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6861; -- 6861
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6859; -- 6859
UPDATE `npc_text` SET `prob0`=1, `WDBVerified`=15211 WHERE `ID`=6871; -- 6871
UPDATE `npc_text` SET `prob0`=1, `WDBVerified`=15211 WHERE `ID`=6798; -- 6798
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6796; -- 6796
UPDATE `npc_text` SET `prob0`=1, `WDBVerified`=15211 WHERE `ID`=6061; -- 6061
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6058; -- 6058
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6797; -- 6797
UPDATE `npc_text` SET `prob0`=1, `WDBVerified`=15211 WHERE `ID`=6832; -- 6832
UPDATE `npc_text` SET `prob0`=1, `WDBVerified`=15211 WHERE `ID`=6838; -- 6838
UPDATE `npc_text` SET `prob0`=1, `prob1`=1, `prob2`=1, `WDBVerified`=15211 WHERE `ID`=6173; -- 6173
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6174; -- 6174
UPDATE `npc_text` SET `em0_0`=1, `em0_2`=6, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=7694; -- 7694
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6178; -- 6178
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16214; -- 16214
UPDATE `npc_text` SET `text0_0`='The beasts of these blasted lands exhibit preternatural attributes, heretofore unseen in nature.$B$BWe have theorized that the energy which was released upon the opening of the Dark Portal, infused into their physical being and forced the creatures to evolve into their current forms.$B$BFearsome beasts they are, no doubt, but we also believe that they could prove to be quite useful in our studies.$B$BPerhaps you would be interested in assisting us in the study of these beasts, $N?
', `WDBVerified`=15211 WHERE `ID`=1351; -- 1351
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16007; -- 16007
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7176; -- 7176
UPDATE `npc_text` SET `em0_0`=11, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=8712; -- 8712
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8771; -- 8771
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9021; -- 9021
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5878; -- 5878
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=560; -- 560
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13593; -- 13593
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9942; -- 9942
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=8754; -- 8754
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8792; -- 8792
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10689; -- 10689
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6878; -- 6878
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8715; -- 8715
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10735; -- 10735
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9262; -- 9262
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9263; -- 9263
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9265; -- 9265
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9370; -- 9370
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9264; -- 9264
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9261; -- 9261
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9238; -- 9238
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9239; -- 9239
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9751; -- 9751
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9235; -- 9235
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=10246; -- 10246
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=9733; -- 9733
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9352; -- 9352
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9353; -- 9353
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9354; -- 9354
UPDATE `npc_text` SET `text0_0`='Dat not true. Me just want to nibble. I don''t eat all. Ok, maybe I eat da little ones.$B$BDey so delicious!
', `WDBVerified`=15211 WHERE `ID`=9355; -- 9355
UPDATE `npc_text` SET `text0_0`='<Lump shrugs.>$B$BYou bring da war to da Boulderfist. We put it in da stew.
', `WDBVerified`=15211 WHERE `ID`=9356; -- 9356
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9374; -- 9374
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9395; -- 9395
UPDATE `npc_text` SET `em0_0`=396, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=12294; -- 12294
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9614; -- 9614
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9610; -- 9610
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9613; -- 9613
UPDATE `npc_text` SET `em0_0`=5, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=9389; -- 9389
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=273, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9420; -- 9420
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=274, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9421; -- 9421
UPDATE `npc_text` SET `em0_0`=1, `em0_2`=25, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9422; -- 9422
UPDATE `npc_text` SET `em0_0`=274, `em0_1`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9423; -- 9423
UPDATE `npc_text` SET `em0_0`=273, `em0_1`=1, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9424; -- 9424
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10893; -- 10893
UPDATE `npc_text` SET `em0_0`=25, `em0_1`=6, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9362; -- 9362
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9363; -- 9363
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9364; -- 9364
UPDATE `npc_text` SET `em0_0`=5, `em0_1`=1, `em0_2`=273, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9365; -- 9365
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=9366; -- 9366
UPDATE `npc_text` SET `em0_0`=153, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9367; -- 9367
UPDATE `npc_text` SET `text0_0`='<Lantresor glares at you as if he were looking through you.>$B$BPerhaps there is another way... I will agree to your leader''s demands, only if you do exactly as I ask.$B$BWith your assistance, we may be able to help each other out greatly.
', `em0_0`=273, `em0_1`=1, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=9368; -- 9368
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9369; -- 9369
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14056; -- 14056
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12644; -- 12644
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=13456; -- 13456
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=13845; -- 13845
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13897; -- 13897
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13901; -- 13901
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12528; -- 12528
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12554; -- 12554
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12553; -- 12553
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12534; -- 12534
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12555; -- 12555
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12626; -- 12626
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12663; -- 12663
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12664; -- 12664
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13426; -- 13426
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8539; -- 8539
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15540; -- 15540
UPDATE `npc_text` SET `text0_0`='See that broken trap over yonder?  The ogres are too stupid to figure out how to fix it.  Clearly, it needs a little tinkering!  If you fix it, I bet you could lure Slip''kik into it, and BLAMMO - trapped ogre guard!', `em0_0`=20, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6795; -- 6795
UPDATE `npc_text` SET `em0_0`=1, `em0_2`=1, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=6883; -- 6883
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6918; -- 6918
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=1653; -- 1653
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12730; -- 12730
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12566; -- 12566
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12780; -- 12780
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12740; -- 12740
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12842; -- 12842
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12423; -- 12423
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12658; -- 12658
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12435; -- 12435
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16779; -- 16779
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6594; -- 6594
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6929; -- 6929
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2637; -- 2637
UPDATE `npc_text` SET `em0_0`=5, `em0_1`=1, `em0_2`=0, `em0_3`=0, `em0_4`=1, `WDBVerified`=15211 WHERE `ID`=13094; -- 13094
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13093; -- 13093
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2643; -- 2643
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2596; -- 2596
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2598; -- 2598
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2602; -- 2602
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2600; -- 2600
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2597; -- 2597
UPDATE `npc_text` SET `text0_0`='Fine then, have a seat. This might take a while.$B$BWhen we first came to this frozen hell, General Arlos, down in Valiance Keep, gave my group of flying daredevils and me a special task: to establish a forward airbase for Alliance operations.$B$BThis airstrip is the result. Let me tell you, it wasn''t easy, what with all the nasty beasts and the ground rock-hard from being frozen! But we managed, and we did it quickly too!', `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12456; -- 12456
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12457; -- 12457
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12458; -- 12458
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12459; -- 12459
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12460; -- 12460
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12461; -- 12461
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12462; -- 12462
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12463; -- 12463
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12464; -- 12464
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12489; -- 12489
UPDATE `npc_text` SET `em0_0`=396, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=13132; -- 13132
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12852; -- 12852
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12810; -- 12810
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=13637; -- 13637
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12734; -- 12734
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12733; -- 12733
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12904; -- 12904
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3545; -- 3545
UPDATE `npc_text` SET `text0_0`='Welcome to Stonemaul Hold, brave $c.  How may I assist you this day?', `WDBVerified`=15211 WHERE `ID`=2638; -- 2638
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15434; -- 15434
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15435; -- 15435
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12953; -- 12953
UPDATE `npc_text` SET `text0_0`='Through the valleys and peaks of Mount Hyjal, across the shifting sands of Silithus, against the Legion''s dread armies - we have fought. We are the nameless, faceless, sons and daughters of the Alliance. By the Light and by the might of the Alliance, the first strike belongs to us and the last strike is all that our enemies see.$B$BWe are 7th Legion.
', `WDBVerified`=15211 WHERE `ID`=12739; -- 12739
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12940; -- 12940
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13504; -- 13504
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=14284; -- 14284
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=14286; -- 14286
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=14285; -- 14285
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2816; -- 2816
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14474; -- 14474
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2821; -- 2821
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9774; -- 9774
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3096; -- 3096
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3095; -- 3095
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2817; -- 2817
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17736; -- 17736
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2734; -- 2734
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15325; -- 15325
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15324; -- 15324
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2810; -- 2810
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15277; -- 15277
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15278; -- 15278
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15266; -- 15266
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15267; -- 15267
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15268; -- 15268
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15269; -- 15269
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15270; -- 15270
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15291; -- 15291
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15332; -- 15332
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15333; -- 15333
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3094; -- 3094
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15296; -- 15296
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2813; -- 2813
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14527; -- 14527
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15353; -- 15353
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2811; -- 2811
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13082; -- 13082
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13080; -- 13080
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13081; -- 13081
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13679; -- 13679
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15639; -- 15639
UPDATE `npc_text` SET `text0_0`='The pylon seems to be transmitting data somewhere.$b$bA closer inspection of the pylon leads you to find a small table containing yellow, red, and green crystals arranged in what seems like a specific formation.$B$BA large yellow circle of crystals is flanked on either side by a smaller circle of red crystals and another of green crystals.$B$BYou carefully take note of what you see, knowing that someone may be very interested in hearing about what you have found.
', `WDBVerified`=15211 WHERE `ID`=2812; -- 2812
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3546; -- 3546
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14197; -- 14197
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13804; -- 13804
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13793; -- 13793
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13733; -- 13733
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13611; -- 13611
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13612; -- 13612
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13613; -- 13613
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13614; -- 13614
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=6155; -- 6155
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=7782; -- 7782
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8960; -- 8960
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=8280; -- 8280
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=8108; -- 8108
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=7731; -- 7731
UPDATE `npc_text` SET `em0_0`=6, `em0_1`=0, `em0_3`=1, `WDBVerified`=15211 WHERE `ID`=8114; -- 8114
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16027; -- 16027
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=1391; -- 1391
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8805; -- 8805
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16025; -- 16025
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16024; -- 16024
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16031; -- 16031
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16065; -- 16065
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9969; -- 9969
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9996; -- 9996
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10934; -- 10934
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14689; -- 14689
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10306; -- 10306
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8718; -- 8718
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9771; -- 9771
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10293; -- 10293
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10027; -- 10027
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10003; -- 10003
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10004; -- 10004
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13642; -- 13642
UPDATE `npc_text` SET `text0_0`='That vile beast has been driven off, but my precious waters have been tainted! I must cleanse them at once.$b$bIf you insist on lingering here, prepare to defend yourself.
', `WDBVerified`=15211 WHERE `ID`=15997; -- 15997
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15780; -- 15780
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=2315; -- 2315
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15971; -- 15971
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15982; -- 15982
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15987; -- 15987
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15988; -- 15988
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15989; -- 15989
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16002; -- 16002
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16003; -- 16003
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16670; -- 16670
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15896; -- 15896
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17108; -- 17108
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16075; -- 16075
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16076; -- 16076
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16100; -- 16100
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16078; -- 16078
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16085; -- 16085
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16090; -- 16090
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=9777; -- 9777
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10610; -- 10610
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10636; -- 10636
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10301; -- 10301
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8767; -- 8767
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8751; -- 8751
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16406; -- 16406
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16833; -- 16833
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16834; -- 16834
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16835; -- 16835
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16836; -- 16836
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=8238; -- 8238
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16373; -- 16373
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17170; -- 17170
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17667; -- 17667
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16374; -- 16374
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16375; -- 16375
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16412; -- 16412
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16376; -- 16376
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16730; -- 16730
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16507; -- 16507
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16508; -- 16508
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16545; -- 16545
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9392; -- 9392
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10720; -- 10720
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11224; -- 11224
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17363; -- 17363
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17364; -- 17364
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17365; -- 17365
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17193; -- 17193
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17366; -- 17366
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17362; -- 17362
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17110; -- 17110
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16745; -- 16745
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16786; -- 16786
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16866; -- 16866
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16920; -- 16920
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16968; -- 16968
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17417; -- 17417
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17024; -- 17024
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17423; -- 17423
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17442; -- 17442
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17111; -- 17111
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17410; -- 17410
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17167; -- 17167
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17155; -- 17155
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17251; -- 17251
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17161; -- 17161
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17158; -- 17158
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17148; -- 17148
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17156; -- 17156
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17157; -- 17157
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17163; -- 17163
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17164; -- 17164
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17165; -- 17165
UPDATE `npc_text` SET `text0_0`='He''s a bit animated for my tastes, but the world needs all kinds, I suppose.$b$bWhy do you ask?
', `WDBVerified`=15211 WHERE `ID`=17159; -- 17159
UPDATE `npc_text` SET `text0_0`='I see what you mean, I suppose...$b$bYou know, I''m just here because I want to expand my horizons a bit, see the world and whatnot.$b$bI''m not terribly concerned with the goings on of others.$b$bNice to meet you, though.
', `WDBVerified`=15211 WHERE `ID`=17160; -- 17160
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17150; -- 17150
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17152; -- 17152
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17291; -- 17291
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17166; -- 17166
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17192; -- 17192
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17252; -- 17252
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17189; -- 17189
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17304; -- 17304
UPDATE `npc_text` SET `text0_0`='What''s happening out here!?$b$bDid you see the man''s wounds?!$b$bWhat kind of monster DOES that?
', `WDBVerified`=15211 WHERE `ID`=17312; -- 17312
UPDATE `npc_text` SET `text0_0`='No, but I don''t need to have seen it to know that we''re all going to DIE!$b$bDo you hear me?!
', `WDBVerified`=15211 WHERE `ID`=17313; -- 17313
UPDATE `npc_text` SET `text0_0`='Easy for you to say.$b$bI''m not cut out for this! I need to find a way out of here!
', `WDBVerified`=15211 WHERE `ID`=17314; -- 17314
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17256; -- 17256
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17257; -- 17257
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17258; -- 17258
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17259; -- 17259
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17305; -- 17305
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17308; -- 17308
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17253; -- 17253
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17254; -- 17254
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17255; -- 17255
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17309; -- 17309
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17310; -- 17310
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17311; -- 17311
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17359; -- 17359
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17432; -- 17432
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17370; -- 17370
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17373; -- 17373
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17427; -- 17427
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17434; -- 17434
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17431; -- 17431
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16651; -- 16651
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16642; -- 16642
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16729; -- 16729
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16653; -- 16653
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16682; -- 16682
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16719; -- 16719
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17407; -- 17407
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=5994; -- 5994
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17662; -- 17662
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16731; -- 16731
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17408; -- 17408
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16903; -- 16903
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17409; -- 17409
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16766; -- 16766
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16767; -- 16767
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16918; -- 16918
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16914; -- 16914
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16867; -- 16867
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16872; -- 16872
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16897; -- 16897
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16899; -- 16899
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16898; -- 16898
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4449; -- 4449
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=16906; -- 16906
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17099; -- 17099
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17098; -- 17098
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17228; -- 17228
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17212; -- 17212
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17104; -- 17104
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17103; -- 17103
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17105; -- 17105
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17052; -- 17052
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17053; -- 17053
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17009; -- 17009
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17010; -- 17010
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17011; -- 17011
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17012; -- 17012
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17013; -- 17013
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17014; -- 17014
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17051; -- 17051
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17046; -- 17046
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17055; -- 17055
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17061; -- 17061
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17397; -- 17397
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17398; -- 17398
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17399; -- 17399
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17401; -- 17401
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17441; -- 17441
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17443; -- 17443
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17446; -- 17446
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17557; -- 17557
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17533; -- 17533
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17468; -- 17468
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17513; -- 17513
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17472; -- 17472
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17515; -- 17515
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17516; -- 17516
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17517; -- 17517
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17518; -- 17518
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17534; -- 17534
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17521; -- 17521
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=9895; -- 9895
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9903; -- 9903
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9897; -- 9897
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10178; -- 10178
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9876; -- 9876
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9877; -- 9877
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9878; -- 9878
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9879; -- 9879
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9880; -- 9880
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9881; -- 9881
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14063; -- 14063
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10153; -- 10153
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4394; -- 4394
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11215; -- 11215
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9451; -- 9451
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9730; -- 9730
UPDATE `npc_text` SET `text0_0`='Why you''re just the $c I was looking for! I''m testing a new rocket-powered flying device, and I need your help!

Just take one of these harnesses and put it on under your armor.  Hit the button on the side, and BOOM, off you go.

Don''t go trying to steal my work though. Each of these babies is fitted with a Transponster 8000 linked to the one in my hand. If you get too far from me the Transponster will shut down the main rocket and you''ll be unable to lift off until you return.

Now where did I put those liability forms?', `WDBVerified`=15211 WHERE `ID`=15134; -- 15134
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15101; -- 15101
UPDATE `npc_text` SET `em0_0`=396, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=15602; -- 15602
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15450; -- 15450
UPDATE `npc_text` SET `text0_0`='Greetings, hero. I craft and sell Lightsworn armor for paladins.
', `text0_1`='Greetings, hero. I craft and sell Lightsworn armor for paladins.
', `WDBVerified`=15211 WHERE `ID`=15451; -- 15451
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15339; -- 15339
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=15081; -- 15081
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=15189; -- 15189
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10894; -- 10894
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9713; -- 9713
UPDATE `npc_text` SET `em0_0`=66, `em0_1`=0, `em0_3`=1, `WDBVerified`=15211 WHERE `ID`=13834; -- 13834
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14496; -- 14496
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14497; -- 14497
UPDATE `npc_text` SET `text0_0`='These babies can hurl fire like none other. We''ve even attached a secondary cannon, a grappling hook and added a manual fuel injection system.  If you can obtain liquid pyrite from the mechanognomes, you can use it to hurl high-density explosives, or turbo-boost your movement speed. 

Let''s see those Explorers'' League twirps beat that!', `text0_1`='These babies can hurl fire like none other. We''ve even attached a secondary cannon, a grappling hook and added a manual fuel injection system.  If you can obtain liquid pyrite from the mechanognomes, you can use it to hurl high-density explosives, or turbo-boost your movement speed. 

Let''s see those Explorers'' League twirps beat that!', `WDBVerified`=15211 WHERE `ID`=14368; -- 14368
UPDATE `npc_text` SET `text0_0`='Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.

I can grant you and your friends the Fortitude of Frost, increasing your damage and reducing damage taken from enemy attacks. Should one of you be about to fall in battle, I can freeze you in a block of ice, protecting you from all damage for a short time. Know that this ability taxes my power, and I must rest after using it.', `WDBVerified`=15211 WHERE `ID`=14326; -- 14326
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14325; -- 14325
UPDATE `npc_text` SET `text0_0`='Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.

I can grant you and your friends the Speed of Invention, increasing your damage and movement speed. In addition, I can destabilize the matrices of certain Saronite based life-forms, reducing their attack and casting speeds.', `WDBVerified`=15211 WHERE `ID`=14334; -- 14334
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11230; -- 11230
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11231; -- 11231
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=9440; -- 9440
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `em1_0`=11, `em1_1`=0, `em2_0`=1, `em2_1`=0, `em3_0`=1, `em3_1`=0, `WDBVerified`=15211 WHERE `ID`=10686; -- 10686
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9435; -- 9435
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10460; -- 10460
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10549; -- 10549
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12282; -- 12282
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12283; -- 12283
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10817; -- 10817
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10818; -- 10818
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10448; -- 10448
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=10467; -- 10467
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10350; -- 10350
UPDATE `npc_text` SET `em0_0`=1, `em0_2`=25, `em0_3`=0, `em0_5`=0, `WDBVerified`=15211 WHERE `ID`=10250; -- 10250
UPDATE `npc_text` SET `em0_0`=1, `em0_3`=0, `WDBVerified`=15211 WHERE `ID`=10556; -- 10556
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10664; -- 10664
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10446; -- 10446
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11091; -- 11091
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14215; -- 14215
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12650; -- 12650
UPDATE `npc_text` SET `em0_0`=66, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12523; -- 12523
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13735; -- 13735
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14041; -- 14041
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12756; -- 12756
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=14017; -- 14017
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14116; -- 14116
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14759; -- 14759
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=3653; -- 3653
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=6159; -- 6159
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12424; -- 12424
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12422; -- 12422
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12427; -- 12427
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12426; -- 12426
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12770; -- 12770
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12590; -- 12590
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12593; -- 12593
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12440; -- 12440
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=13902; -- 13902
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14090; -- 14090
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=17422; -- 17422
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9836; -- 9836
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9834; -- 9834
UPDATE `npc_text` SET `text0_0`='Existing only for chaos, its slightest whisper meant the destruction of whole worlds!$B$BYet still, there were those that would try to worship this mindless being.  There were even those more insane who dared to think to control it.', `WDBVerified`=15211 WHERE `ID`=9835; -- 9835
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9837; -- 9837
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9838; -- 9838
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9839; -- 9839
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=9840; -- 9840
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=14045; -- 14045
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12498; -- 12498
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12500; -- 12500
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12502; -- 12502
UPDATE `npc_text` SET `text0_0`='A friend and I have come to rescue a young human woman from the clutches of the Legionlord, Kil''jaeden and his vile minions.$b$bWe''ve discovered that Kael''thas is trying to summon Kil''jaeden from the depths of the Sunwell itself.$b$bFor the sake of this world - this cannot come to pass! I am committed to seeing that it does not.
', `WDBVerified`=15211 WHERE `ID`=12606; -- 12606
UPDATE `npc_text` SET `text0_0`='Madrigosa accompanied me on this journey, but we have become separated in the Sunwell.$b$bMay fate keep her safe.
', `WDBVerified`=15211 WHERE `ID`=12607; -- 12607
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12608; -- 12608
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=4859; -- 4859
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=10797; -- 10797
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=11947; -- 11947
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12387; -- 12387
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12382; -- 12382
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12732; -- 12732
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12394; -- 12394
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12395; -- 12395
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12357; -- 12357
UPDATE `npc_text` SET `em0_0`=389, `em0_1`=0, `em1_0`=389, `em1_1`=0, `em2_0`=389, `em2_1`=0, `em3_0`=389, `em3_1`=0, `em4_0`=389, `em4_1`=0, `em5_0`=389, `em5_1`=0, `em6_0`=389, `em6_1`=0, `em7_0`=389, `em7_1`=0, `WDBVerified`=15211 WHERE `ID`=12362; -- 12362
UPDATE `npc_text` SET `em0_0`=389, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12349; -- 12349
UPDATE `npc_text` SET `em0_0`=36, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12354; -- 12354
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12781; -- 12781
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12591; -- 12591
UPDATE `npc_text` SET `em0_0`=1, `em0_1`=0, `WDBVerified`=15211 WHERE `ID`=12577; -- 12577
UPDATE `npc_text` SET `WDBVerified`=15211 WHERE `ID`=12576; -- 12576

DELETE FROM `gossip_menu_option` WHERE (`menu_id`=11766 AND `id`=0) OR (`menu_id`=11793 AND `id`=0) OR (`menu_id`=11793 AND `id`=1) OR (`menu_id`=11793 AND `id`=2) OR (`menu_id`=12606 AND `id`=0) OR (`menu_id`=12606 AND `id`=1) OR (`menu_id`=12606 AND `id`=2) OR (`menu_id`=4164 AND `id`=0) OR (`menu_id`=5602 AND `id`=0) OR (`menu_id`=11428 AND `id`=0) OR (`menu_id`=13352 AND `id`=1) OR (`menu_id`=8433 AND `id`=0) OR (`menu_id`=8403 AND `id`=8) OR (`menu_id`=8403 AND `id`=9) OR (`menu_id`=8403 AND `id`=10) OR (`menu_id`=8403 AND `id`=11) OR (`menu_id`=8403 AND `id`=12) OR (`menu_id`=8403 AND `id`=13) OR (`menu_id`=12918 AND `id`=0) OR (`menu_id`=8268 AND `id`=0) OR (`menu_id`=4822 AND `id`=0) OR (`menu_id`=6208 AND `id`=0) OR (`menu_id`=6208 AND `id`=1) OR (`menu_id`=6208 AND `id`=2) OR (`menu_id`=5708 AND `id`=0) OR (`menu_id`=5715 AND `id`=0) OR (`menu_id`=5708 AND `id`=1) OR (`menu_id`=5740 AND `id`=0) OR (`menu_id`=5739 AND `id`=1) OR (`menu_id`=5744 AND `id`=0) OR (`menu_id`=6187 AND `id`=0) OR (`menu_id`=6187 AND `id`=1) OR (`menu_id`=6187 AND `id`=2) OR (`menu_id`=2101 AND `id`=0) OR (`menu_id`=12050 AND `id`=0) OR (`menu_id`=12341 AND `id`=0) OR (`menu_id`=10986 AND `id`=0) OR (`menu_id`=12193 AND `id`=10) OR (`menu_id`=10659 AND `id`=0) OR (`menu_id`=10658 AND `id`=0) OR (`menu_id`=6210 AND `id`=0) OR (`menu_id`=6210 AND `id`=1) OR (`menu_id`=6210 AND `id`=2) OR (`menu_id`=3781 AND `id`=0) OR (`menu_id`=3781 AND `id`=1) OR (`menu_id`=3781 AND `id`=2) OR (`menu_id`=3781 AND `id`=3) OR (`menu_id`=5692 AND `id`=0) OR (`menu_id`=5692 AND `id`=1) OR (`menu_id`=5692 AND `id`=2) OR (`menu_id`=5692 AND `id`=3) OR (`menu_id`=5692 AND `id`=4) OR (`menu_id`=5692 AND `id`=5) OR (`menu_id`=5697 AND `id`=0) OR (`menu_id`=5697 AND `id`=1) OR (`menu_id`=5699 AND `id`=0) OR (`menu_id`=5699 AND `id`=1) OR (`menu_id`=5706 AND `id`=0) OR (`menu_id`=5706 AND `id`=1) OR (`menu_id`=5693 AND `id`=0) OR (`menu_id`=5693 AND `id`=1) OR (`menu_id`=5695 AND `id`=0) OR (`menu_id`=5695 AND `id`=1) OR (`menu_id`=5705 AND `id`=0) OR (`menu_id`=5705 AND `id`=1) OR (`menu_id`=5669 AND `id`=0) OR (`menu_id`=5669 AND `id`=1) OR (`menu_id`=5669 AND `id`=2) OR (`menu_id`=5669 AND `id`=3) OR (`menu_id`=5669 AND `id`=4) OR (`menu_id`=5669 AND `id`=5) OR (`menu_id`=5669 AND `id`=6) OR (`menu_id`=5668 AND `id`=0) OR (`menu_id`=5668 AND `id`=2) OR (`menu_id`=5223 AND `id`=0) OR (`menu_id`=5223 AND `id`=2) OR (`menu_id`=5621 AND `id`=0) OR (`menu_id`=5621 AND `id`=2) OR (`menu_id`=5225 AND `id`=0) OR (`menu_id`=5225 AND `id`=2) OR (`menu_id`=5671 AND `id`=0) OR (`menu_id`=5671 AND `id`=2) OR (`menu_id`=5227 AND `id`=0) OR (`menu_id`=5227 AND `id`=2) OR (`menu_id`=5670 AND `id`=0) OR (`menu_id`=5670 AND `id`=2) OR (`menu_id`=5673 AND `id`=0) OR (`menu_id`=5673 AND `id`=1) OR (`menu_id`=5003 AND `id`=0) OR (`menu_id`=5003 AND `id`=2) OR (`menu_id`=5002 AND `id`=0) OR (`menu_id`=5002 AND `id`=2) OR (`menu_id`=5674 AND `id`=0) OR (`menu_id`=5674 AND `id`=1) OR (`menu_id`=5674 AND `id`=2) OR (`menu_id`=5674 AND `id`=3) OR (`menu_id`=5674 AND `id`=4) OR (`menu_id`=5674 AND `id`=5) OR (`menu_id`=5674 AND `id`=6) OR (`menu_id`=5674 AND `id`=7) OR (`menu_id`=5674 AND `id`=8) OR (`menu_id`=5676 AND `id`=0) OR (`menu_id`=5676 AND `id`=2) OR (`menu_id`=5677 AND `id`=0) OR (`menu_id`=5677 AND `id`=2) OR (`menu_id`=5678 AND `id`=0) OR (`menu_id`=5678 AND `id`=2) OR (`menu_id`=5679 AND `id`=0) OR (`menu_id`=5679 AND `id`=2) OR (`menu_id`=5680 AND `id`=0) OR (`menu_id`=5680 AND `id`=2) OR (`menu_id`=5681 AND `id`=0) OR (`menu_id`=5681 AND `id`=2) OR (`menu_id`=5682 AND `id`=0) OR (`menu_id`=5682 AND `id`=2) OR (`menu_id`=5683 AND `id`=0) OR (`menu_id`=5683 AND `id`=2) OR (`menu_id`=5684 AND `id`=0) OR (`menu_id`=5684 AND `id`=2) OR (`menu_id`=5146 AND `id`=0) OR (`menu_id`=11822 AND `id`=0) OR (`menu_id`=11822 AND `id`=1) OR (`menu_id`=7820 AND `id`=1) OR (`menu_id`=7448 AND `id`=0) OR (`menu_id`=8544 AND `id`=0) OR (`menu_id`=2001 AND `id`=0) OR (`menu_id`=12010 AND `id`=0) OR (`menu_id`=12010 AND `id`=1) OR (`menu_id`=9418 AND `id`=0) OR (`menu_id`=5667 AND `id`=1) OR (`menu_id`=9427 AND `id`=0) OR (`menu_id`=9427 AND `id`=1) OR (`menu_id`=1970 AND `id`=1) OR (`menu_id`=9190 AND `id`=0) OR (`menu_id`=9683 AND `id`=1) OR (`menu_id`=11767 AND `id`=2) OR (`menu_id`=11238 AND `id`=0) OR (`menu_id`=1964 AND `id`=0) OR (`menu_id`=10994 AND `id`=1) OR (`menu_id`=11036 AND `id`=0) OR (`menu_id`=11036 AND `id`=1) OR (`menu_id`=11060 AND `id`=0) OR (`menu_id`=11059 AND `id`=0) OR (`menu_id`=11058 AND `id`=0) OR (`menu_id`=11057 AND `id`=0) OR (`menu_id`=11056 AND `id`=0) OR (`menu_id`=11055 AND `id`=0) OR (`menu_id`=11043 AND `id`=0) OR (`menu_id`=11042 AND `id`=0) OR (`menu_id`=11041 AND `id`=0) OR (`menu_id`=11040 AND `id`=0) OR (`menu_id`=11054 AND `id`=0) OR (`menu_id`=11039 AND `id`=0) OR (`menu_id`=11038 AND `id`=0) OR (`menu_id`=11036 AND `id`=0) OR (`menu_id`=11036 AND `id`=1) OR (`menu_id`=11037 AND `id`=1) OR (`menu_id`=9841 AND `id`=0) OR (`menu_id`=9842 AND `id`=0) OR (`menu_id`=9843 AND `id`=0) OR (`menu_id`=8760 AND `id`=1) OR (`menu_id`=11437 AND `id`=0) OR (`menu_id`=11437 AND `id`=1) OR (`menu_id`=11874 AND `id`=0) OR (`menu_id`=11874 AND `id`=1) OR (`menu_id`=11909 AND `id`=0) OR (`menu_id`=12042 AND `id`=0) OR (`menu_id`=12055 AND `id`=0) OR (`menu_id`=12113 AND `id`=0) OR (`menu_id`=12114 AND `id`=0) OR (`menu_id`=12115 AND `id`=0) OR (`menu_id`=12116 AND `id`=0) OR (`menu_id`=12139 AND `id`=0) OR (`menu_id`=12143 AND `id`=0) OR (`menu_id`=12130 AND `id`=0) OR (`menu_id`=12409 AND `id`=0) OR (`menu_id`=12451 AND `id`=0) OR (`menu_id`=12455 AND `id`=0) OR (`menu_id`=12455 AND `id`=1) OR (`menu_id`=12455 AND `id`=2) OR (`menu_id`=12456 AND `id`=0) OR (`menu_id`=12456 AND `id`=1) OR (`menu_id`=12456 AND `id`=2) OR (`menu_id`=12457 AND `id`=0) OR (`menu_id`=12457 AND `id`=1) OR (`menu_id`=12457 AND `id`=2) OR (`menu_id`=12459 AND `id`=0) OR (`menu_id`=12920 AND `id`=0) OR (`menu_id`=12920 AND `id`=1) OR (`menu_id`=10860 AND `id`=0) OR (`menu_id`=9983 AND `id`=0) OR (`menu_id`=10366 AND `id`=0) OR (`menu_id`=10477 AND `id`=0) OR (`menu_id`=10335 AND `id`=0) OR (`menu_id`=10333 AND `id`=0) OR (`menu_id`=10337 AND `id`=0) OR (`menu_id`=10336 AND `id`=0) OR (`menu_id`=10332 AND `id`=0) OR (`menu_id`=10334 AND `id`=0) OR (`menu_id`=9084 AND `id`=0) OR (`menu_id`=9084 AND `id`=1) OR (`menu_id`=9085 AND `id`=0) OR (`menu_id`=9085 AND `id`=1) OR (`menu_id`=8386 AND `id`=0) OR (`menu_id`=8371 AND `id`=0) OR (`menu_id`=13047 AND `id`=0) OR (`menu_id`=9619 AND `id`=0) OR (`menu_id`=9619 AND `id`=1) OR (`menu_id`=4004 AND `id`=1);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(11766, 0, 3, 'I would like to train.', 0, 0, ''), -- -Unknown-
(11793, 0, 3, 'I require warrior training.', 0, 0, ''), -- -Unknown-
(11793, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(11793, 2, 0, 'I wish to know about Dual Talent Specialization.', 0, 0, ''), -- -Unknown-
(12606, 0, 3, 'I am interested in mage training.', 0, 0, ''), -- -Unknown-
(12606, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(12606, 2, 0, 'I wish to know about Dual Talent Specialization.', 0, 0, ''), -- -Unknown-
(4164, 0, 3, 'Train me.', 0, 0, ''), -- Xylinnia Starshine
(5602, 0, 0, 'Thank you, Ironbark. We are ready for you to open the door.', 0, 0, ''), -- Old Ironbark
(11428, 0, 0, 'Get me into my boat, Mazzer.', 0, 0, ''), -- -Unknown-
(13352, 1, 0, 'Teleport me to the cannon.', 0, 100, 'Teleportation to the cannon will cost:'), -- -Unknown-
(8433, 0, 3, 'Please teach me.', 0, 0, ''), -- Mi'irku Farstep
(8403, 8, 0, 'Inscription', 0, 0, ''), -- Scryer Arcane Guardian
(8403, 9, 0, 'Jewelcrafting', 0, 0, ''), -- Scryer Arcane Guardian
(8403, 10, 0, 'Leatherworking', 0, 0, ''), -- Scryer Arcane Guardian
(8403, 11, 0, 'Mining', 0, 0, ''), -- Scryer Arcane Guardian
(8403, 12, 0, 'Skinning', 0, 0, ''), -- Scryer Arcane Guardian
(8403, 13, 0, 'Tailoring', 0, 0, ''), -- Scryer Arcane Guardian
(12918, 0, 3, 'I am interested in mage training.', 0, 0, ''), -- -Unknown-
(8268, 0, 3, 'Please teach me.', 0, 0, ''), -- Iorioa
(4822, 0, 3, 'Please teach me.', 0, 0, ''), -- Larimaine Purdue
(6208, 0, 0, 'I confront the ruler on his malicious behavior, upholding my liege''s honor at the risk of any future diplomacy.', 0, 0, ''), -- Sayge
(6208, 1, 0, 'I not-so-quietly ignore the insult, hoping to instill a fear in the ruler that he may have gaffed.  I then inform my liege of the insult when I return.', 0, 0, ''), -- Sayge
(6208, 2, 0, 'I quietly ignore the insult.  I will not tell my liege, as I am to secure peace at all costs.  It''s only an insult - not a declaration of war.', 0, 0, ''), -- Sayge
(5708, 0, 0, 'I''m the new king?  What are you talking about?', 0, 0, ''), -- Mizzle the Crafty
(5715, 0, 0, 'It''s good to be the king!  Now, let''s get back to what you were talking about before...', 0, 0, ''), -- Mizzle the Crafty
(5708, 1, 0, 'Henchmen?  Tribute?', 0, 0, ''), -- Mizzle the Crafty
(5740, 0, 0, 'Well then... show me the tribute!', 0, 0, ''), -- Mizzle the Crafty
(5739, 1, 0, 'So, now that I''m the king... what have you got for me?!', 0, 0, ''), -- Captain Kromcrush
(5744, 0, 0, 'This sounds like a task worthy of the new king!', 0, 0, ''), -- Captain Kromcrush
(6187, 0, 0, 'I execute him as per my liege''s instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people.', 0, 0, ''), -- Sayge
(6187, 1, 0, 'I execute him as per my liege''s instructions, but doing so in as painless of a way as possible.  Justice must be served, but I can show some compassion.
', 0, 0, ''), -- Sayge
(6187, 2, 0, 'I risk my own life and free him so that he may prove his innocence.  If I can, I''ll help him in any way.', 0, 0, ''), -- Sayge
(2101, 0, 0, 'Where is the zeppelin now?', 0, 0, ''), -- Hin Denburg
(12050, 0, 3, 'I require rogue training.', 0, 0, ''), -- -Unknown-
(12341, 0, 3, 'I seek training in the ways of the Hunter.', 0, 0, ''), -- -Unknown-
(10986, 0, 3, 'I require priest training.', 0, 0, ''), -- -Unknown-
(12193, 10, 3, 'Train me in Tailoring.', 0, 0, ''), -- -Unknown-
(10659, 0, 0, '<Merge with the spirit.>', 0, 0, ''), -- -Unknown-
(10658, 0, 0, 'Yes Archmage. I will hide the stone.', 0, 0, ''), -- -Unknown-
(6210, 0, 0, 'I would show my liege the beast''s ear and claim the beast''s death as my own, taking the reward for my own use.  It is wrong to claim a deed as your own that someone else in fact did.', 0, 0, ''), -- Sayge
(6210, 1, 0, 'I would show my liege the beast''s ear and claim the beast''s death as my own - after all, I did slay it.  I would then offer some of the reward to the destitute knight to help his family.', 0, 0, ''), -- Sayge
(6210, 2, 0, 'I would remain silent about the kill and allow the knight to claim the reward to aid his family.', 0, 0, ''), -- Sayge
(3781, 0, 0, 'Tell me about Alterac Valley.', 0, 0, ''), -- Stormpike Herald
(3781, 1, 0, 'Tell me about graveyards.', 0, 0, ''), -- Stormpike Herald
(3781, 2, 0, 'Tell me about mines.', 0, 0, ''), -- Stormpike Herald
(3781, 3, 0, 'Tell me about towers.', 0, 0, ''), -- Stormpike Herald
(5692, 0, 0, 'Tell me of Captain Galvangar.', 0, 0, ''), -- Stormpike Herald
(5692, 1, 0, 'Tell me of Drek''Thar.', 0, 0, ''), -- Stormpike Herald
(5692, 2, 0, 'Tell me of Frostwolf Keep.', 0, 0, ''), -- Stormpike Herald
(5692, 3, 0, 'Tell me of Captain Balinda Stonehearth.', 0, 0, ''), -- Stormpike Herald
(5692, 4, 0, 'Tell me of Vanndar Stormpike.', 0, 0, ''), -- Stormpike Herald
(5692, 5, 0, 'Tell me of Dun Baldar.', 0, 0, ''), -- Stormpike Herald
(5697, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5697, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5699, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5699, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5706, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5706, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5693, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5693, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5695, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5695, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5705, 0, 0, 'Tell me again about Alterac Valley...', 0, 0, ''), -- Stormpike Herald
(5705, 1, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5669, 0, 0, 'Who controls the Stormpike Aid Station?', 0, 0, ''), -- Stormpike Herald
(5669, 1, 0, 'Who controls the Stormpike Graveyard?', 0, 0, ''), -- Stormpike Herald
(5669, 2, 0, 'Who controls the Stonehearth Graveyard?', 0, 0, ''), -- Stormpike Herald
(5669, 3, 0, 'Who controls the Snowfall Graveyard?', 0, 0, ''), -- Stormpike Herald
(5669, 4, 0, 'Who controls the Iceblood Graveyard?', 0, 0, ''), -- Stormpike Herald
(5669, 5, 0, 'Who controls the Frostwolf Graveyard?', 0, 0, ''), -- Stormpike Herald
(5669, 6, 0, 'Who controls the Frostwolf Relief Hut?', 0, 0, ''), -- Stormpike Herald
(5668, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5668, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5223, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5223, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5621, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5621, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5225, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5225, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5671, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5671, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5227, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5227, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5670, 0, 0, 'Tell me again about graveyards...', 0, 0, ''), -- Stormpike Herald
(5670, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5673, 0, 0, 'Who controls the Irondeep Mine?', 0, 0, ''), -- Stormpike Herald
(5673, 1, 0, 'Who controls the Coldtooth Mine?', 0, 0, ''), -- Stormpike Herald
(5003, 0, 0, 'Tell me again about the mines...', 0, 0, ''), -- Stormpike Herald
(5003, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5002, 0, 0, 'Tell me again about the mines...', 0, 0, ''), -- Stormpike Herald
(5002, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5674, 0, 0, 'Who controls the Dun Baldar South Bunker?', 0, 0, ''), -- Stormpike Herald
(5674, 1, 0, 'Who controls the Dun Baldar North Bunker?', 0, 0, ''), -- Stormpike Herald
(5674, 2, 0, 'Who controls the Icewing Bunker?', 0, 0, ''), -- Stormpike Herald
(5674, 3, 0, 'Who controls the Stonehearth Bunker?', 0, 0, ''), -- Stormpike Herald
(5674, 4, 0, 'Who controls the West Frostwolf Tower?', 0, 0, ''), -- Stormpike Herald
(5674, 5, 0, 'Who controls East Frostwolf Tower?', 0, 0, ''), -- Stormpike Herald
(5674, 6, 0, 'Who controls Tower Point?', 0, 0, ''), -- Stormpike Herald
(5674, 7, 0, 'Who controls the Iceblood Tower?', 0, 0, ''), -- Stormpike Herald
(5674, 8, 0, 'Who controls the West Frostwolf Tower?', 0, 0, ''), -- Stormpike Herald
(5676, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5676, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5677, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5677, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5678, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5678, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5679, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5679, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5680, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5680, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5681, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5681, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5682, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5682, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5683, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5683, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5684, 0, 0, 'Tell me again about towers...', 0, 0, ''), -- Stormpike Herald
(5684, 2, 0, 'Tell me about something else...', 0, 0, ''), -- Stormpike Herald
(5146, 0, 0, 'I got your back, Ichman. GO GO GO!', 0, 0, ''), -- Wing Commander Ichman
(11822, 0, 5, 'Make this inn your home.', 0, 0, ''), -- -Unknown-
(11822, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- -Unknown-
(7820, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- Lebowski
(7448, 0, 1, 'Show me what I''ve earned the right to purchase.', 0, 0, ''), -- Logistics Officer Ulrike
(8544, 0, 0, '<back>', 0, 0, ''), -- Warrant Officer Tracy Proudwell
(2001, 0, 11, 'Help me choose wisely.', 0, 0, ''), -- -Unknown-
(12010, 0, 3, 'I seek more training in the priestly ways.', 0, 0, ''), -- -Unknown-
(12010, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(9418, 0, 0, 'Let''s do this, Thassarian.  It''s now or never.', 0, 0, ''), -- Thassarian
(5667, 1, 0, 'Why should I bother fixing the trap?  Why not just eliminate the guard the old fashioned way?', 0, 0, ''), -- Knot Thimblejack
(9427, 0, 5, 'Make this inn your home.', 0, 0, ''), -- "Charlie" Northtop
(9427, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- "Charlie" Northtop
(1970, 1, 0, 'You''re good for nothing, Ribbly.  It''s time to pay for your wickedness!', 0, 0, ''), -- Ribbly Screwspigot
(9190, 0, 0, 'Search for the pilot''s insignia.', 0, 0, ''), -- Fizzcrank Recon Pilot
(9683, 1, 0, 'Kara, I need to be flown out to the Dens of Dying to find Bixie.', 0, 0, ''), -- Kara Thricestar
(11767, 2, 0, 'I wish to know about Dual Talent Specialization.', 0, 0, ''), -- -Unknown-
(11238, 0, 0, 'These ogres are on our side?', 0, 0, ''), -- -Unknown-
(1964, 0, 1, 'I would like to buy from you.', 0, 0, ''), -- Jangdor Swiftstrider
(10994, 1, 0, 'Where would one go about finding damsels?', 0, 0, ''), -- -Unknown-
(11036, 0, 0, 'I''d like to return to Marshal''s Stand, please.', 0, 0, ''), -- -Unknown-
(11036, 1, 0, 'Who are you?', 0, 0, ''), -- -Unknown-
(11060, 0, 0, 'What are you doing here?', 0, 0, ''), -- -Unknown-
(11059, 0, 0, 'Tests?  What kind of tests?', 0, 0, ''), -- -Unknown-
(11058, 0, 0, 'His creations?  So you''re saying that all the creatures here in the crater are Khaz''goroth''s creations?', 0, 0, ''), -- -Unknown-
(11057, 0, 0, 'Why are you telling me all of this?', 0, 0, ''), -- -Unknown-
(11056, 0, 0, 'Nablya, I must ask... did Khaz''goroth create me and the rest of my race?', 0, 0, ''), -- -Unknown-
(11055, 0, 0, 'Thank you Nablya.', 0, 0, ''), -- -Unknown-
(11043, 0, 0, 'What can you teach me, Stomper?', 0, 0, ''), -- Un''Goro Stomper
(11042, 0, 0, 'I understand.  Thank you.', 0, 0, ''), -- Un''Goro Stomper
(11041, 0, 0, 'What can you teach me, Gorilla?', 0, 0, ''), -- Un''Goro Gorilla
(11040, 0, 0, 'I understand.  Thank you.', 0, 0, ''), -- Un''Goro Gorilla
(11054, 0, 0, 'What can you teach me, Gorilla?', 0, 0, ''), -- U''cha
(11039, 0, 0, 'What can you teach me, Thunderer?', 0, 0, ''), -- Un''Goro Thunderer
(11038, 0, 0, 'I understand.  Thank you.', 0, 0, ''), -- Un''Goro Thunderer
(11037, 1, 0, 'I''d like to return to The Shaper''s Terrace.', 0, 0, ''), -- -Unknown-
(9841, 0, 0, 'Are you okay? I''ve come to take you back to Frosthold if you can stand.', 0, 0, ''), -- Frostborn Scout
(9842, 0, 0, 'I''m sorry that I didn''t get here sooner. What happened?', 0, 0, ''), -- Frostborn Scout
(9843, 0, 0, 'I''ll go get some help. Hang in there.', 0, 0, ''), -- Frostborn Scout
(8760, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- Rohok
(11437, 0, 5, 'Make this inn your home.', 0, 0, ''), -- -Unknown-
(11437, 1, 1, 'I would like to buy from you.', 0, 0, ''), -- -Unknown-
(11874, 0, 0, 'Come with me, your highness.', 0, 0, ''), -- Anduin Wrynn
(11874, 1, 0, 'Come with me, your highness.', 0, 0, ''), -- Anduin Wrynn
(11909, 0, 0, 'It''s over, Samuelson. We know who you are and I put a stop to your little cathedral scheme.', 0, 0, ''), -- Major Samuelson
(12042, 0, 0, 'Here are some spare parts. I''ll cover you while you make repairs!', 0, 0, ''), -- -Unknown-
(12055, 0, 0, 'I''m ready. Let''s go!', 0, 0, ''), -- -Unknown-
(12113, 0, 0, 'Yeah...', 0, 0, ''), -- -Unknown-
(12114, 0, 0, 'You seem very certain.', 0, 0, ''), -- -Unknown-
(12115, 0, 0, 'And I take it you''re going again...', 0, 0, ''), -- -Unknown-
(12116, 0, 0, 'Well, let''s get to it then.', 0, 0, ''), -- -Unknown-
(12139, 0, 0, 'Eoin, there''s a full well right there.', 0, 0, ''), -- -Unknown-
(12143, 0, 0, 'I''m in.', 0, 0, ''), -- -Unknown-
(12130, 0, 0, 'Let''s go!', 0, 0, ''), -- -Unknown-
(12409, 0, 0, 'I''m ready to fight him!', 0, 0, ''), -- -Unknown-
(12451, 0, 0, 'I''m ready, Russell. Let''s write a song!', 0, 0, ''), -- -Unknown-
(12455, 0, 0, '[Romantic:] \"Wise.\"', 0, 0, ''), -- -Unknown-
(12455, 1, 0, '[Silly:] \"Pint-Sized.\"', 0, 0, ''), -- -Unknown-
(12455, 2, 0, '[Bawdy:] \"Thighs!\"', 0, 0, ''), -- -Unknown-
(12456, 0, 0, '[Romantic:] \"Blessed.\"', 0, 0, ''), -- -Unknown-
(12456, 1, 0, '[Silly:] \"Arrest.\"', 0, 0, ''), -- -Unknown-
(12456, 2, 0, '[Bawdy:] \"...Chest?', 0, 0, ''), -- -Unknown-
(12457, 0, 0, '[Romantic:] \"Alight.\"', 0, 0, ''), -- -Unknown-
(12457, 1, 0, '[Silly:] \"Knifefight.\"', 0, 0, ''), -- -Unknown-
(12457, 2, 0, '[Bawdy:] \"Tight!\"', 0, 0, ''), -- -Unknown-
(12459, 0, 0, 'I''m here to escort a delivery to Kirthaven.', 0, 0, ''), -- -Unknown-
(12920, 0, 3, 'I require priest training.', 0, 0, ''), -- -Unknown-
(12920, 1, 0, 'I wish to unlearn my talents.', 0, 0, ''), -- -Unknown-
(10860, 0, 0, 'We''re ready! Let''s go!', 0, 0, ''), -- Lady Jaina Proudmoore
(9983, 0, 9, 'I would like to go to the battleground.', 0, 0, ''), -- Strand of the Ancients Envoy
(10366, 0, 0, 'Activate secondary defensive systems.', 0, 0, ''), -- Lore Keeper of Norgannon
(10477, 0, 0, 'Confirmed.', 0, 0, ''), -- Lore Keeper of Norgannon
(10335, 0, 0, 'Lend us your aid, keeper. Together we will defeat Yogg-Saron.', 0, 0, ''), -- Hodir
(10333, 0, 0, 'Yes.', 0, 0, ''), -- Hodir
(10337, 0, 0, 'Lend us your aid, keeper. Together we will defeat Yogg-Saron.', 0, 0, ''), -- Thorim
(10336, 0, 0, 'Lend us your aid, keeper. Together we will defeat Yogg-Saron.', 0, 0, ''), -- Mimiron
(10332, 0, 0, 'Yes.', 0, 0, ''), -- Mimiron
(10334, 0, 0, 'Yes.', 0, 0, ''), -- Thorim
(9084, 0, 3, 'Flying machines?', 0, 0, ''), -- Jonathan Garrett
(9084, 1, 0, 'Do you often squeeze gnomes?', 0, 0, ''), -- Jonathan Garrett
(9085, 0, 3, 'That''s... great.  What about these flying machines?', 0, 0, ''), -- Jonathan Garrett
(9085, 1, 0, 'Thanks!  I''ll try it right now.', 0, 0, ''), -- Jonathan Garrett
(8386, 0, 1, 'Let me see your wares.', 0, 0, ''), -- Grokom Deatheye
(8371, 0, 0, 'Search the corpse for Kagrosh''s pack.', 0, 0, ''), -- Kagrosh
(13047, 0, 2, 'I''d like to travel by air.', 0, 0, ''), -- Bat Handler Adeline
(9619, 0, 0, 'How does this work?', 0, 0, ''), -- Ethereal Soul-Trader
(9619, 1, 1, 'Show me what you have to trade.', 0, 0, ''), -- Ethereal Soul-Trader
(4004, 1, 1, 'I would like to buy from you.', 0, 0, ''); -- -Unknown-

UPDATE `gossip_menu_option` SET `option_text`='I wish to train.
' WHERE `menu_id`=4023 AND `id`=0; -- Holt Thunderhorn
UPDATE `gossip_menu_option` SET `option_text`='I have killed many of your ogres, Lantresor. I have no fear.
' WHERE `menu_id`=7675 AND `id`=0; -- Lantresor of the Blade
UPDATE `gossip_menu_option` SET `option_text`='My apologies. I did not mean to offend. I am here on behalf of my people.
' WHERE `menu_id`=7679 AND `id`=0; -- Lantresor of the Blade
UPDATE `gossip_menu_option` SET `option_text`='Wait, back up. What was that last thing you said?' WHERE `menu_id`=9182 AND `id`=0; -- Fizzcrank Fullthrottle
UPDATE `gossip_menu_option` SET `option_text`='Train me.' WHERE `menu_id`=9893 AND `id`=0; -- Geba'li
UPDATE `gossip_menu_option` SET `option_text`='Train me.' WHERE `menu_id`=10115 AND `id`=0; -- Raenah
UPDATE `gossip_menu_option` SET `option_text`='<Continue reading...>' WHERE `menu_id`=7989 AND `id`=0; -- The Codex of Blood


DELETE FROM `creature_equip_template` WHERE `entry` IN (20388, 37671, 27810, 4543, 6488, 44556, 44560, 44561, 44563, 36410, 14229, 46232, 46233, 46247, 46234, 12225, 31285, 54345, 51532, 36565, 36272, 36296, 37715, 51613, 40702, 40705, 30017, 30020, 30022, 18547, 38065, 37214, 16502, 16535, 17071, 17425, 14325, 14351, 11501, 7354, 44287, 38006, 38032, 38968, 14874, 18672, 44895, 47739, 49541, 35371, 35567, 35565, 35563, 35583, 35595, 7427, 33569, 34012, 34117, 34118, 34013, 34126, 34136, 34052, 33944, 34101, 33837, 12860, 33977, 33807, 33914, 33945, 51814, 44814, 51533, 51792, 5118, 12197, 44690, 51541, 10683, 10258, 10264, 11677, 13086, 13317, 18396, 11467, 18192, 21474, 44815, 18666, 45052, 38703, 38704, 44759, 40876, 40875, 11121, 4643, 43931, 39608, 27359, 14981, 39835, 41480, 42892, 44956, 44998, 47326, 46432, 46886, 46976, 47292, 47690, 47703, 47974, 44816, 46945, 46143, 46527, 46526, 46553, 46583, 46585, 46616, 46627, 46626, 46628, 50593, 46625, 47188, 51468, 48194, 48174, 48173, 48176, 48170, 48175, 48257, 48368, 48365, 48475, 48477, 48473, 48474, 48472, 48498, 48480, 36152, 27171, 32901, 32893, 32897, 32900, 32883, 32907, 33436, 21500, 21784, 9877, 30590, 32576, 25618, 27175, 25955, 11803);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(20388, 27405, 27406, 0), -- Althallen Brightblade
(37671, 2809, 0, 34034), -- Crown Supply Guard
(27810, 33161, 0, 0), -- Brew Vendor
(4543, 2177, 0, 0), -- Bloodmage Thalnos
(6488, 5491, 0, 0), -- Fallen Champion
(44556, 28487, 0, 0), -- -Unknown-
(44560, 28487, 0, 0), -- -Unknown-
(44561, 28487, 0, 0), -- -Unknown-
(44563, 28487, 0, 0), -- -Unknown-
(36410, 1899, 143, 2551), -- -Unknown-
(14229, 57830, 0, 0), -- Accursed Slitherblade
(46232, 3346, 0, 0), -- -Unknown-
(46233, 13751, 0, 0), -- -Unknown-
(46247, 1910, 1910, 0), -- -Unknown-
(46234, 54824, 2714, 0), -- -Unknown-
(12225, 13336, 0, 0), -- Celebras the Cursed
(31285, 34681, 0, 0), -- (Wrathgate Horde) Warsong Elite
(54345, 2703, 0, 0), -- -Unknown-
(51532, 22210, 22211, 58173), -- -Unknown-
(36565, 45214, 0, 0), -- Apothecary Baxter
(36272, 52358, 3698, 0), -- Apothecary Frye
(36296, 45214, 0, 0), -- Apothecary Hummel
(37715, 12850, 12851, 0), -- Snivel Rustrocket
(51613, 2809, 0, 34034), -- -Unknown-
(40702, 2147, 2081, 0), -- -Unknown-
(40705, 2147, 2081, 0), -- -Unknown-
(30017, 41691, 41691, 0), -- Stinkbeard
(30020, 41695, 0, 0), -- Orinoko Tuskbreaker
(30022, 41764, 41764, 0), -- Vladof the Butcher
(18547, 12751, 0, 0), -- Scryer Arcanist
(38065, 2809, 0, 34034), -- Crown Supply Sentry
(37214, 2809, 0, 34034), -- Crown Lackey
(16502, 29687, 0, 0), -- Zalduun
(16535, 24014, 0, 0), -- Vindicator Aldar
(17071, 1911, 0, 0), -- Technician Zhanaa
(17425, 29667, 0, 5258), -- Vale Hunter
(14325, 5287, 0, 0), -- Captain Kromcrush
(14351, 14527, 0, 0), -- Gordok Bushwacker
(11501, 13316, 0, 0), -- King Gordok
(7354, 11087, 0, 0), -- Ragglesnout
(44287, 2703, 0, 0), -- -Unknown-
(38006, 2809, 0, 34034), -- Crown Hoodlum
(38032, 2809, 0, 34034), -- Crown Sprayer
(38968, 11086, 9379, 0), -- -Unknown-
(14874, 12744, 0, 0), -- Karu
(18672, 1903, 0, 0), -- Thomas Yance
(44895, 60957, 0, 0), -- -Unknown-
(47739, 65171, 0, 0), -- -Unknown-
(49541, 18816, 18816, 0), -- -Unknown-
(35371, 6224, 0, 0), -- -Unknown-
(35567, 13750, 0, 0), -- -Unknown-
(35565, 25839, 0, 0), -- -Unknown-
(35563, 13165, 0, 0), -- -Unknown-
(35583, 2183, 0, 0), -- -Unknown-
(35595, 18122, 0, 0), -- -Unknown-
(7427, 5301, 0, 0), -- Taim Ragetotem
(33569, 13165, 0, 25241), -- -Unknown-
(34012, 0, 0, 25241), -- -Unknown-
(34117, 13165, 0, 5258), -- -Unknown-
(34118, 12285, 0, 0), -- -Unknown-
(34013, 13165, 0, 5258), -- -Unknown-
(34126, 13165, 0, 5258), -- -Unknown-
(34136, 1905, 1957, 5260), -- -Unknown-
(34052, 1905, 1957, 5260), -- -Unknown-
(33944, 1905, 1957, 5260), -- -Unknown-
(34101, 13165, 0, 5258), -- -Unknown-
(33837, 34638, 0, 0), -- -Unknown-
(12860, 13632, 0, 0), -- Duriel Moonfire
(33977, 12959, 0, 0), -- -Unknown-
(33807, 1910, 0, 0), -- -Unknown-
(33914, 5278, 0, 25241), -- -Unknown-
(33945, 13165, 0, 5258), -- -Unknown-
(51814, 1905, 1957, 5260), -- -Unknown-
(44814, 52071, 0, 0), -- -Unknown-
(51533, 1983, 0, 15460), -- -Unknown-
(51792, 2178, 1984, 2551), -- -Unknown-
(5118, 12883, 12980, 0), -- Brogun Stoneshield
(12197, 2557, 0, 0), -- Glordrum Steelbeard
(44690, 27496, 0, 34269), -- -Unknown-
(51541, 23241, 23241, 24326), -- -Unknown-
(10683, 10825, 0, 0), -- Rookery Hatcher
(10258, 10825, 0, 0), -- Rookery Guardian
(10264, 2023, 0, 0), -- Solakar Flamewreath
(11677, 11322, 0, 0), -- Taskmaster Snivvle
(13086, 14533, 12980, 5260), -- Aggi Rumblestomp
(13317, 1910, 0, 0), -- Coldmine Miner
(18396, 0, 0, 5870), -- Boulderfist Saboteur
(11467, 12298, 12298, 0), -- Tsu'zee
(18192, 27405, 27406, 5259), -- Horde Halaani Guard
(21474, 23225, 0, 0), -- Coreiel
(44815, 52521, 52518, 0), -- -Unknown-
(18666, 2177, 0, 0), -- Dalaran Sorceress
(45052, 10756, 0, 0), -- -Unknown-
(38703, 0, 0, 50149), -- -Unknown-
(38704, 34282, 34282, 0), -- -Unknown-
(44759, 5305, 1985, 0), -- -Unknown-
(40876, 55192, 55192, 0), -- -Unknown-
(40875, 55193, 55194, 0), -- -Unknown-
(11121, 12882, 0, 0), -- Black Guard Swordsmith
(4643, 1899, 0, 0), -- Magram Pack Runner
(43931, 59063, 0, 0), -- -Unknown-
(39608, 10756, 0, 0), -- -Unknown-
(27359, 3367, 0, 0), -- Trapped Wintergarde Villager
(14981, 5598, 0, 0), -- Elfarran
(39835, 52716, 0, 0), -- -Unknown-
(41480, 63052, 0, 0), -- -Unknown-
(42892, 58137, 57763, 0), -- -Unknown-
(44956, 58137, 57763, 0), -- -Unknown-
(44998, 58804, 0, 0), -- -Unknown-
(47326, 60765, 0, 0), -- -Unknown-
(46432, 3433, 0, 0), -- -Unknown-
(46886, 30697, 0, 5258), -- -Unknown-
(46976, 31824, 0, 0), -- -Unknown-
(47292, 2716, 0, 0), -- -Unknown-
(47690, 1959, 0, 0), -- -Unknown-
(47703, 32915, 0, 0), -- -Unknown-
(47974, 1959, 0, 61967), -- -Unknown-
(44816, 58803, 0, 0), -- -Unknown-
(46945, 14822, 0, 0), -- -Unknown-
(46143, 10591, 58938, 0), -- -Unknown-
(46527, 56071, 56071, 57176), -- -Unknown-
(46526, 52521, 52517, 0), -- -Unknown-
(46553, 57018, 57018, 0), -- -Unknown-
(46583, 57018, 57018, 0), -- -Unknown-
(46585, 57018, 57018, 0), -- -Unknown-
(46616, 57009, 0, 0), -- -Unknown-
(46627, 57018, 57018, 0), -- -Unknown-
(46626, 12901, 0, 0), -- -Unknown-
(46628, 62032, 58938, 0), -- -Unknown-
(50593, 56172, 0, 0), -- -Unknown-
(46625, 57009, 0, 0), -- -Unknown-
(47188, 10591, 0, 0), -- -Unknown-
(51468, 14533, 0, 5260), -- -Unknown-
(48194, 57013, 0, 0), -- -Unknown-
(48174, 31824, 0, 0), -- -Unknown-
(48173, 57762, 0, 0), -- -Unknown-
(48176, 17040, 0, 0), -- -Unknown-
(48170, 14533, 14533, 0), -- -Unknown-
(48175, 21837, 0, 0), -- -Unknown-
(48257, 59063, 0, 0), -- -Unknown-
(48368, 24384, 0, 0), -- -Unknown-
(48365, 30445, 0, 0), -- -Unknown-
(48475, 39865, 0, 0), -- -Unknown-
(48477, 62032, 0, 0), -- -Unknown-
(48473, 14533, 14533, 0), -- -Unknown-
(48474, 36509, 0, 0), -- -Unknown-
(48472, 57762, 0, 0), -- -Unknown-
(48498, 56844, 0, 0), -- -Unknown-
(48480, 36500, 0, 0), -- -Unknown-
(36152, 1493, 0, 0), -- Navigator Saracen
(27171, 3350, 0, 0), -- Chilltusk Forager
(32901, 42389, 0, 0), -- Ellie Nightfeather
(32893, 42345, 42524, 0), -- Missy Flamecuffs
(32897, 44418, 0, 0), -- Field Medic Penny
(32900, 42351, 42569, 0), -- Elementalist Avuun
(32883, 30182, 0, 21554), -- Captured Mercenary Soldier
(32907, 43175, 18826, 0), -- Captured Mercenary Captain
(33436, 10616, 10616, 0), -- Garona
(21500, 31274, 0, 0), -- Morgroron
(21784, 30715, 0, 0), -- Ghostrider of Karabor
(9877, 56229, 56229, 0), -- Prince Xavalis
(30590, 21580, 0, 0), -- Godo Cloudcleaver
(32576, 34058, 0, 0), -- Orabus the Helmsman
(25618, 34899, 0, 0), -- Varidus the Flenser
(27175, 29442, 0, 6231), -- Transitus Shield Warmage
(25955, 35220, 0, 0), -- Hand of the Deceiver Sunwell
(11803, 13222, 12861, 0); -- Twilight Keeper Exeter

UPDATE `creature_equip_template` SET `itemEntry1`=34682 WHERE `entry`=31295; -- (Wrathgate Horde) Darkspear
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=40779; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry2`=57016 WHERE `entry`=47146; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=53436; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1899 WHERE `entry`=39005; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=24017, `itemEntry2`=24331 WHERE `entry`=16733; -- Exodar Peacekeeper
UPDATE `creature_equip_template` SET `itemEntry1`=1910, `itemEntry2`=0 WHERE `entry`=16727; -- Padaar
UPDATE `creature_equip_template` SET `itemEntry1`=2197 WHERE `entry`=829; -- Adlin Pridedrift
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=43464; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1907, `itemEntry2`=0 WHERE `entry`=347; -- Grizzle Halfmane
UPDATE `creature_equip_template` SET `itemEntry1`=1906 WHERE `entry`=39870; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1906 WHERE `entry`=40270; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=37 WHERE `entry`=51128; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=12629 WHERE `entry`=14901; -- Peon
UPDATE `creature_equip_template` SET `itemEntry1`=1899 WHERE `entry`=1976; -- Stormwind City Patroller
UPDATE `creature_equip_template` SET `itemEntry1`=31311 WHERE `entry`=42296; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry3`=44635 WHERE `entry`=32710; -- Garl Grimgrizzle
UPDATE `creature_equip_template` SET `itemEntry1`=1901 WHERE `entry`=16864; -- Stormwind Infantry
UPDATE `creature_equip_template` SET `itemEntry2`=13611 WHERE `entry`=19012; -- Sparik
UPDATE `creature_equip_template` SET `itemEntry2`=27851 WHERE `entry`=19071; -- Telaari Elekk Rider
UPDATE `creature_equip_template` SET `itemEntry2`=27851 WHERE `entry`=18488; -- Telaari Watcher
UPDATE `creature_equip_template` SET `itemEntry1`=3346 WHERE `entry`=18240; -- Sunspring Villager
UPDATE `creature_equip_template` SET `itemEntry1`=5293 WHERE `entry`=17134; -- Boulderfist Crusher
UPDATE `creature_equip_template` SET `itemEntry1`=34682 WHERE `entry`=27665; -- Kor'kron Pillager
UPDATE `creature_equip_template` SET `itemEntry1`=34816 WHERE `entry`=25521; -- Skadir Longboatsman
UPDATE `creature_equip_template` SET `itemEntry2`=3757 WHERE `entry`=27301; -- Apprentice Trotter
UPDATE `creature_equip_template` SET `itemEntry1`=2196, `itemEntry2`=13406 WHERE `entry`=16585; -- Cookie One-Eye
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=40778; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=2715, `itemEntry2`=0 WHERE `entry`=27290; -- Hungering Dead
UPDATE `creature_equip_template` SET `itemEntry1`=1905 WHERE `entry`=26708; -- Silverbrook Villager
UPDATE `creature_equip_template` SET `itemEntry1`=43623, `itemEntry2`=0 WHERE `entry`=28586; -- General Bjarngrim
UPDATE `creature_equip_template` SET `itemEntry1`=12944, `itemEntry2`=143 WHERE `entry`=16842; -- Honor Hold Defender
UPDATE `creature_equip_template` SET `itemEntry1`=55224 WHERE `entry`=44855; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=49198 WHERE `entry`=43138; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=57186 WHERE `entry`=43229; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=65663 WHERE `entry`=39625; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=31824 WHERE `entry`=13000; -- Gnome Engineer
UPDATE `creature_equip_template` SET `itemEntry1`=2827 WHERE `entry`=18765; -- Durnholde Cook
UPDATE `creature_equip_template` SET `itemEntry1`=40595 WHERE `entry`=38493; -- Argent Crusader
UPDATE `creature_equip_template` SET `itemEntry1`=0, `itemEntry2`=0 WHERE `entry`=27588; -- 7th Legion Elite
UPDATE `creature_equip_template` SET `itemEntry1`=27405, `itemEntry2`=24328 WHERE `entry`=19792; -- Eclipsion Centurion
UPDATE `creature_equip_template` SET `itemEntry1`=29417 WHERE `entry`=22018; -- Eclipsion Cavalier
UPDATE `creature_equip_template` SET `itemEntry1`=2705 WHERE `entry`=44299; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=34638, `itemEntry2`=0 WHERE `entry`=25242; -- Warsong Battleguard
UPDATE `creature_equip_template` SET `itemEntry1`=36792 WHERE `entry`=27560; -- Darkspear Spear Thrower
UPDATE `creature_equip_template` SET `itemEntry1`=1925 WHERE `entry`=28126; -- Don Carlos
UPDATE `creature_equip_template` SET `itemEntry3`=44635 WHERE `entry`=32711; -- Warp-Huntress Kula
UPDATE `creature_model_info` SET `bounding_radius`=4.2, `combat_reach`=7.5 WHERE `modelid`=39182; -- 39182
UPDATE `creature_model_info` SET `bounding_radius`=0.1919661, `combat_reach`=0.4387797 WHERE `modelid`=6368; -- 6368
UPDATE `creature_model_info` SET `bounding_radius`=0.75, `combat_reach`=1.5 WHERE `modelid`=24719; -- 24719
UPDATE `creature_model_info` SET `bounding_radius`=0.7056, `combat_reach`=0.6 WHERE `modelid`=607; -- 607
UPDATE `creature_model_info` SET `bounding_radius`=1.016542, `combat_reach`=0.8644068 WHERE `modelid`=6807; -- 6807
UPDATE `creature_model_info` SET `bounding_radius`=0.4340275, `combat_reach`=1.875 WHERE `modelid`=31211; -- 31211
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=38705; -- 38705
UPDATE `creature_model_info` SET `bounding_radius`=0.2080678 WHERE `modelid`=30302; -- 30302
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `combat_reach`=2 WHERE `modelid`=27706; -- 27706
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=5560; -- 5560
UPDATE `creature_model_info` SET `bounding_radius`=0.15, `combat_reach`=0.45 WHERE `modelid`=7470; -- 7470
UPDATE `creature_model_info` SET `bounding_radius`=0.2679661 WHERE `modelid`=36388; -- 36388
UPDATE `creature_model_info` SET `bounding_radius`=0.8745, `combat_reach`=1.65 WHERE `modelid`=599; -- 599
UPDATE `creature_model_info` SET `combat_reach`=0.9254237 WHERE `modelid`=18933; -- 18933
UPDATE `creature_model_info` SET `combat_reach`=1.283898 WHERE `modelid`=2437; -- 2437
UPDATE `creature_model_info` SET `bounding_radius`=0.1809322, `combat_reach`=0.7754238 WHERE `modelid`=4734; -- 4734
UPDATE `creature_model_info` SET `bounding_radius`=1.05, `combat_reach`=0.875 WHERE `modelid`=1100; -- 1100
UPDATE `creature_model_info` SET `bounding_radius`=0.34, `combat_reach`=2 WHERE `modelid`=1269; -- 1269
UPDATE `creature_model_info` SET `bounding_radius`=1.305085, `combat_reach`=1.631356 WHERE `modelid`=32022; -- 32022
UPDATE `creature_model_info` SET `bounding_radius`=1.305085, `combat_reach`=1.631356 WHERE `modelid`=32025; -- 32025
UPDATE `creature_model_info` SET `bounding_radius`=1.305085, `combat_reach`=1.631356 WHERE `modelid`=32023; -- 32023
UPDATE `creature_model_info` SET `bounding_radius`=0.2506271 WHERE `modelid`=30963; -- 30963
UPDATE `creature_model_info` SET `bounding_radius`=0.31, `combat_reach`=1 WHERE `modelid`=27358; -- 27358
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=25755; -- 25755
UPDATE `creature_model_info` SET `bounding_radius`=1.2 WHERE `modelid`=30408; -- 30408
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=32063; -- 32063
UPDATE `creature_model_info` SET `bounding_radius`=0.19125, `combat_reach`=0.9375 WHERE `modelid`=21698; -- 21698
UPDATE `creature_model_info` SET `bounding_radius`=1.4, `combat_reach`=1.75 WHERE `modelid`=9570; -- 9570
UPDATE `creature_model_info` SET `bounding_radius`=1.245763, `combat_reach`=1.557203 WHERE `modelid`=1938; -- 1938
UPDATE `creature_model_info` SET `bounding_radius`=0.408, `combat_reach`=1.2 WHERE `modelid`=2289; -- 2289
UPDATE `creature_model_info` SET `gender`=2 WHERE `modelid`=11452; -- 11452
UPDATE `creature_model_info` SET `bounding_radius`=0.8067796, `combat_reach`=1.008475 WHERE `modelid`=1307; -- 1307
UPDATE `creature_model_info` SET `bounding_radius`=0.85, `combat_reach`=1.0625 WHERE `modelid`=641; -- 641
UPDATE `creature_model_info` SET `bounding_radius`=0.28, `combat_reach`=1.2 WHERE `modelid`=16724; -- 16724
UPDATE `creature_model_info` SET `bounding_radius`=0.28, `combat_reach`=1.2 WHERE `modelid`=4566; -- 4566
UPDATE `creature_model_info` SET `bounding_radius`=1.4, `combat_reach`=1.75 WHERE `modelid`=999; -- 999
UPDATE `creature_model_info` SET `bounding_radius`=0.25, `combat_reach`=0.5 WHERE `modelid`=38498; -- 38498
UPDATE `creature_model_info` SET `bounding_radius`=0.6186441, `combat_reach`=0.6186441 WHERE `modelid`=1742; -- 1742
UPDATE `creature_model_info` SET `gender`=2 WHERE `modelid`=38252; -- 38252
UPDATE `creature_model_info` SET `bounding_radius`=1.2155, `combat_reach`=1.519375 WHERE `modelid`=1000; -- 1000
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=30212; -- 30212
UPDATE `creature_model_info` SET `bounding_radius`=1.088135, `combat_reach`=0.9067796 WHERE `modelid`=604; -- 604
UPDATE `creature_model_info` SET `bounding_radius`=0.2625, `combat_reach`=0.75 WHERE `modelid`=36150; -- 36150
UPDATE `creature_model_info` SET `bounding_radius`=0.2625, `combat_reach`=0.75 WHERE `modelid`=36148; -- 36148
UPDATE `creature_model_info` SET `bounding_radius`=0.1981356, `combat_reach`=0.5661017 WHERE `modelid`=36152; -- 36152
UPDATE `creature_model_info` SET `bounding_radius`=1.625, `combat_reach`=2.03125 WHERE `modelid`=6211; -- 6211
UPDATE `creature_model_info` SET `bounding_radius`=0.9762034, `combat_reach`=0.7830509 WHERE `modelid`=513; -- 513
UPDATE `creature_model_info` SET `bounding_radius`=0.3565, `combat_reach`=1.15 WHERE `modelid`=24698; -- 24698
UPDATE `creature_model_info` SET `bounding_radius`=0.3968, `combat_reach`=1.28 WHERE `modelid`=24978; -- 24978

UPDATE `npc_text` SET `text0_0`='The razing of Orgrimmar was not just an attack against orcs, it was an affront to the Horde. An assault against our very existence!$B$BThe Lich King sought to sow the seeds of fear.$B$BThis...$B$B<Garrosh points to the fortified walls that surround him.>$B$BThis is the result of Arthas''s campaign.$B$BThe Horde fears nothing...
' WHERE `ID`=12373; -- 12373
UPDATE `npc_text` SET `text0_0`='Fear has always been our greatest weapon. Entire wars have been won and lost upon the shifting shoulders of trepidation and doubt. So how, then, does one fight an enemy that knows no fear?$B$B<Saurfang shakes his head.>$B$BWe do not just fight the Scourge in Northrend, we fight to gain control of our senses before they tear us apart...
' WHERE `ID`=12381; -- 12381
UPDATE `npc_text` SET `text0_0`='Is your cause righteous and your heart true? If so, you are welcome here - among the druids for the ethical and humane treatment of animals. So long as you do not veer down the dark path of depravity and harm the animals that have allowed us to coexist within their world, D.E.H.T.A. will consider you an ally.
' WHERE `ID`=12485; -- 12485
UPDATE `npc_text` SET `text0_0`='Welcome, friend.

We have little to offer by way of supplies, but I will assist you however I can.' WHERE `ID`=16108; -- 16108
UPDATE `npc_text` SET `text0_0`='The Wildhammers have always embraced shamanism, aye, but to find ourselves beneath the sea as part of the Earthen Ring?

It would''ve taken more than a few tankards for me to believe that one, a year ago.' WHERE `ID`=16125; -- 16125
UPDATE `npc_text` SET `text0_1`='In my youth, my family did not approve of my interest in shamanism. Brash and foolish as I was, I ran away from them and practiced on my own.  Upon returning to my home one day, I found my parents gone. My home destroyed. They never found who did it.

I''ve spent my life striving to extend my shamanistic visions to see into the past - to find out what happened to my family and who is responsible. I''ve come a great way. I''ve learned to focus in on impactful events in the recent past, but I have much further to go if I ever hope to glimpse something that occurred so long ago.' WHERE `ID`=16270; -- 16270
UPDATE `npc_text` SET `text0_0`='Alexstrasza''s Drakes will pick us up on the other side of this abandoned excavation site. Check your weapons, this place stinks of an ambush.

Let me know when you''re ready to move out.' WHERE `ID`=18347; -- 18347
UPDATE `npc_text` SET `text0_0`='We, the Sons of Lothar, have remained here ever since - fighting... dying... praying that a day like today would come - a day when the Portal would open and our brothers would come to deliver us home.$B$BOverjoyed as we are, duty still calls. There is much to be done before we can depart this world and take our rest.
' WHERE `ID`=9933; -- 9933
UPDATE `npc_text` SET `text0_0`='Orcs. It seems I''ve been fighting them all my life.$B$BTwenty years ago we shattered the Horde and tore down the walls of their Hellfire Citadel. We drove the vile greenskins to the very brink! After that, other than a few skirmishes the broken orcs never again posed a threat to us.$B$BUntil now. 
' WHERE `ID`=9941; -- 9941
UPDATE `npc_text` SET `text1_0`='The dishes that Alegorn whips up are to die for.  He''s always busy preparing new delicacies over in the Craftsman''s Terrace.  Be sure to try his Cenarion Green recipe if he has any left.  

Now, if you don''t mind, I must investigate this rash of missing deer. ', `text1_1`='The dishes that Alegorn whips up are to die for.  He''s always busy preparing new delicacies over in the Craftsman''s Terrace.  Be sure to try his Cenarion Green recipe if he has any left.  

Now, if you don''t mind, I must investigate this rash of missing deer. ' WHERE `ID`=3036; -- 3036
UPDATE `npc_text` SET `text0_0`='In the time before time, what the usurpers would later call the First Age of Creation, my master and his siblings ruled over this world. It was they, the Old Gods, who created all.$B$BAnd it was they who would ultimately be cast down by those that would call themselves Shapers.
' WHERE `ID`=6843; -- 6843
UPDATE `npc_text` SET `text0_0`='Their manifest forms weak from eons of battle, imprisoned beneath the world - the world that they themselves created - the corruption of the Titan Shapers would permeate through the surface and befoul the Old Gods.$B$BIt was then and there that the brothers did turn. For five millennia a battle was fought at the core of this world.
' WHERE `ID`=6844; -- 6844
UPDATE `npc_text` SET `text0_0`='It was during the Elemental Sundering that the Firelord, Ragnaros, would seek to consume my Lord, Thunderaan, Prince of Air.$B$B<Demitrian bows his head, his face contorted in rage.>$B$BSpeak his name and I shall decorate this ravaged camp with your entrails. Be silent and listen.
' WHERE `ID`=6867; -- 6867
UPDATE `npc_text` SET `text0_0`='What little remained of Thunderaan''s essence was stored within a talisman of elemental binding. Ragnaros then shattered the talisman in two flawless pieces. The pieces assigned to his Lieutenants...
' WHERE `ID`=6870; -- 6870
UPDATE `npc_text` SET `text0_0`='We took her to the Commander with hopes that the druids of the Circle could fix her up. Sure enough, they were able to wake her up. We figured our business with the Circle was done and we could get back to work.$B$BA few weeks passed and everything was going fine. Brann was still around back then so we had a bit of order in our work structure. Then one day, out of the blue, she appeared back at our camp.
' WHERE `ID`=7757; -- 7757
UPDATE `npc_text` SET `text0_0`='Are you daft? Who else would I be talking about? Yes, the girl - Mistress Mar''alith. Anyhow, she was back and not in too good of a mood. That''s when the demands started flowing.
' WHERE `ID`=7758; -- 7758
UPDATE `npc_text` SET `text0_0`='Lorna said a truly brave adventurer helped rescue many of the horses near her family''s orchard.

I offered to take care of those that made it across the sea with us. I learned how from my mother and father, Light bless them!

Were you interested in a fine Gilnean steed...?', `text0_1`='Lorna said a truly brave adventurer helped rescue many of the horses near her family''s orchard.

I offered to take care of those that made it across the sea with us. I learned how from my mother and father, Light bless them!

Were you interested in a fine Gilnean steed...?' WHERE `ID`=18430; -- 18430
UPDATE `npc_text` SET `text0_0`='We have more than one enemy in Silithus, $N.$B$BWhile everyone''s attention is focused on the silithid, my big brother and I have been keeping a close eye on the Twilight''s Hammer crazies.

' WHERE `ID`=7797; -- 7797

UPDATE `creature_equip_template` SET `itemEntry1`=34681 WHERE `entry`=27665; -- Kor'kron Pillager
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=42218; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1906 WHERE `entry`=30380; -- Skybreaker Cannoneer
UPDATE `creature_equip_template` SET `itemEntry1`=12854 WHERE `entry`=27181; -- Qannik
UPDATE `creature_equip_template` SET `itemEntry1`=14535, `itemEntry2`=0 WHERE `entry`=27185; -- Kuk'uq
UPDATE `creature_equip_template` SET `itemEntry1`=2827, `itemEntry2`=3351 WHERE `entry`=16585; -- Cookie One-Eye
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=18278; -- Pilot Marsha
UPDATE `creature_equip_template` SET `itemEntry1`=14877, `itemEntry2`=14877 WHERE `entry`=19068; -- Garadar Wolf Rider
UPDATE `creature_equip_template` SET `itemEntry1`=6256 WHERE `entry`=17139; -- Windyreed Scavenger
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=19048; -- Stonebreaker Peon
UPDATE `creature_equip_template` SET `itemEntry1`=2023 WHERE `entry`=863; -- Stonard Hunter
UPDATE `creature_equip_template` SET `itemEntry1`=12329 WHERE `entry`=868; -- Stonard Shaman
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=20203; -- Nether Technician
UPDATE `creature_equip_template` SET `itemEntry1`=2716, `itemEntry2`=0 WHERE `entry`=24642; -- Drunken Northsea Pirate
UPDATE `creature_equip_template` SET `itemEntry1`=5292 WHERE `entry`=23676; -- Iron Rune Destroyer
UPDATE `creature_equip_template` SET `itemEntry1`=1983 WHERE `entry`=24212; -- Iron Rune Guardian
UPDATE `creature_equip_template` SET `itemEntry1`=12591, `itemEntry3`=0 WHERE `entry`=1182; -- Brother Anton
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=40779; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=24015 WHERE `entry`=16733; -- Exodar Peacekeeper
UPDATE `creature_equip_template` SET `itemEntry1`=2023 WHERE `entry`=17432; -- Stillpine Defender
UPDATE `creature_equip_template` SET `itemEntry1`=31601 WHERE `entry`=45798; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=10898, `itemEntry2`=12456 WHERE `entry`=41431; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=18062 WHERE `entry`=33334; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=19444; -- Peasant Worker
UPDATE `creature_equip_template` SET `itemEntry1`=18062 WHERE `entry`=44792; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=12285, `itemEntry2`=0 WHERE `entry`=1844; -- Foreman Marcrid
UPDATE `creature_equip_template` SET `itemEntry1`=34818 WHERE `entry`=25521; -- Skadir Longboatsman
UPDATE `creature_equip_template` SET `itemEntry1`=34681 WHERE `entry`=27557; -- Warsong Elite
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=27573; -- Taunka Huntsman
UPDATE `creature_equip_template` SET `itemEntry1`=34638 WHERE `entry`=26437; -- Taunka Soldier
UPDATE `creature_equip_template` SET `itemEntry1`=1900, `itemEntry2`=1900, `itemEntry3`=0 WHERE `entry`=61; -- Thuros Lightfingers
UPDATE `creature_equip_template` SET `itemEntry1`=10898, `itemEntry2`=12456 WHERE `entry`=42937; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=13000; -- Gnome Engineer
UPDATE `creature_equip_template` SET `itemEntry1`=5289 WHERE `entry`=7027; -- Blackrock Slayer
UPDATE `creature_equip_template` SET `itemEntry1`=2493, `itemEntry2`=0 WHERE `entry`=14849; -- Darkmoon Faire Carnie
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=39005; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry3`=44643 WHERE `entry`=32710; -- Garl Grimgrizzle
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=26708; -- Silverbrook Villager
UPDATE `creature_equip_template` SET `itemEntry2`=2081 WHERE `entry`=23967; -- Deranged Explorer
UPDATE `creature_equip_template` SET `itemEntry3`=44643 WHERE `entry`=32711; -- Warp-Huntress Kula
UPDATE `creature_equip_template` SET `itemEntry1`=25234 WHERE `entry`=40275; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=3367 WHERE `entry`=22407; -- Caravan Defender
UPDATE `creature_equip_template` SET `itemEntry1`=31603 WHERE `entry`=21717; -- Dragonmaw Wrangler
UPDATE `creature_equip_template` SET `itemEntry1`=29417, `itemEntry2`=0 WHERE `entry`=19806; -- Eclipsion Bloodwarder
UPDATE `creature_equip_template` SET `itemEntry1`=32322, `itemEntry2`=32322 WHERE `entry`=22982; -- Skyguard Navigator
UPDATE `creature_equip_template` SET `itemEntry1`=30179, `itemEntry2`=0 WHERE `entry`=19362; -- Kor'kron Defender
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=44158; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=2023 WHERE `entry`=41227; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=10898, `itemEntry2`=12456 WHERE `entry`=16580; -- Thrallmar Grunt
UPDATE `creature_equip_template` SET `itemEntry1`=44638 WHERE `entry`=32702; -- Drog Skullbreaker
UPDATE `creature_equip_template` SET `itemEntry1`=34816 WHERE `entry`=27260; -- Dragonflayer Huscarl
UPDATE `creature_equip_template` SET `itemEntry2`=1203 WHERE `entry`=26217; -- Westfall Brigade Footman
UPDATE `creature_equip_template` SET `itemEntry1`=12856 WHERE `entry`=27566; -- Unu'pe Villager
UPDATE `creature_equip_template` SET `itemEntry1`=2184 WHERE `entry`=916; -- Solm Hargrin
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=1229; -- Granis Swiftaxe
UPDATE `creature_equip_template` SET `itemEntry1`=59140 WHERE `entry`=43464; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry3`=40020 WHERE `entry`=32720; -- Violetta
UPDATE `creature_equip_template` SET `itemEntry1`=2184, `itemEntry3`=0 WHERE `entry`=946; -- Frostmane Novice
UPDATE `creature_equip_template` SET `itemEntry1`=30204, `itemEntry3`=0 WHERE `entry`=808; -- Grik'nir the Cold
UPDATE `creature_equip_template` SET `itemEntry1`=1901 WHERE `entry`=706; -- Frostmane Troll Whelp
UPDATE `creature_equip_template` SET `itemEntry1`=27849, `itemEntry2`=27849 WHERE `entry`=19071; -- Telaari Elekk Rider
UPDATE `creature_equip_template` SET `itemEntry1`=2704 WHERE `entry`=34830; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=35063; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=2715 WHERE `entry`=1976; -- Stormwind City Patroller

UPDATE `quest_template` SET `OfferRewardText`='These are blood shards. They used to be found all over the Barrens.$B$BIt''s said they were formed from the blood of Agamaggan, the great demigod that the quilboar sprang from. I knew the quilboar prized them, but nobody would think they''d take the time and care to carve them like this one...$B$BThere may be more to learn here.' WHERE `Id`=24606; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='There is a Fishing Contest in Booty Bay this Sunday!   Here are the rules of the tournament if you want to participate!' WHERE `Id`=8228; -- Could I get a Fishing Flier?
UPDATE `quest_template` SET `OfferRewardText`='Nice work $N.  These samples will help us figure out what is going on in that toxic soup over there.' WHERE `Id`=26556; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good job, $N. That''s one less filthy, useless, Alliance scum-bag that we''ll have to provide for...$B$BIf you''re lookin'' for more work, the tauren and blood elf nearby need some help.$B$B''Course we''ve got our own set of problems to deal with out here as well...
' WHERE `Id`=11711; -- Coward Delivery... Under 30 Minutes or it's Free
UPDATE `quest_template` SET `OfferRewardText`='Alkor is no more, eh? A pity... As for the egg, we have no real use for it anymore. We''ve got much bigger problems to deal with now.
' WHERE `Id`=11724; -- Massive Moth Omelet?
UPDATE `quest_template` SET `OfferRewardText`='<You hear a voice in your head. It is Khu''nok.>$B$BYour name has been heard in the whistling winds, $N. You have done a great thing for my kin. For this we will consider you an ally. Alas, our torment cannot end without bloodshed and violence.$B$BThe price of peace for the mammoths will be the death of Kaw...
' WHERE `Id`=11878; -- Khu'nok Will Know
UPDATE `quest_template` SET `OfferRewardText`='Cenius sent you? Well you''re not a moment too soon!
' WHERE `Id`=11870; -- The Abandoned Reach
UPDATE `quest_template` SET `OfferRewardText`='A job well done, $N. Now we strike at the pirate leader!
' WHERE `Id`=11871; -- Not On Our Watch
UPDATE `quest_template` SET `OfferRewardText`='Outstanding!  Those sandy carp are picky eaters aren''t they?' WHERE `Id`=26557; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Many thanks, $c.$b$bYou do the war effort a favor. Burn victims have a notorious appetite for bandages, and Hamuul is no exception.' WHERE `Id`=29247; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Fascinating! It appears to be an acorn!' WHERE `Id`=29245; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A red flower pops its head out of the soil.' WHERE `Id`=29249; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh my! Who''s your little friend? It followed you, you say?' WHERE `Id`=29254; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Are you certain of your choice, $N?  This is not a decision you ought to take lightly.$B$BThe Violet Signet will grow in power as you continue to prove yourself to the Violet Eye.' WHERE `Id`=10729; -- Path of the Violet Mage
UPDATE `quest_template` SET `OfferRewardText`='Fascinating.  I will study these essences, $N.  I thank you for your help.' WHERE `Id`=9825; -- Restless Activity
UPDATE `quest_template` SET `OfferRewardText`='These readings do not bode well, $N.  Karazhan should be emanating all manner of arcane currents... instead it has become a huge energy vacuum.  No signals.  Nothing.  Except for a very faint demonic echo.$B$BThis is bad news, $N.' WHERE `Id`=9824; -- Arcane Disturbances
UPDATE `quest_template` SET `OfferRewardText`='Bout time ye showed up, $glad:lass;.$b$bNow let''s get goin''! There be work ta do!' WHERE `Id`=28654; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well, I''ve got bad news and I''ve got...$b$bNo, scratch that. There only be bad news.' WHERE `Id`=28746; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This book contains several common recipes and a few unusual ones.  After browsing through it for a few seconds you spot a recipe that involves sandworm meat.' WHERE `Id`=8307; -- Desert Recipe
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  You''re a life saver.  These dumplings turned out to be quite good.  Didn''t really expect such good taste from the Twilight''s Hammer.' WHERE `Id`=8317; -- Kitchen Assistance
UPDATE `quest_template` SET `OfferRewardText`='Well now, that looks like it could be valuable.  Difficult to know until it''s cleaned up and appraised, but I''m still willing to make the trade if you are.' WHERE `Id`=13832; -- Jewel Of The Sewers
UPDATE `quest_template` SET `OfferRewardText`='So eating it makes you invisible... what a strange defense this clever fish has developed.$b$bI''d like to digest this for a bit.  Pun not intended, $N.  Really.  Why don''t you come see me tomorrow?' WHERE `Id`=13830; -- The Ghostfish
UPDATE `quest_template` SET `OfferRewardText`='WHAT!? No, don''t tell me that, $N! It can''t be true! My... I... I would never...$B$BI won''t give up, $c. Just you wait and see. I will save those fawns!' WHERE `Id`=28495; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I... um... well... turns out he doesn''t need the hearts anymore. Sorry about that! Hope it wasn''t too inconvenient! A deal''s a deal though, so here is your reward. You can go ahead and keep the yeti hearts. I hear they hold excellent nutritional value - if you''re into eating.' WHERE `Id`=28484; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s a hefty load you''re carrying. It should keep my customers satisfied for the time being.$B$BHere is your pay, as promised.
' WHERE `Id`=28489; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N! I promise you that this is the last time I take this gear off.' WHERE `Id`=28487; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So it''s true, you did kill the beast! The people of Hillsbrad are indebted to you, $N. You have made the land safer for our citizens.$B$BTake whatever you may desire from our coffers.' WHERE `Id`=28485; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh my. 250? This thing doesn''t go past 250. How are you still standing? You should be a puddle of goo by now. Sylvanas will be most displeased with this information. There might be some things we can do to reduce the lethality levels of the area by a few decades, but that still leaves us out by about a hundred or so years.' WHERE `Id`=28324; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $N. You are incredibly resilient to this blight. We''ll have to take you in for testing some time.' WHERE `Id`=28325; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='As I said, the rod giveth to our dark rangers and doth taketh away from our enemy!' WHERE `Id`=28331; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We should have killed Bloodfang in Silverpine. It''s a shame he still lives. It''s an even bigger shame that we have as of yet been unable to turn worgen into undead. Surely there is a way...' WHERE `Id`=28332; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So how was it? Everything that you dreamed it would be? Exciting, no?$B$BNo?$B$B<Darthalia sighs.>$B$BI can see that you''re a true $g hero:heroine;. You need action. I guess a \"desk job\" isn''t for you.' WHERE `Id`=28096; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We''re in a bit of a bind, $c. Sarus'' spiders are starting to get a little uppity as we''ve been unable to feed them for days. If we leave the murlocs will overtake our post! Furthermore, Warden Stillwater over at the Sludge Fields is demanding that we send him more humans! He is insatiable! We need help!' WHERE `Id`=28111; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The bear gods are cruel masters. They will continue to populate this world with bears until the end of days. It is our right as civilized people to make use of this nuisance - for the betterment of us all!' WHERE `Id`=28115; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Wonderful! Now to place these eggs into a nice, dark alcove inside the mine and let the miracle of life happen!' WHERE `Id`=28114; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This should keep it happy and content for a few days. You''ve done a good thing here, $N!' WHERE `Id`=28146; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='At least we''ll be prepared for any future incidents. Moving \"supplies\" like this around is a risky proposition. You never know who is going to open their big fat mouth.$B$B<Keyton raises what appears to be an eyebrow at you.>' WHERE `Id`=28144; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Have you ever heard the saying \"survival of the fittest?\" What you''re doing conflicts with natural law, $g buddy:lady;! This idiot should have died in the mines. There''s no telling what kind of harm he''ll cause to himself or another person now that you''ve saved him from his inevitable demise.$B$BAnd you know who''s fault that''ll be, right?' WHERE `Id`=28156; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These will do nicely. I do wonder what the warden has planned for them. Last I heard the Sludge Fields were overrun by some very bad things.' WHERE `Id`=28138; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Who are you? Did Sylvanas send you? Everything is FINE! Yes, perfectly fine! I''ve got it all under control!$B$BWell, fine all things considered that is... We''ve got a few problems that perhaps you could help with, $c.' WHERE `Id`=28168; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='As you can see, they''re all monsters! Most of my guards died and the ones that managed to escape are now holding down the barricades, preventing any of these potentially dangerous creatures from getting out.$B$BWe need your help!' WHERE `Id`=28192; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Undoubtedly you did the right thing. Hopefully the humans that you saved will show similar mercy to you should the time of your planting ever come.$B$BThis is all assuming you rescued the humans and didn''t splatter their brains all over the dirt - of course.$B$BKeep the shovel as a reminder of the horrors of the Sludge Fields and the depravity of mortals.' WHERE `Id`=28189; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These samples will give us a better understanding of the mindless undead. Take these coins as a reward.' WHERE `Id`=28199; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done! Wilkes was hanged after we discovered that he was ingesting mass quantities of mushrooms and other highly toxic substances. After he died he awoke, reborn as an undead geist. Many of my guards fell to Wilkes before he ran off into hiding. Fearing something like this might happen again, we incinerated the Clerk until only bones were left!$B$BWhy would they willingly ingest toxic substances? I have no idea! This is a farm, $g sir:miss;, nothing more!' WHERE `Id`=28197; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Warden Stillwater flips through the journal, reading under his breath.>$B$BRamblings of a mad man! Clearly he had been ingesting the mushrooms. It is good that you brought this to me, $N. I will burn it myself!' WHERE `Id`=28196; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Johnny is sobbing loudly.>$B$BTw... Twinkles!!!! Th... It killed her!$B$B<Johnny continues to cry. Little snot bubbles form in his nostrils.>' WHERE `Id`=28206; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Lydon takes the key from you.>$B$BI''ll let myself out, thanks.$B$BI have never been so angry! Stillwater won''t get away with this. I will present his head to the Banshee Queen myself.$B$BYou and I will work together, $N.$B$BI don''t know about the little girl here, but I''d prefer she stayed behind.' WHERE `Id`=28209; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Once we deal with the rest of the undead we will confront Stillwater!' WHERE `Id`=28230; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='She may now ascend to the great horsey heaven in the stars. We will never forget you, Twinkles. NEVER!' WHERE `Id`=28231; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now to bring Warden Stillwater to justice!' WHERE `Id`=28235; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I will deliver this head to the Banshee Queen personally. Of course I will make mention of your part in all of this, $N.$B$BAs for your reward - take from Stillwater''s cache whatever you desire. You earned it.' WHERE `Id`=28237; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='$N, you got one!  It''s a rare day that I get to see such a strong, beautiful fish.' WHERE `Id`=26588; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='HAH! Those naga have some balls on them! To think that they could take Southshore from us in our own territory! Such a preposterous notion.$B$B<Helcular laughs.>$B$BYou have done well to thwart their attack - though I do wonder if they could have survived for even a minute in the blight.' WHERE `Id`=28356; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I must get to work preparing the salve immediately. These reagents lose their efficacy by the minute.$b$bThank you, $N.' WHERE `Id`=29246; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I see. It is time for us to join the hunt in the Firelands then. My sisters will be with you, $c.' WHERE `Id`=29214; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hello, $n. It''s good to see you again.$B$BYou needn''t worry. We''ve settled in quite well. I''ve dispatched several of my wardens to assist in hunting down the Druids of the Flame, and I''ve drawn assault plans for the Forlorn Spire. When the time is right, perhaps you will join us there.' WHERE `Id`=29215; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Arrite, then.$b$bLet''s deposit these discs and be done with this!' WHERE `Id`=28753; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now that''s a fine catch!$B$BCome over here, lemme show you how to set a few lines.
' WHERE `Id`=6607; -- Nat Pagle, Angler Extreme
UPDATE `quest_template` SET `OfferRewardText`='Well hello there, young $r.  Either my memory is failing me, or I forgot to give you this the last time we spoke....' WHERE `Id`=13826; -- Nat Pagle, Angler Extreme
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N! I''m sure these will impart a simply magical taste to whatever dish they''re used in.$B$BWhat? Stop looking at me like that!' WHERE `Id`=29362; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You found my ring, did you? I''m most grateful.$B$BTo be honest, I''ve no idea why I keep the thing. I''m not even certain how I acquired it... I suppose I am simply a creature of habit.$B$BStill, as I said, I am grateful. Say... I found these things while searching for it myself. Perhaps they''d be of some use to you?' WHERE `Id`=29346; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I see. I can''t say I''m eager to bring my flock to the Firelands, but I knew it would become necessary at some point.$B$BWe will be there, $c. Thank you for carrying the message.' WHERE `Id`=29181; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Fiasco sticks a finger into each sample and sniffs it.>$b$bYes, I think this will do.' WHERE `Id`=26122; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s it.  Starting today, I''m shifting the Verne over to bio-fuel.  I''ll send some men up to harvest more oil.$b$bThink of all the sea creatures that we''ve saved today, $N!' WHERE `Id`=26126; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Gah!  These fish are impossible to hit!$b$b<Orako looks at you.>$b$bMy wolf got eaten by a fish, and I''m not going back until I find her.' WHERE `Id`=26086; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hey, look at how glowy it is!$b$b<Orako looks wistfully off into the distance.>$b$bMy wolf loved things that were glowy...' WHERE `Id`=26087; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I know, murlocs aren''t fish.  I thought that killing them would make me feel better, but I still feel sad about my wolf.$b$b<Orako sighs.>' WHERE `Id`=26089; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hmm... you got a lot of fish, but none of these are the ones that ate my wolf.  I think it was probably a bigger fish.' WHERE `Id`=26088; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That is a big egg.$b$b<Orako sniffs it.>$b$bIt is big, and it smells like fish.  Maybe the big fish that made this egg is the big fish that ate my wolf!' WHERE `Id`=26090; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Orako is busy playing with Wolf.>$b$bOh, thank you, $N!  I knew Wolf was alive!$b$bHere, take one of these.  I don''t need them anymore.' WHERE `Id`=26091; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is his report?!  That idiot...$b$bI suppose we can use the food.  Thanks, $N.  You''ve done as well as can be expected.' WHERE `Id`=26092; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s a lot! And we know where there''s more should the need arise.' WHERE `Id`=25976; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, they''re ugly, but they mostly look harmless. Mostly. They''re almost cute in a way.$B$BHere, let me clean the gilblin stuff out of these. I''ve got an idea....' WHERE `Id`=25982; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My bad. My name is Fiasco for a reason. I should have known that thing wasn''t completely dead when it wiggled a little.$B$BYou say it gave you a vision? Of killing all of us?! That doesn''t sound good.$B$BHrm, well that Earthen Ring fellow, Erunak Stonespeaker, wants these specimens all taken out to him. I''ll make sure they get out there. It''s not like I want them stinking up the place around here.' WHERE `Id`=25988; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Nice, $N! That will show those naga who''s the boss!$B$BNow it''s time for that drink. You want rum or wine?' WHERE `Id`=25974; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Stuck him right through, did you? I would have loved to have seen that!' WHERE `Id`=25980; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='If it weren''t you saying it, I wouldn''t believe what that troublesome goblin has to say. This is troubling indeed, but I think our Earthen Ring friends have a few ideas.$B$BAnd now that you''re here....' WHERE `Id`=25984; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I sure am glad you''re here!' WHERE `Id`=26057; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N.$B$BThese nightmarish creatures that rise from below give me pause. I fear that our efforts will be for nothing.' WHERE `Id`=26065; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done.$B$BDon''t get too full of yourself, $N. The hard part''s about to come.' WHERE `Id`=26071; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yes, $r, can you feel them seething with a desire to break free and destroy us?$B$BThis is good! They will be the perfect lure for their leader.' WHERE `Id`=26072; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I will use the mushrooms as a reagent to treat the corpses. We will have one ready for you soon.' WHERE `Id`=26096; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='And now we will see if we can get you into L''ghorek to speak with it before it dies.' WHERE `Id`=26111; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s one less thing we need to think about during the final assault.' WHERE `Id`=26133; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now that you have unplugged L''ghorek, we must attempt to make contact with it. I can sense that the ancient yet lives, but only barely.' WHERE `Id`=26130; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='WISE OF... YOUR ERUNAK TO... HAVE... YOU USE... THE FACELESS'' BRAIN. I SEE... YOU NOW.$B$BI WILL DIE. THERE IS NO... STOPPING... THE INEVITABLE.$B$BBUT... YOU WILL HELP... ME DEAL WITH... THESE PARASITES FIRST.' WHERE `Id`=26140; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A job well done. Now you don''t need to worry about what would have happened to them if you hadn''t been around.$B$BThe last one was even appreciative enough to give you a reward they''d kept hidden on their person.' WHERE `Id`=26149; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='WE WILL USE... THESE... RUNESTONES TO ALLOW... YOU TO POSSESS... ONE OF... THE WATER ELEMENTALS.' WHERE `Id`=26141; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='THEY SHALL ASCEND... NO MORE!' WHERE `Id`=26142; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='THEIR DEVOTIONS ARE... SILENCED.$B$BNOW THAT... YOU HAVE... THEIR POWER... YOU MUST DESTROY... THEIR LEADER.' WHERE `Id`=26154; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='YOU HAVE DONE... MYSELF AND... THE TIDEHUNTER GREAT... SERVICE.' WHERE `Id`=26143; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hello again, $c.$B$BI felt L''ghorek die. A shame that such a magnificent being is gone.$B$BIf we do not assist Neptulon, we will all meet the same fate.' WHERE `Id`=26182; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='They may think they''ve won, but my axe and I have something to say about that!' WHERE `Id`=26194; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This will help maintain my supply. Anytime you want to help, just look up old Sayge while the Darkmoon Faire''s in town.' WHERE `Id`=29510; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thanks for helping with those banners. You have quite a talent for needlework. Next time the Darkmoon Faire''s in town, why not come by and help again?' WHERE `Id`=29520; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These are perfectly cooked, $N. You''ve done an excellent job.' WHERE `Id`=29509; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is a remarkable example of an Alliance officer''s insignia. While many of them visit the Faire, none are willing to part with their badges. Would you be willing to accept some Darkmoon tickets in trade?' WHERE `Id`=29457; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A strange grimoire, how interesting! I don''t think I''ve seen its like before. I''d love to have it for my collection. Would you be willing to accept Darkmoon tickets in exchange?' WHERE `Id`=29445; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Looks like you found the clams, $N.  These will do nicely.' WHERE `Id`=26543; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These skies are indeed oppressive, but we''ve been able to navigate them for the most part.$B$BWe may need your help to secure additional landing territory past the Furnace. I will call for you when we are ready.' WHERE `Id`=29182; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You! You''re the one who saved Anren. My best friend, Anren.$b$bWe got separated in that cave. I didn''t know what to do without Anren.$b$bYou are a resourceful $c. We may call upon you later to assist us in our reconnaissance missions. With your help, Anren and I might no longer face the terrifying risk of being separated from one another.' WHERE `Id`=29272; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That imbecile finally sent help, did he? These two orcs are a lost cause. They are stricken with something that I have termed \"Durnholde Syndrome.\" They were both locked up for so long that they grew an affinity for their captors. Now they sit upon my couch with their big, iron balls and cry.$B$BHopefully you will prove to be more useful.' WHERE `Id`=28620; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Haunted? Ye could say that!' WHERE `Id`=28635; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Zephyrus was a mighty adversary. Surely the remaining elementals will challenge you further!$B$B<You open the guide that Jekyll gave to you.>' WHERE `Id`=28643; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Teracula was an even mightier adversary than Zephyrus.$B$B<You open the guide that Jekyll gave to you.>' WHERE `Id`=28644; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now you know why the monster was called Bloodvenom. What challenges remain?$B$B<You open the guide that Jekyll gave to you.>' WHERE `Id`=28645; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Though you have defeated the four elements, one final challenge awaits. What could it be?$B$B<You open the guide that Jekyll gave to you.>' WHERE `Id`=28646; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='They fight for their land even after death - much like the Forsaken. I will report back to high command that Dun Garok is uninhabitable. Let them keep what they hold so dear.' WHERE `Id`=28636; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is the first time anyone has actually completed the challenge. You truly are a powerful $c, $N. As promised, choose your reward.' WHERE `Id`=28647; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The itching has stopped - for now - but they will return.$B$BOh yes, they will return...' WHERE `Id`=28634; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Patrolling the high road is grave business, but it must be done. These narrow mountain trails are, for the time being, one of our only lifelines into Stonetalon. They must be preserved.$B$BThank you.' WHERE `Id`=24504; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You have them? I''ll take your word for it. Hearing Peake scream like one of his victims is reward enough for me.$B$BNow leave me be, $N. I do not wish to be a burden to my clan.' WHERE `Id`=24513; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good, good. It''ll take them many sleepless nights to figure out where we came from and where we disappeared to after the kills...' WHERE `Id`=25284; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='From up here I got the perfect view of the havoc you just caused, $N. Our lost brothers reclaimed some of their dignity, and the Alliance dogs were sent scrambling. Sharp work, my friend!$B$BIf the Alliance sleeps comfortably at night, we are not doing our job.$B$BWe will never let up.$B$BWe will never give in.' WHERE `Id`=24512; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So the Alliance is probing the twists and turns of the high road?$B$BEven if they were to map it out, they couldn''t attack these hills in numbers. This is our land, $N. And they will pay dearly for presuming otherwise.' WHERE `Id`=24505; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Onatay looks over the fresh hides, nodding her head slowly.>$B$BYes $N, I can work with these. You work fast!$B$BThese hides will help us hold out for reinforcements longer. Thank you.' WHERE `Id`=24514; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Kilrok pages through the plans you discovered.>$B$BThis explains much, $N. No wonder our foes are so hellbent on taking the southern Barrens. It''s at the center of their plans for the continent!$B$BBut they didn''t account for us, did they $c? ' WHERE `Id`=24518; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent, $N. It will be some time before we can assault the hold proper, but until then, we must teach them to fear the Barrens.' WHERE `Id`=24517; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good, good. We''ve got to keep Honor''s Stand isolated.$B$BAlone ... afraid ... $N, if we keep up the pressure, maybe someday they''ll simply surrender the pass.' WHERE `Id`=24519; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So my sister recognized the old signals? Her hunter''s eyes are as sharp as ever.$B$B$N, when we first set up this camp we were at the edge of this jungle. Now look at it!$B$BSomething is amiss.' WHERE `Id`=24515; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It''s bad enough to have one''s village sacked... but to spend the following night in a quilboar cage? I''m glad you were there to help, $N.' WHERE `Id`=24529; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So it is done.$B$BNormally these scavengers are part of the Earthmother''s cycle of life. But on the heels of the devastation wracked by both the Alliance and the cataclysm, their numbers grow overwhelming. It is good to thin them out.' WHERE `Id`=24525; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N. But now on to the larger question:$B$BWhere is this overgrowth coming from? And why is it raging out of control?' WHERE `Id`=24539; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Nice one, $N!  I tell ya, golden stonefish are not easy to come by so this is a nice treat.' WHERE `Id`=26572; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Gar''dul breaks into a sweat.>$B$BLook - ah - let''s not discuss this here, in front of the men...' WHERE `Id`=24577; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve just learned a little something about the inner workings of Horde high command.$B$BWarlord Bloodhilt is in charge of Desolation Hold now. He may have more for you to do in the courtyard below. ' WHERE `Id`=24591; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Calder peers into the sack of extremities and licks his lips with a dry, black tongue.>$B$BOh my. This is exciting.$B$B Aren''t you excited, $N?' WHERE `Id`=24619; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''re covered in hot tar and bug juice! Don''t worry, friend. It''ll come off.$B$BSomeday.' WHERE `Id`=24654; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent! You''re my kind of $c, $N.$B$BWith your help, we will throw these invaders back into the sea.' WHERE `Id`=24618; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hah! The fool didn''t destroy these orders.$B$BLet''s see what we can learn...' WHERE `Id`=24634; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Tomusa snorts as he takes back his hook.>$B$BVengeance feels hollow. Still. I could not allow them to go unpunished.' WHERE `Id`=24631; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Upon hearing the news, Bloodhilt snorts. His eyes gleam. He tips his head back and bellows a wet, cackling laugher that echoes between the blackened walls of Desolation hold and reverberates throughout the hills beyond.>$B$BSo it is done! The Butcher of Taurajo is felled at last. Cut down in the streets like a dog. Fitting.$B$BYou have done well, $N. You''ve sowed fear into our enemies, and soon we will reap the harvest!' WHERE `Id`=24637; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Calder grasps the gigantic heart in both hands, squeezing it and listening to the valves slurp and squish.>$B$B<His pale mask of a face splits open into an enormous, childlike grin.>$B$BIt is so very important to love one''s work, wouldn''t you agree, $N?$B$B<Calder chucks the heart over his shoulder into a waist-high pile of entrails.>' WHERE `Id`=24620; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Calder holds the brains in an outstretched hand while withdrawing a gore-caked multi-tool from his belt.>$B$BWonderful work! Now the secret here is to leave the reptilian nervous systems intact while removing the higher cognitive functions. We can''t have our new friend developing a conscience or remembering he''s Alliance...$B$B<Calder digs and snips at the brain, removing large chunks.>$B$BAnd... we''re finished! How lovely.' WHERE `Id`=24621; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Gann looks you up and down.>$B$BWe could use your help, $c. But this is not a skirmish. We fight here to strike a killing blow... or die trying.' WHERE `Id`=24632; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You do good work, $c. That riot you caused at the fortress entrance has these dwarves running around with their heads cut off.' WHERE `Id`=24684; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Let''s see, let''s see.$B$BIt looks like the artillery shells are prepped here, then loaded into the secure magazine...$B$B<Weezil rubs his hands together.>$B$B$N, are you ready to blow some stuff up?' WHERE `Id`=24685; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Bael''dun? Destroyed?$B$B<Wincing in pain, Gann twists his head to peer behind him, where plumes of smoke darken the skyline.>$B$B$N, my friend. You have avenged Taurajo and avenged the Tauren people. The invaders will not soon recover from that blow. Thank you.$B$B<Gann closes his eyes, his head tipping forward as his breath gives way to a series of ragged coughs.>' WHERE `Id`=24747; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Is this from Crawgol? Wonderful! Despite all the turmoil in the world, we can''t turn our back on the silithid threat. It is important to have people like Crawgol studying our enemy closely and learning its secrets for the fight ahead!$B$B<Tauna opens the book and glances over the first page. Her face falls.>$B$BOh. Well. I suppose it''s something, at least. ' WHERE `Id`=24667; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Mahka sent you?$B$B<Mankrik''s fury quells for a moment.>$B$BIt is a small comfort. But nothing can console me until I am done here.' WHERE `Id`=24604; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, friend. It''s important we try to calm this earth in every way we can.' WHERE `Id`=24824; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good. Take your reward; this is only a prelude.' WHERE `Id`=24603; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good.  Good! They will all die!  Their chieftains, and their women, and their children, and their foul pets!' WHERE `Id`=24608; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well look at that. You found one of our stolen documents!$B$BWe''re much obliged for its return. Hopefully a bit of gold will suit your fancy for the finder''s fee?' WHERE `Id`=13655; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That should help prevent disease and illness from spreading into our remaining water. Many thanks, $n.' WHERE `Id`=26932; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Phew! Ain''t that a stench.$B$BNow you prepare yourself, because I''m about to wow you with what''s left of my mental faculties.' WHERE `Id`=26928; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Mighty kind of you to help out an ol'' fool like me. Here''s your reward as promised an'' all.' WHERE `Id`=26929; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Worked like a charm, didn''t it? Maybe Kadrell will get off my darn back now what with savin'' the whole town and all!$B$BI suppose you''ve done earned yourself some proper goods.' WHERE `Id`=26868; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You brought that damned spy to justice! This is good news. We can all rest a little bit easier, not worrying about that one.' WHERE `Id`=13648; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hello, $G sonny:lass;! You seem to have found one of our stolen documents, eh?$B$BThank you kindly for bringing it back to us. We''ll gladly lend some coin as thanks for its return.' WHERE `Id`=13656; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Bzzzzzzzzzzzzt.>$B$BNicely done! A clean kill. Now continue on and see what else you can find! We''ll crack this case wide open with you on our side, I just know it.' WHERE `Id`=27756; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Bzzzzzzzzzzzzt.>$B$BHey, it''s Horatio. That was intense! I''m watching your progress on the Stormwind Communicator''s Spyatron X3 application.$B$BThey sure are using a lot of heavily fortified doors to hide their work. Keep pushing forward and see what you find next. I bet it''ll be a huge clue!' WHERE `Id`=27758; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Bzzzzzzzzzzzzt.>$B$BYou''re nearing the heart of their domain. There will likely be an extremely fortified door protecting the inner sanctum of the entire Defias operation. See if you can find anything that might pry it open!$B$BI suggest a stealthy method!' WHERE `Id`=27781; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Bzzzzzzzzzzzzt.>$B$BYour exploits have gained quite the following in the intelligence community, $N. Many top members of SI:7 have been earnestly watching you infiltrate the Deadmines through their own Stormwind Communicators.$B$BMathias Shaw himself wants to speak with you! I''ll transfer you over momentarily.' WHERE `Id`=27785; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You very well may have saved all of Stormwind with your efforts here today, $N. Vanessa may still be out there, but she is an insignificant threat now that the Juggernaut will be placed under our careful watch. Thank you.' WHERE `Id`=27790; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hmph, it''ll take more than a Dark Iron ambush to stop the deliveries!$b$bBut Saean... I would never have suspected him to be one of their sympathizers. We''ve been working with him for almost a year now... maybe I missed the signs.$b$bWell, I''ll consider that later.' WHERE `Id`=13639; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It is troubling news that you bring. To think that the Dark Irons have sympathizers able to procure this sort of material for their dastardly plans.$b$bThat''s a matter for someone else to consider, some other time. Thank you for protecting Huldar and the cart!' WHERE `Id`=309; -- Protecting the Shipment
UPDATE `quest_template` SET `OfferRewardText`='Woo! I''m relieved... I was worried they''d all be destroyed by now. Thank you for checking in on them.' WHERE `Id`=13650; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You got them!  Nicely done, $N!$B$BAnd you don''t look too worse for wear, even with those berserk troggs about.  I''m going to keep my eye on you...you show some promise.' WHERE `Id`=26961; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='And with this, hopefully their attacks on us will calm for a while.' WHERE `Id`=25440; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Erunak trusts this task to me?  Very well, let''s see what we can learn from the ancient one.' WHERE `Id`=25890; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That didn''t go well.  For some reason, the beast won''t speak back to me.$b$b<Duarn is clearly frustrated.>$b$bIf only Erunak had not left us!  He would know what to do.' WHERE `Id`=25900; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Can you sense it?  If you have an ounce of shaman''s blood in you, you must feel the sense of relief in the air.$b$bNespirah is pleased.  Perhaps she will finally speak with us.' WHERE `Id`=25908; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $N... although I''m afraid I haven''t been nearly as productive as you have.' WHERE `Id`=25907; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Duarn looks at the crab and disguises a frown.>$b$bIt doesn''t look very impressive, does it?' WHERE `Id`=25989; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I had assumed that the naga were only here for those pearls.  No, this makes much more sense.  If they had Nespirah''s power under their control, the amount of damage the naga could do would be catastrophic!$b$bSomething must be done.' WHERE `Id`=25990; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='$N... is that you?' WHERE `Id`=25991; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hopefully we made some progress.  I''m not sure how we''ll know when the creature wakes up, but something tells me that it will be pretty obvious when it does.' WHERE `Id`=25993; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Captain Vilethorn admires the polearms you present him.>$b$bOh, I''m sorry.  I was just imagining what these will look like with little bits of naga stuck to the ends of them.  Thank you, $N.  We''ll put these to good use.' WHERE `Id`=25992; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Brilliant work!$b$b<Tulra tucks the pearls away beneath her armor.>$b$bNow I just need you and Legionnaire Nazgrim to get me safely out of here.  I can handle the studies from there on.' WHERE `Id`=25994; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='No need to bring me up to speed... Nespirah has been narrating your adventures as they happened, and Legionnaire Nazgrim filled me in on the rest.$b$b<Duarn closes his eyes and nods.>$b$bNespirah says that she is quite grateful, and that she has a small surprise ready for the naga.' WHERE `Id`=25995; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It appears that I owe you my life, yet again.  Thank Hellscream that you found me before you and your shaman activated those bio-defenses.' WHERE `Id`=25996; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Not a moment too soon.$b$bAre you prepared to defend Dalaran, $c?' WHERE `Id`=29829; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh boy. Mogor has invoked his right of battle as hero of the Warmaul. You have to fight him!$B$BNobody ever said the Warmaul were good sports... erm... ogres.
' WHERE `Id`=9973; -- The Ring of Blood: The Warmaul Champion
UPDATE `quest_template` SET `OfferRewardText`='The arakkoa seek to bring Terokk back beyond the veil of time and Rilak... wants to find a way to accelerate the process?  Is he out of his mind?$B$B<Adaris lies back down as his strength fades.>$B$BYou''ve done your duty, $N.  It is time you let my men take over from here.  This has become a purely military matter.' WHERE `Id`=11028; -- Countdown to Doom
UPDATE `quest_template` SET `OfferRewardText`='This is good intel. You have a sharp eye, $c.$B$BIt sounds like the building north of the gardens will make a suitable forward post. I will send some men immediately to start defensive preparations and we will reposition there as soon as possible.' WHERE `Id`=25955; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A shard of metal?$B$BThe remains you describe sound much like the sea vrykul we encountered in Northrend. We''ll not be striking any alliances with their sort, no matter the cause. Still, this information may prove useful in the future.$B$BI will think on it further if time permits. Thank you for bringing it to my attention.' WHERE `Id`=25956; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $c.$B$BI will get some patrols out of our own to make sure that no more naga get within sight of this cave. We should have the area secured within the hour.' WHERE `Id`=25952; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, $n, and just in time too. The Captain just started sending more men out. Strong axe arms, but I doubt they possess quite the same awareness and finesse that you do.$B$BWe were lucky to have you here when things went south. I suspect you will have a large role to play in things to come as well.' WHERE `Id`=25953; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you so much for taking this seriously.$B$BThis is some of the first definitive proof of other members of the Vashj family. Very interesting. And I''d never even heard of either of the other two figures you mentioned until now.$B$BSo much of our history was lost during the sundering - it''s exciting to have a chance at reclaiming some of it.' WHERE `Id`=25954; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hah! It seems you were right. That broken trident is serving you just fine. I suppose I don''t get to see you claw anything to death today after all.' WHERE `Id`=25619; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, my battlemaiden, you''ve come to me. The warrior caste whispers of nothing but your victories on the battlefield, and we''ve only just begun our assault to take the city.$B$BYou have served me proud thus far. May the Queen favor you that you might continue to do more of the same.' WHERE `Id`=25620; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The Nar''shola Wards are performing perfectly. I will inform the Mistress of the Tides of your aid immediately.$B$BThank you for your assistance, my lady. ' WHERE `Id`=25658; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It is good of you to join me, Battlemaiden. The echoes of your combat graced your approach. It was a beautiful sound to behold.' WHERE `Id`=25637; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The Kvaldir General crumples to the ground, defeated.>$B$B<With this, the ruins of Vashj''ir have been claimed for Lady Naz''jar. Her ultimate goals remain uncertain, but it is clear that the naga came here with purpose.>$B$B<If only you could continue, you are sure that the answers to defeating the naga lie within this vision, but the Wavespeaker''s magics are waning, and you are losing your connection with the Battlemaiden.>' WHERE `Id`=25659; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A Battlemaiden? I never heard of such a thing.$B$BThe way you explain it, it sounds like the naga forces are far greater in scope than the Captain could possibly have realized. We might be able to learn more through the blade if we can find other locations where this Battlemaiden was present, but the information you gave me makes me fear for the captain and his soldiers. We must warn them.' WHERE `Id`=25957; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good to see you again, $c. I almost thought we''d lost you to the Wavespeaker''s fool errand.$B$BDid anything come of it?' WHERE `Id`=25958; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are perhaps the most dependable $r I''ve ever met. I wish I could have more men that showed half as much pride as you do.' WHERE `Id`=25960; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='More naga are amassing to the south than reported too it seems. We shall have to move quickly then.' WHERE `Id`=25959; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are brave indeed! I''ve seen you battling all manner of murloc, naga, and pointy-toothed fish, but that was nothing! The way you just sling those kelp bulbs under your arm like that is a whole new kind of fearless. BOOM! You could blow up at any second.$B$BYou''re my kind of $r.' WHERE `Id`=25962; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You did great up there, soldier! You devastated their ranks, but there were far more than we accounted for, and most of my men went down out there in the masses of naga.$B$BWe''ll need to hold this position as long as possible to buy them time. Hopefully some of them will still make it to the rendezvous.' WHERE `Id`=25963; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Still so many? They must want something very important here to come in such numbers.$B$BI will be honest with you, $n, because you deserve at least that: I don''t know how much hope there is. We will retreat shortly, but we won''t be able to defend ourselves when they strike back. We don''t have anywhere to run... we''re running out of options.$B$BI''m sorry, I should keep such thoughts to myself. Do me a favor and don''t mention any of that to the men. I''ll figure something out.' WHERE `Id`=25965; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you. Truly.$B$BWe need to get these men moving as soon as possible. I''ll meet you back at the forward post soon, I''m sure.' WHERE `Id`=25964; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Reinforcements have begun to circle the waters around the ledge, preparing for the attack. They await only your lead.' WHERE `Id`=25858; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My scythe is sated. Thank you, my lady.' WHERE `Id`=25861; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Not one slipped through to the bridge. Not one.$B$BIt was very boring. I''d appreciate it if you shared a little next time.' WHERE `Id`=25859; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The crucible looks far too heavy to carry on your own, but more than enough naga forces remain to prepare it for transport.' WHERE `Id`=25862; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, my Battlemaiden.$B$BThis crucible will serve as a font of power for our summoning ritual. With it, Sira''kess will beckon our allies from the depths to bolster our already swelling forces.' WHERE `Id`=25863; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='With every day, more warriors arrive at Azshara''s command. Soon, Neptulon the Tidehunter will hear of our preparations, but too late to stop what we have set in motion. Our numbers will be too great and our allies too powerful. Victory is only a matter of time.$B$BIn Azshara''s name.' WHERE `Id`=26191; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''re finished! Just in time. I don''t think we could have held them much longer.$B$BAn artifact? Could this be something we can use against the naga? I suppose that would require finding it.$B$BWe may have to attend to more pressing matters first, until an opportunity to pursue this further presents itself.' WHERE `Id`=25966; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You made it! After the attack at the forward post, I thought we might be the only ones left. It''s good to see you in one piece, $c.' WHERE `Id`=25967; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, this is exactly what we needed.  While I am not so skilled at ciphering what most of the scrawling on this map is, I''ve seen enough battle plans in my day to understand what is happening with the gnolls.  It looks like they are currently fighting a two front war.  One is with us... but it seems that their main energy has been against a foe to their south.$B$BThere''s more at hand here than meets the eye.  Perhaps it is time to figure out who this other foe they face really is.' WHERE `Id`=25366; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good, good. Let''s hope the ogres are at least smart enough to realize we''re sending a message!' WHERE `Id`=25375; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I will be able to rest easy now, $n. You''ve saved our camp from a terrible menace.' WHERE `Id`=25374; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve come.$B$BI am ashamed to ask this of you, $c, but I''ve ran from him long enough. Taerar must be stopped.' WHERE `Id`=25378; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are truly blessed by the Earth Mother, $n, to have the honor of fighting with the guardians of nature, and to also survive it.$B$BKnow that you have kept safe every living soul in this camp, and possibly this entire forest. Take these gifts with my deepest thanks.' WHERE `Id`=25383; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve done as I have asked, and for that I salute you.  Take this small reward as compensation for your efforts, $n.$B$BWith their numbers thinned and their leaders slain, the gnolls will think twice about storming the camp.  This doesn''t conclude the issue at hand, however...$B$BThere must be some reason why the gnolls have been whipped into such a frenzied state.  Before they have a chance to regroup, I want to find out what is causing it.' WHERE `Id`=25364; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Impressive, $c... most impressive!  If Stinglasher is indeed one of their strongest creatures, the study of the beast will prove to be quite valuable in time.  It''s now my charge to make sure we defend ourselves long enough to take advantage of it.$B$BPlease accept this coin bounty as a token of the entire camp''s thanks, $N.  Well done.' WHERE `Id`=25369; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, $c.  Though the extensiveness of the Zukk''ash presence will not be thwarted with anything less than a full-scale invasion, you have bought us some time so we can devise a proper strategy.$B$BI will be sure to have these carapaces analyzed; we''ll need to learn everything about them before we deal with what has unfortunately turned into a much larger issue than we had anticipated.' WHERE `Id`=25367; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Look at you, a regular aquatic hero! Trouble comes. You come. Save the day.  You must be proud of yourself!$B$BWe''ve devised our brilliant plan. Gloriously simple, barring the hostility of local life. Simpler yet with a you available! ' WHERE `Id`=25968; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is great! I love it. It should work per... ewww! Is this stuff braided with hair?$B$BDoesn''t matter. Almost done. This thing will be ready in the twist of a rope.' WHERE `Id`=25971; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Less gilblins is good.$B$BI''m glad that they''re so primitive. I don''t think I''d want to be dealing with a race of aquatic tech-freaks right now.' WHERE `Id`=25969; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Let me see, let me see... flare gun... balloon... no rope. Never any rope. Terribly impractical if you do ask me. Rope should be mandatory.' WHERE `Id`=25970; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Perfect! There''s no way they missed that, fighting or not.' WHERE `Id`=25972; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That is the best news I''ve ever heard. We''ll get the survivors moving over there to the surface as soon as possible. Perhaps we can forget that this whole nightmare ever happened.$B$BThank you, $n. You''ve shown your worth down here. There will be a glorious spot in the Horde for you.$B$BYou should consider meeting us at the ships later, when you finish saying your goodbyes to the naga.' WHERE `Id`=25973; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, Battlemaiden.$B$BI will attend to the eastern bridge. I need you to attend to the temple itself. The ritual must not be interrupted.' WHERE `Id`=25629; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The Kvaldir have proved a greater threat than we anticipated, but our plans are not hindered in the least. As our allies arrive, we will have a force more than sufficient to usurp the Tidehunter.$B$BAll that remains is to ensure that the ritual of summoning is completed.' WHERE `Id`=25896; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Azjentus is to be taken at his word. Lady Naz''jar''s Honor Guard should be sufficient to see the rest of the ritual through.' WHERE `Id`=25860; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I could ask for no more proficient a Battlemaiden than you. You have done yourself a great honor this day.' WHERE `Id`=25951; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Minions of the Old God? Two very potent foes have joined forces then. Their hope to defeat the Tidehunter may not be so foolish after all.$B$B$n, we can''t let that happen. If Azshara defeats the Tidehunter and takes his power for herself, I''m not sure any number of us could ever hope to oppose her on the seas.$B$BThe first step is clear at least - we need to hunt down the fiend that destroyed our ships. The navy was confident enough to bring in a new fleet, perhaps they have a plan.' WHERE `Id`=26135; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We must recover that book from the Silver Covenant. Without that book from Krasus, we stand little chance of solving the mystery of the sword in Icecrown or unlocking its power.' WHERE `Id`=24555; -- What The Dragons Know
UPDATE `quest_template` SET `OfferRewardText`='<Magister Hathorel reads the captured orders.>$B$BThe agent you intercepted was supposed to deliver the Wyrmrest tome to Icecrown, after meeting with one Arcanist Tybalin inside the Silver Enclave. We have to reclaim that book, $N, and we only have one chance before it leaves the city. We have to work quickly.' WHERE `Id`=24557; -- The Silver Covenant's Scheme
UPDATE `quest_template` SET `OfferRewardText`='I knew Shandy would find a way to make it work. Let me get this enchanted and ready for you to use. With any luck, the tabard''s owner won''t even know it''s missing and Shandy will cover the rest of our tracks.' WHERE `Id`=24556; -- A Suitable Disguise
UPDATE `quest_template` SET `OfferRewardText`='Excellent work. Now that this is in our hands, we must get it to Myralion Sunblaze as soon as possible. We can''t risk the Silver Covenant taking the book from us again.$B$BI''ll get that tabard back to Shandy and see that he''s well compensated for his assistance. Once the book is in Myralion''s hands, the Silver Covenant won''t be a threat anymore.' WHERE `Id`=24451; -- An Audience With The Arcanist
UPDATE `quest_template` SET `OfferRewardText`='<Myralion accepts the heavy book and begins leafing through it.>$B$BThose symbols on the blade seemed familiar and now there''s little wonder why. This is certainly a dragon blade, gifted to one of the mortal races, but which blade is this, and how did it come to rest in Icecrown?' WHERE `Id`=24558; -- Return To Myralion Sunblaze
UPDATE `quest_template` SET `OfferRewardText`='You have remade the blade of Quel''Delar in defiance of that Blood-Queen Lana''thel''s pronouncement! Now, the blade must be tempered before we can show her the folly of her words.' WHERE `Id`=24559; -- Reforging The Sword
UPDATE `quest_template` SET `OfferRewardText`='Tempering the sword should''ve restored the blade. Why hasn''t it worked?' WHERE `Id`=24560; -- Tempering The Blade
UPDATE `quest_template` SET `OfferRewardText`='What? He attacked you with a dozen boars? I guess quilboar have their own ideas of what \"single combat\" means.$B$BStill, the Bristleback will be left reeling after the blow you delivered. It will not be long before a new champion rises amongst them to stir up trouble... but at least this buys us some time to get these refugees relocated safely.$B$BThank you, $N. The survivors owe you a great debt.' WHERE `Id`=24534; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, samples from different parts of the overgrowth? These will be immensely helpful, yes. Thank you, $c.' WHERE `Id`=24542; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These will do perfectly. Bright colors like these don''t occur naturally in the barrens, but they haven''t developed any other mutations so far.' WHERE `Id`=24570; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I''m concerned by how...active these are. Nevertheless, it simply means we must continue to act quickly before the corruption here becomes worse.' WHERE `Id`=24571; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $n. I''m pleased to see you return intact; the viciousness I''ve been seeing among these creatures is startling.' WHERE `Id`=24565; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh dear. It seems the forces at work here are a bit difficult to control...$B$BPlease, don''t bother Naralex with this. It will only upset him.' WHERE `Id`=24566; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Naralex slowly takes the squirming heart from you, visibly disturbed.>$B$BI''ve been a fool. The one truth I did not want to accept has been staring me in the face this entire time...this foul thing is proof of that.$B$BYou and I have much work to do.' WHERE `Id`=24574; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We''ve done it! The nightmare''s connection to this place has been severed. The rest of the land is safe from this intrusion now, and in time, the abberations here will be subsumed by the balance of nature.$B$BI cannot thank you enough, $n. By helping to restore order here, you''ve let me make amends for my foolish actions.' WHERE `Id`=24601; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Kirge listens intently and then falls to one knee.>$B$BAlive! My boy still lives! Praise to the earthmother, I still have a son.$B$B<Kirge composes himself.>$B$B$C, my boy''s mother didn''t make it out of Taurajo alive. I will avenge her death, even if it means my son grows up without either of his parents. ' WHERE `Id`=24543; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I could feel what occured from here, $c. It bristled every hair I have.$B$BI''m overjoyed to hear you succeeded in pushing those horrors back, and I''ll be sure to scour the area for any stray deviate creatures.' WHERE `Id`=24807; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah yes... I see a cunning in your eyes that was not present before. Well done, $c.' WHERE `Id`=24552; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Bloodhilt looks at the badges, then allows them to spill from his hands onto the sands below. His lips curl open into a toothy grin.>$B$BNow THIS is what I like to see, $c! What is your name again?$B$BYou will go far here.' WHERE `Id`=24551; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So you held your ground! With tenacity like yours we may yet drive the Alliance from our lands.' WHERE `Id`=24546; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Very good. Now, should they storm the gates, they will have to do so with infantry.$B$BDo you think they have the stomach for that?' WHERE `Id`=24569; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Excellent. I''ll have their bodies strung up along the gold road as a message to the Alliance.' WHERE `Id`=24572; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Winnoa bows her head.>$B$BThank you.' WHERE `Id`=24573; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh, hi! Did Farlus send you? I''m so happy he remembered!$B$BBloodvenom Post is all overrun with awful slime thingies, and this poor tauren is the only one left! We''ve got to help him!' WHERE `Id`=28305; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Most people think the green glow is demonic corruption... but if you''ve got an eye for shades and hues like me, you can tell it''s the energies of the emerald dream! These little guys aren''t being corrupted by the waters, they''re doing their best to purify it!$B$BNow we''ll mash ''em up and make a nice yummy paste for Mr. Tauren to eat and feel all better.' WHERE `Id`=28207; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My rage quells at the news... perhaps I will find it easier to rest and heal now.$B$BMaybe my stomach will settle as well. Urgh...' WHERE `Id`=28190; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Poor little kitty, suffering out there in the woods for so long! You did a good thing for it, $n. And probably for all the travelers it''s been eating.$B$BThis tag will be handy...' WHERE `Id`=28208; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c. I''m feeling much better now, and can appreciate the news that those abominations are gone.$B$BYou still might not want to stand too close, just in case...' WHERE `Id`=28214; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hooray! The forest will be safer now!$B$BYou''re such a hero, $n! With everything you''ve done for me and Mr. Tauren and the trees and animals and flowers, you deserve a reward!$B$BYay!' WHERE `Id`=28213; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It''s good to see someone who cares about keeping the forest clean. Thank you, $n.' WHERE `Id`=28342; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I can tell just from the size of these that the fel taint is healing. Slowly... but significantly.$B$BThank you, $n. I will ensure these are properly purged.' WHERE `Id`=28341; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I thank you for hunting in my stead, $c.$B$BI''ve found I must pace myself... finding too much thrill in hunting demons is a dangerous path.' WHERE `Id`=28358; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This foul chunk is what those warlocks sought year after year. I will protect it myself, or destroy it if possible, and ensure Kroshius never rises again.' WHERE `Id`=28359; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The moonwell water quickly seeps into the ground with a soft glow. A few moments later, a rustling noise is heard, and a small sprout pops up before your eyes.' WHERE `Id`=28229; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The seedling pats its stalk with a rooty arm, as if full. It looks to have grown a bit, too!>' WHERE `Id`=28219; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The seedling coils its roots in what looks like a happy manner.>$B$BGrow... big...' WHERE `Id`=28220; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So warm and fresh and full of life. We love the sun, it makes us stronger.$B$BSoon now, very soon is the time of growing...' WHERE `Id`=28222; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So happy! Can you hear us? We''re so many friends now.$B$BBigger and bigger, with room for each friend...' WHERE `Id`=28221; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yes... it is time.' WHERE `Id`=28224; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Someday I will spread my branches across a renewed forest, full of life and hope.$B$BFarewell, $n. Have patience... and if you live long, you may see me again one day.' WHERE `Id`=28228; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='How noble of you... to blindly kill without question, to come for my head on the barest word of another.$B$BSheathe your fury and hear my tale first. You''ll see what noble ignorance has done to these lands.' WHERE `Id`=28217; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='And so my master set out to find the skull... risking his own life against an army of demons to find the source of corruption in Felwood. Imagine if he had not! Imagine what these woods would look like if the Skull of Gul''dan had continued its work, undisturbed...' WHERE `Id`=28218; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now you are beginning to see...' WHERE `Id`=28256; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Do you see now? For doing what was needed to drive the demons from these lands, my master was banished.$B$BNow these druids pick up the pieces, patting themselves on the back for scrubbing the remaining vestiges of the legion''s forces.$b$BBut that is not why I killed them.' WHERE `Id`=28257; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Enough! Your enthusiasm is impressive, but foolish. Gazing through the veil for too long without practice will break your mind.$B$BThe rest will be mine, $n. For now, I summon you back to me.' WHERE `Id`=28261; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I find it hard to believe everything you say, but the body of that demon is grim proof.$B$BI will order an investigation into the druids at Jadefire Run right away, and make sure my higher-ups know the demon hunter may be content to remain in exile.' WHERE `Id`=28264; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Welcome to the home of my pack, $c. Prepare yourself for war.' WHERE `Id`=28381; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $n. Now the Horde will not be able to defile these poor spirits to aid their brutish ways.' WHERE `Id`=28383; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='May their blood water our tree. You fight well, $n.' WHERE `Id`=28382; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Welcome to the pack, $r. Let''s hope you don''t mind getting a bit uncivilized.' WHERE `Id`=28384; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This is but the first strike.' WHERE `Id`=28337; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You flip a few switches on the pump and crank a large handle all the way to the right. There''s a shuddering rumble in the nearby walls.' WHERE `Id`=28385; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Perfect. I''ve had the pack gather explosives from the rest of the camp as well, and with these, we''ll have just enough to get things started once the oil is flowing.' WHERE `Id`=28386; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you for what you have done, as saddening as it is.  Accept this as a token of thanks.$B$BI would ask of you to please continue helping us, $N.  We have very few allies on which to call upon, and without your aid, the threats against my tribe would surely be too much for us to handle alone.' WHERE `Id`=28522; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='What''s dis? You got de smell of de E''ko on ya! Let Mau''ari tell ya a little bit about de E''ko and what it do.$b$bYou''re lucky, $r. De E''ko searched you out. A troll like me''s gotta go find de E''ko herself.$b$bAll de creatures of Winterspring have E''ko. De furbolg, de chillwind, de shardtooth... even de Ice Thistle yeti! You kill dese creatures, and sometimes, a bit of E''ko comes out. Different creatures... different E''ko.$b$bGo on now. Go find de other E''ko!' WHERE `Id`=28656; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='A hearty seafood dinner will lift everyone''s spirits and help us get the town back in shape again. Thanks for the help, $n.' WHERE `Id`=25800; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh, bless your heart, to do such a thing for a married woman like me. You''re too kind.' WHERE `Id`=25820; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This crate is covered with clawed scratches, and the marks of water damage.  Prying it open reveals soggy and rotted straw, as if something of value was stored in the crate.  You search through the straw...$B$B...and find an armload of red-colored bottles.' WHERE `Id`=25802; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This barrel is largely untouched.  Prying it open...$B$B...you are assaulted by the pungent odor of cheese.  It''s a little wet, but still tasty!' WHERE `Id`=25803; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ashelan was good to send you. There is indeed a wicked plot underway in this corrupted place.' WHERE `Id`=26881; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You found the manuscript! What a joyous day this is! I will study it exhaustively and learn all there is to know.$B$BI''ll make full sentinel yet!$B$BYour service to us is more than you know, $N. I hope that this gift shows you my gratitude.' WHERE `Id`=26885; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are no doubt of brave and noble blood, $n. We and all of the people of Ashenvale commend you for your efforts against evil.' WHERE `Id`=26883; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You have undoubtedly faced great peril to obtain these.$b$bYour actions have been selfless. It is for the good of all Azeroth that you help me with my research. I thank you, $n, for all that you have done.$b$bNow if you''ll excuse me I have much work to do.' WHERE `Id`=26884; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Kelris has eluded us for quite some time.$b$bIt seems as though whenever evil made its presence known in these parts, Kelris had played a role. For some time we considered him either dead or missing.$b$bBut this makes perfect sense. By ending his reign you have spared the lives of many innocent people.$b$bTo sacrifice someone to a servant of an Old God for one''s personal gain is beyond reproachful!$b$bYou have done a great deed, $n. I thank you on behalf of Ashenvale.$b$bIf only Thaelrid had survived....' WHERE `Id`=26882; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This barrel is halfway buried amidst the mud and grass ...' WHERE `Id`=25804; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The captain of the Blind Princess will be relieved to hear this precious cargo has been recovered.  You''ve well earned this payment for services rendered.$B$BIt''s good to see dependable folk like you, especially in trying times such as these.' WHERE `Id`=25805; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, well done $N.$B$BAccept this as payment for fulfillment of your contract with the Merchant Marines.' WHERE `Id`=25801; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That Altumus is certainly a gem, isn''t she? But there won''t be any of us left alive out here if we aren''t successful in our efforts in the ramparts.' WHERE `Id`=29543; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s a lot!  I''m afraid they''re spreading at a dangerous rate.  I hope I can solve the riddle of what is tainting them.$B$BThank you for your help, $N.  The land is a cleaner place from your efforts.' WHERE `Id`=919; -- Timberling Sprouts
UPDATE `quest_template` SET `OfferRewardText`='You got them. This is good! I''m hoping that careful study might lead me to understand where the timberling corruption stems from.$B$BI will plant these seeds in special soil I have prepared.  I believe the seeds will sprout into timberlings who are much more docile.$B$BPerhaps later you can see the results!' WHERE `Id`=918; -- Timberling Seeds
UPDATE `quest_template` SET `OfferRewardText`='Nicely done, $glad:lass;. I could use a $c like you around here.' WHERE `Id`=26842; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Much obliged! The rump''s part of my own secret twist on the recipe... but here''s instructions on how to make it with any kind of bear meat.$B$BAnd here''s a fresh batch of me own. Mind you eat them fresh!' WHERE `Id`=26860; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So I was right! Now the question is what the little freaks were plotting...' WHERE `Id`=26843; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good, good. Now we can see what''s going on down in that mine.' WHERE `Id`=26844; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Did you see a lot of kobolds in there? The thought of their grimy hands clawing around our mine makes my stomach rumble!' WHERE `Id`=26863; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s a gnoll head. Are you trying to pull some funny business, $N?$B$BIf you''re not, I''ve not the faintest idea what''s going on here.' WHERE `Id`=26845; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I''m sure that only worked because the troggs aren''t bright to begin with. But then again, us dwarves were once creatures of the earth as well.$B$BBeing bossed around by a kobold doesn''t sound quite dignified, and I''m glad we didn''t get to find out if they could pull that off.' WHERE `Id`=26846; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Gnolls and kobolds, and troggs? Oh my.$B$BI''d laugh if I didn''t have another twist in the story for you.' WHERE `Id`=26864; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I''ll rest easier knowing one of those lumbering things won''t be wandering into my bedroom at night... again.  Thanks much.' WHERE `Id`=25118; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Murlocs? Sure, I''ve hunted murlocs.$B$BAnd every single stinkin'' one of them deserved what they got! You hear me?' WHERE `Id`=26927; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yuck, they''re so gross-looking, but they''re my brother''s favorite. Thanks for sparing me from that messy job!' WHERE `Id`=29321; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Nice work, $N! Now, we need to decouple the reaction core matrix from the fuel sumps, or that whole place is gonna blow itself to Outland...' WHERE `Id`=14308; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Whew, the sample is secure. And it''s still steaming! Thank you, $N.$B$BAzsharite is a complex mystery wrapped in a velvety enigma of danger. Grapplehammer insists that we learn more about this strange substance.' WHERE `Id`=14310; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Phew! The stench! Well, hopefully that massive heap of carcasses smells more appetizing to a giant.' WHERE `Id`=14371; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, excellent. Some of these samples look fresh. I''m going to be up to my neck in this stuff trying to solve this mystery!' WHERE `Id`=14370; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Speak slower - what are you saying? Am I hearing you right? Those formations of azsharite are actually where the giants have - oh my. Groady!! Let''s not tell Dr. Grapplehammer, he''s made this stuff his life''s work.$B$BWell, at least now we know where azsharite comes from, and why it''s so rare. We''ve got to figure out a way to speed up, uh, \"production!\" ' WHERE `Id`=14377; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='So it was a no-go? Literally? Well, Grapplehammer won''t take no for an answer. We''ll have to try something else.$B$BMaybe I''ll have my interns smuggle this laxative into the night elf encampment. That''ll be good for a laugh, at least.' WHERE `Id`=14385; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh - marvelous. Tell me more. And that precocious young Gadgetspring? Dead as well? Ah, wonderful. My work here is important but at times I do miss the carnage of demolishing my enemies on a more personal level. Here, perhaps you can make use of some of my discarded equipment.' WHERE `Id`=14383; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You work so quickly!$B$BI''ll see that these are distributed to the various chefs and bakers of Thunder Bluff.$B$BThank you!' WHERE `Id`=29358; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My, those are some very lovely stones! They''ll make perfect shiny baubles, thank you.$B$BHere... Kah told me you''d be by with the stones, and to give this to you upon your arrival.' WHERE `Id`=29354; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve done it!  Vyral is killed!  This can only mean doom for the Twilight Hammer''s operations in Silithus.  There may be more of them scurrying about, but the blow you dealt to the cult today is one from which they will not easily recover.' WHERE `Id`=8321; -- Vyral the Vile
UPDATE `quest_template` SET `OfferRewardText`='The Alliance needs every able body they can get. The Horde has been receiving a steady supply of reinforcements from the northern part of the continent, and it''s been a struggle to keep up.$b$bLet me explain the situation to you.' WHERE `Id`=9415; -- Report to Marshal Bluewall
UPDATE `quest_template` SET `OfferRewardText`='Thank the Light you were successful.$b$bNow if we could only have started this sooner, our need would not be so desperate. We must keep the bounty of the desert from falling into the hands of the Horde.' WHERE `Id`=9419; -- Scouring the Desert
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  With Deathclasp gone we''re free to use the southern mountain range as a strategic path to circumvent the silithid hives.  Your work is greatly appreciated.' WHERE `Id`=8283; -- Wanted - Deathclasp, Terror of the Sands
UPDATE `quest_template` SET `OfferRewardText`='<Commander Mar''alith''s voice rings out from the shard.>$B$BWhether she is alive or dead, I must do what is right. She must be found. Alas, I am bound by duty to this outpost. Will you help me once more, $N?' WHERE `Id`=8304; -- Dearest Natalia
UPDATE `quest_template` SET `OfferRewardText`='Welcome to Starfall, $c. We have opened our doors to all travelers in our time of need.' WHERE `Id`=28674; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh good, another warm body!$B$BI hope that elf up there didn''t bore you to death. We''ve got a lot of bugs to kill here.' WHERE `Id`=28676; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We''re bringing out the bug spray, eh? I guess it can''t be helped.' WHERE `Id`=28706; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Fumigators? From Rinno? Geez...' WHERE `Id`=28707; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hey, nice work!$b$bIf you ever want to come back and kill some more bugs for absolutely no additional reward, please, feel free!' WHERE `Id`=28703; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='They may not look like much to you, but these relics hold great value to the people of Starfall.  You are kind, $N.' WHERE `Id`=28701; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Rinno sent you! And you brought... fumigators? Ugh!' WHERE `Id`=28710; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Simply splendid! I''ve been watching the Captain bring bear after bear back to camp and I can''t wait to see them thrown on the smoker.$B$BPerhaps I''ll have a taste of them raw...' WHERE `Id`=28637; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The Captain''s been bringin'' back bags full of owl, and I can''t wait to try it! Maybe Mr. Fancypants Francis here will even try some.' WHERE `Id`=28638; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Alright! Don''t stop now, we''re after the big ones next!' WHERE `Id`=28640; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Beautiful! I''m watching the Captain drag this all back right now and it''s a gorgeous sight.$B$BAnd the next course...' WHERE `Id`=28641; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Nice. Eggs.$b$bThese will go great with a little bear bacon.  Hey Francis, got any bear meat left over?' WHERE `Id`=28828; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Amazing, kid. You''re a cut above! I went through about five different contracted hunters trying to get that cat.$B$BWell, we found two of them after the Captain got the corpse, but let''s not dwell on that...' WHERE `Id`=28742; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve put us in enough owls for us to sell for a month, friend. Gotta hand it to ya.' WHERE `Id`=28745; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Francis smacks his lips.>$b$bYou''ve got to try some of this, $N.  These maulers are perfectly tenderized... possibly because of the pummeling you delivered.' WHERE `Id`=28719; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hell-Hoot is slain, and her meat is just as succulent as you''d expect.$b$bToday, we eat a legend.  Thank you, $N.' WHERE `Id`=28782; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ursius is... not delicious.  He tastes like a combination of pinecones and curdled milk, only... oilier.$b$bAre you sure this is Ursius?  The big bear?  In the cave?$b$bThis is horrible.  It honestly tastes like his meat has been steeped in urine.$b$bI don''t feel like I''m getting any stronger.$b$bUgh.  It''s really bad.  Do you want to try some?' WHERE `Id`=28639; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I hope you understand that I can''t just admit you to the Sunwell, $N. This is the most sacred place known to the sin''dorei and we have only recently regained control over it.$B$BYou would raise the hopes of our people with tales of Quel''Delar? Without proof of the truth of your claims, I see no reason to take you at your word.' WHERE `Id`=24562; -- Journey To The Sunwell
UPDATE `quest_template` SET `OfferRewardText`='You truly do carry Quel''Delar. This is a great day for all of Quel''Thalas and the sin''dorei. You have my leave to enter the Sunwell and finish the sword''s restoration. Keep your head high, $N. The children of Silvermoon have dreamt of this day for years.' WHERE `Id`=24563; -- Thalorien Dawnseeker
UPDATE `quest_template` SET `OfferRewardText`='Am I truly laying my eyes upon the weapon of Thalorien Dawnseeker? This is a wondrous day for the Sunreavers and for all sin''dorei!' WHERE `Id`=24598; -- The Purification of Quel'Delar
UPDATE `quest_template` SET `OfferRewardText`='That a weapon of such power has been redeemed from the clutches of evil is a great omen in these times, $N. With Quel''Delar and staunch Sunreaver allies at our side, the Lich King will have good reason to fear.$B$BThe crusade maintains an arsenal of exceptional weapons for our strongest allies. Allow me to offer you your choice from among them in return for entrusting us with the care of Quel''Delar.' WHERE `Id`=24799; -- A Victory For The Sunreavers
UPDATE `quest_template` SET `OfferRewardText`='A perfect fit!  My goat puncher is finally finished!' WHERE `Id`=27775; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I wonder where all of these ogre-magi are coming from?  Curious times, indeed.' WHERE `Id`=27774; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done!  I have no doubt that those goats will be back, but they''ll think twice before they nibble my cogs again!' WHERE `Id`=27776; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $r.  You may keep the goggles, as they have already served their purpose: they brought you to me.' WHERE `Id`=27764; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='This grisly task was necessary, $N.$b$bAll will be revealed to you soon.  For now, know this:$b$bI am no ordinary goblin.$b$bI serve a mistress of unimaginable power, and her motives here are not as dark as they might seem.' WHERE `Id`=27766; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you for gathering these so quickly, $N.' WHERE `Id`=27765; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We will find a shred of good within these dragons, $N.  Whether it is in the wild eggs you found, the bodies of the whelplings you slew, or the eggs that we have encouraged Nyxondra to lay... we will find an untainted black dragon.' WHERE `Id`=27770; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You have done everything that I have asked you, without question.  Our job here in Lethlor Ravine is done.$b$bIt is now time that I revealed everything to you.' WHERE `Id`=27771; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My true name is Rheastrasza, and I am an envoy of Alexstrasza herself, the Aspect of the red dragonflight.$b$bWith Deathwing currently occupied with other matters, we are going to find a way to redeem the black dragonflight.$b$bAnd you are going to help us.' WHERE `Id`=27769; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ooh!  Science stuff!  Let''s see what you''ve got here...$b$bWild eggs?  Blech.  Useless.  These are never any good.$b$bOoooh, what''s this?  Some sort of... pre-engineered egg?  This looks promising, but I don''t want to know what Rhea had to do to get it.$b$bHmm... yes, some very nice corpses.  Very nice indeed.$b$bAlright, I''ll see what I can do.' WHERE `Id`=27772; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The results are in.  I''ve identified traces of corruption in all three samples you brought me.  Rhea will be quite disappointed.' WHERE `Id`=27789; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Titans?  You wanna know about titans?$b$bYou came to the right place, $g lad: lass;.  We''re on the brink of somethin'' big.' WHERE `Id`=27791; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Chalice... worthless.$b$bVase... counterfeit.$b$bHieroglyph... interesting, but rather common.$b$bWhat''s this?  I''ve never seen trogg craftsmanship of this caliber!  You''ve stumbled upon something rare indeed, $n.$b$bAlright, fine.  Let''s talk titans, shall we?' WHERE `Id`=27792; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The statue slides into place on the cold marble slab.>' WHERE `Id`=27797; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The red statue falls over, and you place it back in your bags.  You hear a rumbling noise in the tomb''s central chamber.>' WHERE `Id`=27709; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The statue clicks into place on the large stone slab.>' WHERE `Id`=27796; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The jade statue becomes one again, and you place it in your pocket.  You hear a shifting noise in the tomb''s central chamber.' WHERE `Id`=27693; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='With your inspection complete, the statues return to their original positions.  Something seems different in the room, however...' WHERE `Id`=27793; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I am finally free of the control of the Gnarlpine. Thank you, $N.$B$BMy spirit may now rest peacefully forever in the Emerald Dream.$B$BPerhaps one day we may meet again, young $c. But, for now, please accept this reward as a symbol of my gratitude.' WHERE `Id`=2561; -- Druid of the Claw
UPDATE `quest_template` SET `OfferRewardText`='Looks like you make it out in one piece, $c!$B$BIt''s good to be out of that foul pit of water for a moment, and to have some resources at our disposal again. Don''t get too comfortable though, we still have a grim task ahead.$B$BWhat about you? Had enough honor for one day, or do you want to get back in there and make Hellscream proud?' WHERE `Id`=26006; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, $c.$B$BThat slippery beast got away! I''ll be making a few upgrades. It won''t be so lucky next time.' WHERE `Id`=26221; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Dis is nice, big heart! If you be interested, Mau''ari tell ya how I be gettin'' de E''ko....' WHERE `Id`=28540; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Inside the cauldron bubbles a rotting, repulsive-smelling substance...' WHERE `Id`=28464; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thanks so much, $N! Now I can get back to work here.$B$BDid you find anything of interest at the Winterfall camp?' WHERE `Id`=28460; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Disturbing news indeed. This stuff''s much more like what you''d see in Felwood than in Winterspring...' WHERE `Id`=28467; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='That''s quite a bit of it... the Winterfall are slipping further and further. And now we''ll have to worry about the other wildlife as well, in time.' WHERE `Id`=28530; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Donova examines the contents of the crate.>$B$BI wonder if consuming this substance makes the furbolg more aggressive. They do seem much larger...' WHERE `Id`=28469; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I wonder what all of this means... I can''t make anything out...' WHERE `Id`=28471; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you so much, $N. I hope to get back to my studies without worry that I will be ambushed. Please accept this as a reward.' WHERE `Id`=28470; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yes, if you let me examine this for a while, I might be able to translate it for you.$B$B<Kelek flips through the pages.>$B$BWhen I am able to look over this fully, I will send word to you.$B$BThank you for sharing this with me, $N. Very little is known about the Winterfall furbolg.' WHERE `Id`=28472; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Pity me, stranger, and all the Highborne, for it was here our folly began... our folly that cursed our children, and our children''s children, to this day.' WHERE `Id`=28479; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The Crystal of Zin-Malor was stolen from a far-off temple without remorse. Its ability to control the arcane was too tempting, and when it was toyed with, its shattering cursed us all. Kel''theril suffered until the Sundering destroyed it for good.$B$BThe curse of Zin-Malor binds all who seek its power here. I was the first to fall to its temptation. Thousands of years later, our long lost descendants would be next...' WHERE `Id`=28513; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We were proud and noble. Our faith in the light protected us, and with the Sunwell, we wanted for nothing.$B$BBecause of that blindness, we came here to repeat the tragedy of history, as our entire race would in time.' WHERE `Id`=28534; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We were shocked before we died. Shocked that one among our noble and austere kind could descend into vicious obsession so quickly. We died as naive fools, the victims of our own blithe assumptions.$B$BThe living would know that these events would play out yet again... both here, and among the entire elven race with the fall of Quel''thalas.' WHERE `Id`=28518; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='We were not naive, as our forefathers were. We were suspicious and cunning and ready for betrayal at every turn.$B$BYet our pride and greed drove us to ruin once more. How many more will be lost to Kel''theril?' WHERE `Id`=28535; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The living farstrider who sent you here could not bear to see our fate. He ran... a wise decision.$B$BIf one now holds the Crystal of Zin-Malor again, it will spell the doom of all around them. It should never have been reassembled.' WHERE `Id`=28519; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The shade! Yes, I saw it too!' WHERE `Id`=28536; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Let me see... faintly written, among the engraved incantations, is the name of its master!$B$B\"Umbranse...\"' WHERE `Id`=28537; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Umbranse... I see. I will carry this information onto my people.$b$bYou will be contacted if you are needed again.' WHERE `Id`=28848; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Lilith wants a boulder moved inside the observatory, eh? That''s my business: consolidated materials. I usually don''t get individual buyers, but hey, I won''t ask questions.' WHERE `Id`=28609; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c. You''ve proven very useful.' WHERE `Id`=25593; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You know what it is to carry yourself with honor, $c. You do Hellscream proud.' WHERE `Id`=25592; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Now to hold up my end of the bargain. I''ll get this cooked and passed out immediately.$B$BYou and I will have to have a talk later. I''m going to need help that these soldiers just can''t offer.' WHERE `Id`=25595; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Glad you know a quick buck when you see one. Pleasure doing business with you, $g buddy:gorgeous;.' WHERE `Id`=25594; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Looks like a good amount! Here''s your pay, as promised...' WHERE `Id`=28610; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, you actually brought the boulder! I''m a bit surprised.$B$BStand back and witness the pinnacle of craftsmanship.' WHERE `Id`=28618; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='They want a tree now? Let''s see what I got.' WHERE `Id`=28624; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Not a bad haul. Maybe we should look into growin'' those treants instead...' WHERE `Id`=28625; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Alright! Stand back now and watch what a true quality weapon can do!' WHERE `Id`=28626; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh, it''s you again! I''m so surprised!' WHERE `Id`=28627; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Part of this machine is still moving, but on closer inspection it''s been severely manhandled. The metal is dented and cracked, and there''s huge footprints in the snow all around it.$B$BIn fact, it sounds like something''s approaching right now...' WHERE `Id`=28630; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These furs are perfect, $N. We''re off to a great start here!' WHERE `Id`=28629; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I can''t wait to show my friends! Now, just wait a moment while I attach these...$B$BPerfect!' WHERE `Id`=28631; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Not bad! Let''s hope they don''t ask for lava or something next, right?' WHERE `Id`=28632; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Perfect. Now you''ll see what really matters in a weapon... finesse.' WHERE `Id`=28628; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hah! She''ll think twice before making fun of my ideas again!$B$BThanks for your help, $N. I couldn''t have had so much fun without you!' WHERE `Id`=28722; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are $N, yes?$b$bGood, you will serve well. I require the aid of a $c such as yourself.' WHERE `Id`=28847; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Let''s see what I can do with these...' WHERE `Id`=28837; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good. It is just as Jaron described it.' WHERE `Id`=28838; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The dreamcatcher is charged.  We are nearly ready to retake Mazthoril.' WHERE `Id`=28839; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='My honor is restored.$b$bPartially.$b$bMy tale continues, $c, for I have left portions of my honor elsewhere in this forest.$b$bIt has not been a very easy journey for me.' WHERE `Id`=28829; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='If I survive my wounds, I will always remember your name, $c.$b$bWhenever the wind whistles through the trees, I will always hear your name.$b$bThank you.' WHERE `Id`=28831; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Be glad that the adult giants are trapped on the other side of that gorge. They are far hardier than these tumblers you fight.$b$bI feel rejuvenated by your courage, $c. Perhaps all hope is not lost after all...' WHERE `Id`=28830; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Haleh applies the water to your dreamcatcher.>$b$bYou''ve done well, $N.' WHERE `Id`=28840; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Lovely. These''ll fry up nice, and the camp''ll be spared a week of mushroom biscuits.' WHERE `Id`=25723; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well I''ll be. There''s someone around here that isn''t a disgrace to Magni, bless his poor gravelly heart.$B$BJust for that, you get first crack at the ale, $glad:lass;. But don''t let it get to your bloody head! We''ve got more gorram work to do, and I won''t tolerate you lettin'' up early!' WHERE `Id`=25721; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah, well. The good news is, these will do perfectly. The bad news is I can tell they''re the wrong color for topsoil here, even drunk as I am.$B$BThat means things aren''t looking good for the area, $n. But we''ve got more tests to run before we hang up the towel.' WHERE `Id`=25722; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh good, it''s undamaged! Thanks a lot.$B$BYou ah, you might want to wipe yourself off a bit there.' WHERE `Id`=25726; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='These''ll do nicely. I''ll have the lads back on their feet as soon as I make these somewhat edible.' WHERE `Id`=25725; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good riddance to bad rubbish! I''ll burn the foul thing later so it doesn''t stink up the camp.' WHERE `Id`=25727; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Wonderful, $glad:lass;. This should be all we need. Let''s have a look.' WHERE `Id`=25734; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Good job. I wouldn''t be surprised if the horrid things had eggs in there somewhere, but it''ll do for now.' WHERE `Id`=25733; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The thing''s still got some fight in it! Amazing!$B$BYou''re a tough one, $n. It''s much appreciated. I''d say a reward is in order before you head out.$B$BKeep doin'' your best for Ironforge, you hear? And if you ever see my sister, say hello for me.' WHERE `Id`=25736; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Glorious! Beautiful stuff, this ore.$B$BGood on you for not droppin'' your pick. Last person I sent out let the butt end hit the floor, and that part''s not sparkproof.' WHERE `Id`=25735; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Let''s take a look here.$B$BOh, this is just lovely. \"Significant geological instabilities\"? \"Threat of sudden, massive topological destabilization\"?$B$BNice to hear that somethin'' bad might happen around here. I guess we''ll just pick up our flooded town and fly it off somewhere safe!$B$BBah!' WHERE `Id`=25777; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='He''s dead! Thank the Makers...$B$BI don''t like the looks of them, lad. The Dark Iron I''ve tussled with were never this crazy. Something''s getting to these sods...' WHERE `Id`=25780; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah!  That hits the spot, and loosens the tongue.  Thanks, mate!' WHERE `Id`=25815; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='How can evil take root in such a sword? I would not have thought it possible if the evidence wasn''t here before my eyes. If the greatest of dragonkind''s creations could be corrupted and turned against them, why not a mere sword?$B$BI believe Uther is right. You must heed his advice quickly, $N.' WHERE `Id`=24561; -- The Halls Of Reflection
UPDATE `quest_template` SET `OfferRewardText`='Welcome to Cenarion Hold.$b$b<Windcaller Proudhorn brushes some snow off of your shoulder.>$b$bYou''ve certainly come from far off.' WHERE `Id`=28856; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Look around you; you''re looking at the largest goblin-owned hunting reserve in Kalimdor! I''ve got the licenses to shoot and eat everything that walks on the snow from here to Everlook... and lemme tell you, they''re good eatin''!' WHERE `Id`=28718; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The shadowmaw panthers proved no match for your skills as a hunter.  Only one task remains.' WHERE `Id`=192; -- Panther Mastery
UPDATE `quest_template` SET `OfferRewardText`='You have our thanks, $N.' WHERE `Id`=28842; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='It will take some time for Mazthoril to recover... but she will.$b$bThe blue dragonflight is far from dead.' WHERE `Id`=28841; -- -Unknown-


-- `quest_template` has empty data.
UPDATE `quest_template` SET `RequestItemsText`='Yes?' WHERE `Id`=24606; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to fish up a few specimens?' WHERE `Id`=26556; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did the eye work as bait?' WHERE `Id`=26557; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='There are some who say that the sulfur in those wrappings has curative properties. Personally, I am unconvinced, but I am willing to endure the smell on the off-chance that it does.' WHERE `Id`=29247; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='It is good to see you again, $N.' WHERE `Id`=10733; -- Down the Violet Path
UPDATE `quest_template` SET `RequestItemsText`='The readings, $N.  Did you complete them?' WHERE `Id`=9824; -- Arcane Disturbances
UPDATE `quest_template` SET `RequestItemsText`='Have you obtained the ghostly essences I require, $c?' WHERE `Id`=9825; -- Restless Activity
UPDATE `quest_template` SET `RequestItemsText`='Bring me yeti hearts, $N.' WHERE `Id`=28484; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I need stag meat!' WHERE `Id`=28489; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I''m practically naked here, $N. Help me out, eh?' WHERE `Id`=28487; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yetimus must die!' WHERE `Id`=28485; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Bring me those canisters!' WHERE `Id`=28325; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you brought my harvest?' WHERE `Id`=28114; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Recover our \"supplies,\" $N!' WHERE `Id`=28144; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='For science!' WHERE `Id`=28199; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''s this?' WHERE `Id`=28196; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Get the key!' WHERE `Id`=28209; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='For Twinkles!' WHERE `Id`=28231; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do not waste my time, $N.' WHERE `Id`=28237; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to catch a giant pike?' WHERE `Id`=26588; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='These hearts will give us exactly what Hamuul needs to rest.' WHERE `Id`=29246; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes, $c?' WHERE `Id`=29214; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='This stone obelisk is obviously some sort of layout or map, but it isn''t completely readable.  Perhaps if you had a Tol''vir Hieroglyphic keystone, the markings might make more sense.' WHERE `Id`=28802; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You haven''t seen a ring about, have you? I think one of the cavefish might have swallowed it...' WHERE `Id`=29346; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='It is good to see you again. ' WHERE `Id`=29181; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Please... don''t tell the other goblins that I''m an environmentalist!  I don''t think I can take the mocking!' WHERE `Id`=26122; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We need lots and lots of glow-juice.' WHERE `Id`=26087; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How many did you catch?' WHERE `Id`=26088; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Blam!>$b$bYou brought me something?' WHERE `Id`=26090; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Where was he?  What happened?' WHERE `Id`=26092; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How much plunder did you get, $N?' WHERE `Id`=25976; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''s that smell?' WHERE `Id`=25982; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I heard that you had an unpleasant encounter with putting one of the demons on your head. I can assure you that they are now all quite dead.' WHERE `Id`=26096; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have it, $N?$B$BWith the Unfathomable''s brain, we still may yet be able to communicate with L''ghorek, the dying ancient one in front of us.' WHERE `Id`=26111; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I SENSE... SOMETHING. COME CLOSER....' WHERE `Id`=26140; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='DO... YOU HAVE... ALL THAT IS... REQUIRED?' WHERE `Id`=26141; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do I smell fresh crunchy frog?' WHERE `Id`=29509; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What is it you have there?' WHERE `Id`=29457; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find the clams?' WHERE `Id`=26543; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Tell me about the guards. Chaos? Fear? Panic? Hm?' WHERE `Id`=25284; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Peake is a monster. If his superiors knew, they would thank the Horde for ending him.' WHERE `Id`=24513; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Terrortooth raptors hunt in packs and surround their prey. We hunt them, yes; but we also respect them.' WHERE `Id`=24514; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Ah, you say you found something on one of the bodies?' WHERE `Id`=24518; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How did it go down there?  Any luck with the tails and the stonefish?' WHERE `Id`=26572; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you get my parts? Let me see them!' WHERE `Id`=24619; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The Alliance is nothing. Swarms of those critter-crawlys?$B$B<Crawgol shudders.>' WHERE `Id`=24654; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Watch your back, $c. They could be anywhere.$B$B<Bloodhilt peers around the fortress with narrowed eyes.>' WHERE `Id`=24634; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The Wildhammer are fierce fighters, in the air or on the ground. How goes the battle?' WHERE `Id`=24631; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You''ve gotta have heart, $N. All you really need is heart.' WHERE `Id`=24620; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Brraaaaaaiiinnnnss...' WHERE `Id`=24621; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Give me the plans, quickly! Our time grows short.$B$BMostly because I''ve been eating my disguise.' WHERE `Id`=24685; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Ah, do you bring news from up north?' WHERE `Id`=24667; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='<Mankrik snarls.>$B$BWhat is it!? I''m busy!' WHERE `Id`=24604; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The elements must be carefully balanced, so returning the essence is key.  I hope you''ve been collecting it...' WHERE `Id`=24824; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I hope this works.  My skills as a shaman are limited, and I fear that this task may be too much for us.' WHERE `Id`=25989; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='In my youth, I was given some training on spearfighting.$b$b\"Stick them with the pointy end,\" I think it was.' WHERE `Id`=25992; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The naga must have some ulterior motive with these pearls.  If I had time to study them, I''m certain I could figure it out.' WHERE `Id`=25994; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Yes, $c?' WHERE `Id`=25956; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Your foe is but a short swim down this hall. Go, and bring death with you.' WHERE `Id`=25659; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Tick, tock, tick, tock. Always in such a hurry. No time for innovation. What I wouldn''t give for a lab again!' WHERE `Id`=25962; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='These guys aren''t in good shape. We may need to retreat sooner than we''d like.' WHERE `Id`=25964; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Welcome back $n - were you able to find some tangible evidence as to the plans of the gnolls?' WHERE `Id`=25366; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you managed to bring down Stinglasher yet?' WHERE `Id`=25369; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='How goes the hunt, $N?  Are you here to report your success?' WHERE `Id`=25367; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The rope ties the whole plan together!' WHERE `Id`=25971; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='A whole big box of amazing! That''s what it is. I need more amazing in my life.$B$BDon''t worry, I''ll share.' WHERE `Id`=25970; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you find anything of use on that agent?' WHERE `Id`=24557; -- The Silver Covenant's Scheme
UPDATE `quest_template` SET `RequestItemsText`='Was Shandy able to help you get a Silver Covenant tabard?' WHERE `Id`=24556; -- A Suitable Disguise
UPDATE `quest_template` SET `RequestItemsText`='Did you recover the book from Wyrmrest?' WHERE `Id`=24451; -- An Audience With The Arcanist
UPDATE `quest_template` SET `RequestItemsText`='We''ve been expecting your return. What has kept you?' WHERE `Id`=24558; -- Return To Myralion Sunblaze
UPDATE `quest_template` SET `RequestItemsText`='Were you able to reconstruct Quel''Delar?' WHERE `Id`=24559; -- Reforging The Sword
UPDATE `quest_template` SET `RequestItemsText`='Until the sword is tempered, it will be useless.' WHERE `Id`=24560; -- Tempering The Blade
UPDATE `quest_template` SET `RequestItemsText`='Have you taken the Bristlebacks down a peg or two?' WHERE `Id`=24534; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I am extremely busy, $c.' WHERE `Id`=24542; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you collected enough? We''ll need several for proper comparison.' WHERE `Id`=24570; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do you have the seeds?' WHERE `Id`=24571; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Cutting down the outgrowth will merely buy us some time. Have you found any suspicious pieces?' WHERE `Id`=24574; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You look like the type of $c who gets things done. What news do you have from the field?' WHERE `Id`=24551; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Why did Gar''dul allow the Alliance to create such a buildup of heavy siege vehicles? Why wasn''t a strike ordered until I got here? Gar''dul will have to answer for this...' WHERE `Id`=24569; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have their spirits found peace with the Earthmother?' WHERE `Id`=24573; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Remember, it''s the bright green glowing ones!' WHERE `Id`=28207; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you find the kitten?' WHERE `Id`=28208; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Do be sure to pick up after your own kills, as well.' WHERE `Id`=28342; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Be wary with the essence. It is as poisonous as it is powerful.' WHERE `Id`=28341; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The core must be kept away from Shatter Scar Vale.' WHERE `Id`=28359; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Was I right? How many did you find?' WHERE `Id`=28386; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Your task is not an easy one, my friend.$B$BBut if you get me the manuscript, $N...then your reward will be great and we will gain a better understanding of what it is that the Twilight''s Hammer and the naga are up to.' WHERE `Id`=26885; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Blackfathom Deeps was once an ancient night elf temple. It once housed a most powerful moonwell. Who knows what evil brews there now at the hands of the Twilight''s Hammer.$b$bHave you made any progress in ridding the temple of their presence?' WHERE `Id`=26883; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Once I have enough samples to study, my true work can begin. With the corrupted brain stems of both the satyr and naga of Blackfathom Deeps I can try to draw a correlation between the mutations.$b$bPerhaps with that gained knowledge we can prevent the blood elves from delving deeper into deformity and evil.' WHERE `Id`=26884; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='It is good to see you again, $N. What news do you bring?$B$BWas your foray successful? Did you find Thaelrid?' WHERE `Id`=26882; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='If you find some crazy night elf lass in there, be sure to give her a kick in the duff.' WHERE `Id`=8309; -- Glyph Chasing
UPDATE `quest_template` SET `RequestItemsText`='Go play with the monkey, kid. I don''t have time for this. ' WHERE `Id`=8310; -- Breaking the Code
UPDATE `quest_template` SET `RequestItemsText`='Hello, $N.  Have you found any sprouts near the waters?' WHERE `Id`=919; -- Timberling Sprouts
UPDATE `quest_template` SET `RequestItemsText`='Do you have the seeds?  I am eager to plant them.' WHERE `Id`=918; -- Timberling Seeds
UPDATE `quest_template` SET `RequestItemsText`='Did you find enough clams?' WHERE `Id`=29321; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Once you have the laxative, try to feed it to Gormungan. And maybe give him a magazine or something. Do it for science!' WHERE `Id`=14385; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Did you happen to bring me any shiny stones?' WHERE `Id`=29354; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I''ll need the creature''s pincer as proof of the deed.  No pincer, no reward.' WHERE `Id`=8283; -- Wanted - Deathclasp, Terror of the Sands
UPDATE `quest_template` SET `RequestItemsText`='Wasn''t expecting to see a stranger down here!' WHERE `Id`=28707; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I hope you found them intact...' WHERE `Id`=28701; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''re you doing here?' WHERE `Id`=28710; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Mmmm....' WHERE `Id`=28828; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What brings you here?' WHERE `Id`=24562; -- Journey To The Sunwell
UPDATE `quest_template` SET `RequestItemsText`='What news do you bring from the Sunwell?' WHERE `Id`=24598; -- The Purification of Quel'Delar
UPDATE `quest_template` SET `RequestItemsText`='Is it true that you have restored Quel''Delar?' WHERE `Id`=24799; -- A Victory For The Sunreavers
UPDATE `quest_template` SET `RequestItemsText`='With all the rumbling bellies, it sounds like there''s a monster in this cave. It''s putting my nerves on edge.' WHERE `Id`=25595; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Never underestimate the appeal of something shiny.' WHERE `Id`=25594; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You got that rubble?' WHERE `Id`=28610; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Oh, it''s you again. Where''s that boulder?' WHERE `Id`=28618; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Show me the lumber.' WHERE `Id`=28625; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Chop chop!' WHERE `Id`=28626; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='I''ve got lots to get started on here. Please get me those furs as soon as you can!' WHERE `Id`=28629; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Are they perfect? They better be perfect!' WHERE `Id`=28631; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Oh, you''re back! How were the yetis?' WHERE `Id`=28632; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Ah, you''re back!' WHERE `Id`=28628; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='She''ll never expect it!' WHERE `Id`=28722; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Mazthoril belongs to the blue dragonflight. This is not right.' WHERE `Id`=28837; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='The owlbeasts'' magic will be the key to our retaking of Mazthoril.' WHERE `Id`=28838; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What are you doing, $N? We need that essence.' WHERE `Id`=28839; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Welcome back.' WHERE `Id`=28840; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What happened inside the Halls of Reflection?' WHERE `Id`=24561; -- The Halls Of Reflection
UPDATE `creature_model_info` SET `bounding_radius`=2.8, `combat_reach`=5 WHERE `modelid`=39182; -- 39182
UPDATE `creature_model_info` SET `bounding_radius`=1.05, `combat_reach`=0.875 WHERE `modelid`=447; -- 447
UPDATE `creature_model_info` SET `bounding_radius`=0.347222, `combat_reach`=1.5 WHERE `modelid`=31211; -- 31211
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=21243; -- 21243
UPDATE `creature_model_info` SET `bounding_radius`=2.25 WHERE `modelid`=38705; -- 38705
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.25 WHERE `modelid`=785; -- 785
UPDATE `creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.5 WHERE `modelid`=39456; -- 39456
UPDATE `creature_model_info` SET `bounding_radius`=0.1, `combat_reach`=0.125 WHERE `modelid`=5560; -- 5560
UPDATE `creature_model_info` SET `bounding_radius`=0.63, `combat_reach`=7.2 WHERE `modelid`=11997; -- 11997
UPDATE `creature_model_info` SET `bounding_radius`=0.3415254, `combat_reach`=1.024576 WHERE `modelid`=13096; -- 13096
UPDATE `creature_model_info` SET `bounding_radius`=0.1705, `combat_reach`=0.55 WHERE `modelid`=25391; -- 25391
UPDATE `creature_model_info` SET `bounding_radius`=0.2294, `combat_reach`=0.74 WHERE `modelid`=25390; -- 25390
UPDATE `creature_model_info` SET `bounding_radius`=1.222034, `combat_reach`=1.527542 WHERE `modelid`=9570; -- 9570
UPDATE `creature_model_info` SET `bounding_radius`=1.088135, `combat_reach`=0.9067796 WHERE `modelid`=1100; -- 1100
UPDATE `creature_model_info` SET `bounding_radius`=0.3, `combat_reach`=0.375 WHERE `modelid`=32063; -- 32063
UPDATE `creature_model_info` SET `combat_reach`=1.294068 WHERE `modelid`=2437; -- 2437
UPDATE `creature_model_info` SET `combat_reach`=1.283898 WHERE `modelid`=598; -- 598
UPDATE `creature_model_info` SET `bounding_radius`=0.795, `combat_reach`=1.5 WHERE `modelid`=599; -- 599
UPDATE `creature_model_info` SET `bounding_radius`=1.376271, `combat_reach`=1.720339 WHERE `modelid`=32023; -- 32023
UPDATE `creature_model_info` SET `bounding_radius`=0.1481864, `combat_reach`=0.6350847 WHERE `modelid`=4734; -- 4734
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=30211; -- 30211
UPDATE `creature_model_info` SET `bounding_radius`=0.62, `combat_reach`=10 WHERE `modelid`=34264; -- 34264
UPDATE `creature_model_info` SET `bounding_radius`=0.347, `combat_reach`=1.5 WHERE `modelid`=1852; -- 1852
UPDATE `creature_model_info` SET `bounding_radius`=1.95, `combat_reach`=2.4375 WHERE `modelid`=8716; -- 8716
UPDATE `creature_model_info` SET `bounding_radius`=0.3978, `combat_reach`=1.95 WHERE `modelid`=33035; -- 33035
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=38252; -- 38252

UPDATE `npc_text` SET `text1_0`='Gonna make a guild, are ya? Good luck to ya then!

Talk to Aldwin Laughlin in the Stormwind Vistor''s Center. It''s in the Trade District right as you come in from the Valley of Heroes.', `text1_1`='Gonna make a guild, are ya? Good luck to ya then!

Talk to Aldwin Laughlin in the Stormwind Vistor''s Center. It''s in the Trade District right as you come in from the Valley of Heroes.' WHERE `ID`=882; -- 882
UPDATE `npc_text` SET `text0_0`='Alexstrasza''s Drakes will pick us up on the other side of this abandoned excavation site. Check your weapons, this place stinks of an ambush.

Let me know when you''re ready to move out.' WHERE `ID`=18347; -- 18347

UPDATE `creature_equip_template` SET `itemEntry1`=2703, `itemEntry2`=13859 WHERE `entry`=44299; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=21573 WHERE `entry`=42218; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1905 WHERE `entry`=16864; -- Stormwind Infantry
UPDATE `creature_equip_template` SET `itemEntry1`=10898, `itemEntry2`=12456 WHERE `entry`=16582; -- Thrallmar Marksman
UPDATE `creature_equip_template` SET `itemEntry1`=2709 WHERE `entry`=3382; -- Southsea Cannoneer
UPDATE `creature_equip_template` SET `itemEntry1`=34784 WHERE `entry`=27566; -- Unu'pe Villager
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=33468; -- Silvermoon Valiant
UPDATE `creature_equip_template` SET `itemEntry1`=3351 WHERE `entry`=27290; -- Hungering Dead
UPDATE `creature_equip_template` SET `itemEntry1`=2717 WHERE `entry`=28126; -- Don Carlos
UPDATE `creature_equip_template` SET `itemEntry1`=1902 WHERE `entry`=44158; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=12892 WHERE `entry`=31152; -- Undying Minion
UPDATE `creature_equip_template` SET `itemEntry1`=34820 WHERE `entry`=27260; -- Dragonflayer Huscarl
UPDATE `creature_equip_template` SET `itemEntry1`=44638 WHERE `entry`=32706; -- Saedelin Whitedawn
UPDATE `creature_equip_template` SET `itemEntry1`=3362, `itemEntry2`=13604 WHERE `entry`=14849; -- Darkmoon Faire Carnie
UPDATE `creature_equip_template` SET `itemEntry1`=1899 WHERE `entry`=1976; -- Stormwind City Patroller
UPDATE `creature_equip_template` SET `itemEntry1`=23225 WHERE `entry`=15938; -- Eversong Ranger
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=623; -- Skeletal Miner
UPDATE `creature_equip_template` SET `itemEntry1`=3774, `itemEntry2`=0 WHERE `entry`=625; -- Undead Dynamiter
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=626; -- Foreman Thistlenettle
UPDATE `creature_equip_template` SET `itemEntry1`=3368 WHERE `entry`=391; -- Old Murk-Eye
UPDATE `creature_equip_template` SET `itemEntry1`=14877 WHERE `entry`=44791; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=14877 WHERE `entry`=44792; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=1906 WHERE `entry`=45254; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=11763 WHERE `entry`=507; -- Fenros
UPDATE `creature_equip_template` SET `itemEntry1`=14877 WHERE `entry`=16335; -- Blackpaw Scavenger
UPDATE `creature_equip_template` SET `itemEntry2`=0 WHERE `entry`=47146; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=75236, `itemEntry2`=75236 WHERE `entry`=55689; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=60759 WHERE `entry`=44855; -- -Unknown-
UPDATE `creature_equip_template` SET `itemEntry1`=5532 WHERE `entry`=37696; -- Crusader Halford
UPDATE `creature_equip_template` SET `itemEntry1`=49198 WHERE `entry`=43229; -- -Unknown-

UPDATE `quest_template` SET `OfferRewardText`='Good work, $N. It''s up to all of Thunder Bluff''s fishers to keep this vicious creature out of Mulgore''s waters.' WHERE `Id`=29345; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ooo, that bread smells delicious. You are quite the baker, $N.$B$BWho knows how far these exquisite loaves will go... I hear it''s even popular among the draenei of the Azuremyst Isles!' WHERE `Id`=29363; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I have observed you, $r.$B$BYou do not fear shedding Twilight blood.$B$BIn this, I am willing to extend you some degree of trust.$B$BIt is a start.$B$BAll things in time.' WHERE `Id`=26376; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Time brings respect to all.$B$BThe smallest pebble.$B$BThe largest mountain.$B$BThe most stubborn cultist.' WHERE `Id`=26377; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You are a generous $r. You give back to the earth that offers you so much. You have my respect. You shall surely have the respect of the Stone Lords with time.' WHERE `Id`=26375; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The ground rumbles slightly as you approach the cave. This looks to be the entrance that Diamant and Felsen spoke of.>' WHERE `Id`=26426; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<This is it. This is the stone Diamant sent you for.>' WHERE `Id`=26869; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done, fleshling!$B$BThe gyreworms are among our most dangerous enemies.$B$BThe other Stone Lords shall have trouble not turning their head to this accomplishment.' WHERE `Id`=26871; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Diamant says you are to be trusted. Diamant is patient and wise, so I shall allow you to prove yourself.$B$BAs it happens, I could use hands that are more... mobile.' WHERE `Id`=26436; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve proven useful, $r.' WHERE `Id`=26438; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ahh... invigorating. Thank you, fleshling.' WHERE `Id`=26437; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $r.' WHERE `Id`=26439; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Pebble seems quite happy to meet you.>' WHERE `Id`=28869; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<The stones in Pebble''s body bounce up and down happily. He seems very appreciative.>' WHERE `Id`=26440; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve made a friend, have you?$B$BAre you certain you want to feed him? He might become attached.' WHERE `Id`=26441; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='<Pebble leaps upon the pile of petrified bats and rolls around in them, seeming to forget that you exist entirely. Perhaps for the best, if Kor''s warnings are to be trusted.>' WHERE `Id`=26507; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $r. You''ve done all that I can ask of you. I shall impart my favor for you to the Stonemother.$B$BMay the stone beneath your feet hold you steady during your quest for the World Pillar.' WHERE `Id`=26575; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Greetings, $r. I have been told of your coming. If you wish to aid me, then perhaps I can be of aid to you as well.' WHERE `Id`=26576; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Well done. Of my main strengths, speed is not one.' WHERE `Id`=26656; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Glorious.$B$BNow we will deal a blow to the stone dragons that they will remember for the next hundred years.' WHERE `Id`=26658; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Not just fast it seems. You have some bite in you.$B$BWell done, $c.' WHERE `Id`=26657; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Impressive, fleshling. You are far more capable than I initially assumed.$B$BI will extend that sentiment to the Stonemother as well.' WHERE `Id`=26659; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Alturus entrusted you with this information?  That old fool.$B$BI suppose the damage is done, we might as well make use of you.  I suppose you will cooperate?' WHERE `Id`=9826; -- Contact from Dalaran
UPDATE `quest_template` SET `OfferRewardText`='The Violet Eye?  You don''t say.$B$BShow me this report you speak of.' WHERE `Id`=9829; -- Khadgar
UPDATE `quest_template` SET `OfferRewardText`='You say that you found it on one of the Scourge at Windrunner Spire and that there''s an inscription on it? Let me see!$B$BHere, take this coin for a job well done.' WHERE `Id`=9175; -- The Lady's Necklace
UPDATE `quest_template` SET `OfferRewardText`='Hello there, $G laddy:lass;! The mountaineers sent you over, eh? I do suspect we might have just the sort of work you''re looking for. Welcome to the Farstrider Lodge!' WHERE `Id`=13647; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Beautiful. you''ve got an eye for quality!$B$BGreat minds think alike! It''s clear you''ve got an enthusiasm for flight and fowl, so maybe you can help me further...' WHERE `Id`=27031; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ahh, you see? Goods of the finest quality. Good work gettin'' these.' WHERE `Id`=27030; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='I''ve been informed there''s a bear warning active for the woodlands as well! They love those stabthistle seeds.$B$BIt''s a good thing you gathered those so they don''t attract more bears!' WHERE `Id`=27025; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='You''ve killed ten already? H...hah! While you were out, I''ve broken my previous record! To ten... hundred! Yes, ten hundred boars!$B$BA bet is a bet, I suppose... here''s your consolation prize, $n!' WHERE `Id`=27016; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Oh gosh! Someone''s finally here to help us?' WHERE `Id`=27952; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='$N, we have good news and a slight problem....' WHERE `Id`=26835; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='$N! You did it! How will we ever repay you?' WHERE `Id`=26836; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Our $g hero : heroine; returns!$B$BYou have saved my people, $N. You have earned that which you seek.' WHERE `Id`=27937; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='The Middle Fragment of the World Pillar!$B$BThank you, $N. I can only imagine what you had to go through to get this to us. I''ll see to it that it''s placed within the center of the chamber.' WHERE `Id`=27938; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Hey, mon! Thank ya for comin''.$B$BWe weren''t ready for dis kind of attack. We been expectin'' da Twilight Cult, but not elementals... we''ve got no idea what upset dem so much that dey would turn on us like dis.$B$BYou haven''t been out dere killin'' them, have you?' WHERE `Id`=26326; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Dese are in surprisingly good condition - good work, mon.' WHERE `Id`=26313; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Dat will slow their assault a bit while Norsala be findin'' a way to calm''m. We''ve no desire ta be remainin'' enemies of Therazane the Stonemother.' WHERE `Id`=26314; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $c. Many Earthen Ring owe dere lives to ya dis day.' WHERE `Id`=26312; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Yeah, mon... dat''s about the reaction we were expectin''.$B$BHe mentioned Diamant though? If da two don''t get along, perhaps this Diamant be a bit less brash den Boden. At least it''s somethin''.$B$BLet me see if I can get da earth to tell me where we might be findin'' dis Diamant.' WHERE `Id`=26315; -- -Unknown-
UPDATE `quest_template` SET `OfferRewardText`='Ah... you must be the $r that I was expecting.$B$BYou have come on behalf of the Earthen Ring then?' WHERE `Id`=26328; -- -Unknown-

UPDATE `quest_template` SET `RequestItemsText`='Have you caught any Azshara snakeheads, yet?' WHERE `Id`=29345; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='Have you baked that Mulgore spice bread, yet?' WHERE `Id`=29363; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='You know of the Violet Eye?  You do not look familiar.' WHERE `Id`=9826; -- Contact from Dalaran
UPDATE `quest_template` SET `RequestItemsText`='Rend will not fall without a fight.' WHERE `Id`=27444; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='At first glance, this pillar seems very plain, but your knowledge of archaeology tells you differently.  If you had a Dwarf Rune Stone, its originations could be brought to light.' WHERE `Id`=28799; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='What''s that you have there, $N?' WHERE `Id`=9175; -- The Lady's Necklace
UPDATE `quest_template` SET `RequestItemsText`='Did you find some places to plant them? I realize it''s a bit barren out there.' WHERE `Id`=29139; -- -Unknown-
UPDATE `quest_template` SET `RequestItemsText`='We''ve never been claimin'' a great friendship with da  Elemental Lords, but we still be trustin'' in a bit of security in da chaos. As long as dey be remainin'' unorganized, we''ve been havin'' little to fear.$B$BIf the Stonemother is truly rallyin'' da earth against us, we be havin'' a great deal more to be fearin''.' WHERE `Id`=26313; -- -Unknown-
