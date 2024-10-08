SET @OGUID := 9800034;
SET @EVENT := 8;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+11;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 181060, 870, 5785, 5785, '0', 0, 0, 1708.8160400390625, -1606.0521240234375, 527.609375, 3.129240036010742187, 0, 0, 0.999980926513671875, 0.006176323629915714, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+1, 181060, 870, 5785, 5785, '0', 0, 0, 1712.2708740234375, -1611.5399169921875, 527.96356201171875, 2.779532909393310546, 0, 0, 0.983658790588378906, 0.180042743682861328, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+2, 181060, 870, 5785, 5785, '0', 0, 0, 1709.8992919921875, -1612.2257080078125, 527.467041015625, 2.673914909362792968, 0, 0, 0.972784042358398437, 0.231713637709617614, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+3, 181060, 870, 5785, 5785, '0', 0, 0, 1714.03125, -1609.6163330078125, 528.34027099609375, 2.924135208129882812, 0, 0, 0.9940948486328125, 0.108514674007892608, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+4, 181060, 870, 5785, 5785, '0', 0, 0, 1707.767333984375, -1610.9427490234375, 527.1385498046875, 2.693909168243408203, 0, 0, 0.9750518798828125, 0.221977129578590393, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+5, 181060, 870, 5785, 5785, '0', 0, 0, 1707.376708984375, -1608.09033203125, 527.10260009765625, 2.927893877029418945, 0, 0, 0.994297027587890625, 0.106646150350570678, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+6, 181060, 870, 5785, 5785, '0', 0, 0, 1713.1597900390625, -1607.1978759765625, 528.359375, 3.058491945266723632, 0, 0, 0.999136924743652343, 0.041538357734680175, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+7, 181060, 870, 5785, 5785, '0', 0, 0, 1711.220458984375, -1605.3941650390625, 528.18231201171875, 3.181619644165039062, 0, 0, -0.99979972839355468, 0.020012086257338523, 120, 255, 1, 53262), -- Lovely Candle (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+8, 335930, 870, 5785, 5785, '0', 0, 0, 1695.3038330078125, -1608.0382080078125, 522.6309814453125, 1.943048834800720214, 0, 0, 0.825746536254882812, 0.564041376113891601, 120, 255, 1, 53262), -- Picnic Basket (scale x0.75) (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+9, 411616, 870, 5785, 5785, '0', 0, 0, 1710.345458984375, -1608.80908203125, 527.37725830078125, 1.942311882972717285, 0, 0, 0.82553863525390625, 0.564345598220825195, 120, 255, 1, 53262), -- Portal to Stormwind (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+10, 414929, 870, 5785, 5785, '0', 0, 0, 1710.345458984375, -1608.80908203125, 527.37725830078125, 1.942311882972717285, 0, 0, 0.82553863525390625, 0.564345598220825195, 120, 255, 1, 53262), -- Portal to Orgrimmar (Area: The Jade Forest - Difficulty: 0) CreateObject1
(@OGUID+11, 415631, 870, 5785, 5785, '0', 0, 0, 1710.3697509765625, -1608.7117919921875, 527.73760986328125, 3.04199528694152832, -0.01773405075073242, -0.04326915740966796, 0.997701644897460937, 0.049037635326385498, 120, 255, 1, 53262); -- Valentine Arch (x1.5) (Area: The Jade Forest - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+11;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@EVENT, @OGUID+0),
(@EVENT, @OGUID+1),
(@EVENT, @OGUID+2),
(@EVENT, @OGUID+3),
(@EVENT, @OGUID+4),
(@EVENT, @OGUID+5),
(@EVENT, @OGUID+6),
(@EVENT, @OGUID+7),
(@EVENT, @OGUID+8),
(@EVENT, @OGUID+9),
(@EVENT, @OGUID+10),
(@EVENT, @OGUID+11);
